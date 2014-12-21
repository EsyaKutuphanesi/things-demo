# -*- coding: utf-8 -*-
import uuid
import json
import os
from datetime import datetime

from flask import render_template, send_from_directory, flash, url_for, redirect, request, jsonify, g
from flask_login import current_user, login_required, logout_user, login_user
from flask_mail import Message as MailMessage

from __init__ import app, db, mail
from forms import *
from models import *


@app.errorhandler(404)
def page_not_found(error):
    return render_template('/404.html', user=current_user), 404


@app.before_request
def before_request():
    user = users.get_user('aysu@esyakutuphanesi.com')
    login_user(user)
    # g.user = current_user


@app.route('/', methods=["GET"])
@login_required
def show_conversation():
    conversation_id = 1
    conversation = Conversation.query.\
        filter(Conversation.id == conversation_id).first()

    if current_user not in conversation.users:
        return redirect('/my_messages')
    else:
        form = ConversationForm()

        Message.query.filter(
            Message.conversation_id == conversation_id,
            Message.status == 0,
            Message.to_user == current_user
        ).update({Message.status: 1})
        db.session.commit()

        form.message.data = None

        review_form = ReviewForm()

        if request.args.get('status'):
            status = int(request.args.get('status'))
        else:
            status = 0
        if status > 0 and \
                (conversation.request.stuff.owner == current_user or conversation.request.from_user_id == current_user.id):
            if conversation.request.stuff.status == 1:
                if status == 1 and conversation.request.status == 0:
                    flash(u'Eşyan şu anda ödünç olarak bir başka kullanıcıda.')
                    conversation.request.stuff.status = 0
                    conversation.request.status = 1
                    conversation.request.given_at = datetime.utcnow()
                    db.session.commit()
            elif status == 2 and conversation.request.status == 1:
                flash(u'Eşyayı geri aldınız.')
                conversation.request.stuff.status = 1
                conversation.request.status = 2
                conversation.request.returned_at = datetime.utcnow()
                db.session.commit()
            else:
                flash(u'Eşya zaten başkasına verilmiş.')

        wanted_stuff = StuffPhoto.query.filter(StuffPhoto.stuff_id == conversation.request.stuff_id).first()
        review_form.request_id.data = conversation.request_id
        return render_template(
            "demo/conversation.html",
            user=current_user,
            wanted_stuff=wanted_stuff,
            form=form,
            action='Edit',
            conversation=conversation,
            review_form=review_form
        )

@app.route('/game_data')
def game_data():
    data = {
        "user_id": 11,
        "mastery": {
            "all": {
                "level": 4,
                "remaining": 2,
                "total": 3
            },
            "books": {
                "level": 3,
                "remaining": 1,
                "total": 5
            }
        }
    }
    return jsonify(data)

@app.route('/photos/<path:filename>')
def photos_static(filename):
    return send_from_directory(app.root_path + '/static/photos/', filename)