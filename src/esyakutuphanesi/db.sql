SQLite format 3   @     $   #                                                            $ -�   �    #�������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
   / k�[�/                                                                                                                                                                                                                                                                                             � C    �%		 Aumutcan@esyakutuphanesi.comumutcan$5$rounds=80000$Yj2S6AtoBQ7mOmuZ$gevIsEG8fTUw92bAfRJw9YQxdyq.0VRkKB3xvoi3cb/2014-12-22 09:26:25.540803� =    �%		 Aaysu@esyakutuphanesi.comaysu$5$rounds=80000$Yj2S6AtoBQ7mOmuZ$gevIsEG8fTUw92bAfRJw9YQxdyq.0VRkKB3xvoi3cb/2014-12-22 09:26:25.537713� #    �%		 Aabc@xyz.comadmin3$5$rounds=80000$Yj2S6AtoBQ7mOmuZ$gevIsEG8fTUw92bAfRJw9YQxdyq.0VRkKB3xvoi3cb/2014-12-22 09:26:25.534781� #    �%		 Axyz@abc.comadmin2$5$rounds=80000$Yj2S6AtoBQ7mOmuZ$gevIsEG8fTUw92bAfRJw9YQxdyq.0VRkKB3xvoi3cb/2014-12-22 09:26:25.531459� ?    �%		 Abilgi@esyakutuphanesi.comadmin$5$rounds=80000$Yj2S6AtoBQ7mOmuZ$gevIsEG8fTUw92bAfRJw9YQxdyq.0VRkKB3xvoi3cb/2014-12-22 09:26:25.527471
   � �����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Cumutcan@esyakutuphanesi.com=aysu@esyakutuphanesi.com#abc@xyz.com#xyz@abc.com?	bilgi@esyakutuphanesi.com   	s �������~s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         		 Mutfak
 Mobilya #Kütüphane Keyiflik Hırdavat 'Giysi dolabı !Elektronik /Doğada ve sporda +Bebek ve Çocuk
   	t �������t                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
Mutfak	Mobilya#KütüphaneKeyiflikHırdavat'Giysi dolabı!Elektronik/Doğada ve sporda+	Bebek ve Çocuk   � �������r^PG<3
���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  	 Mutfak
 Mobilya %Teknik kitap Dergi Roman -Konsol oyunları Oyun	 Müzik Film Hırdavat
 +Özel Günlerde	 Gelinlik Giysi Ayakkabı
 Telefon #Beyaz eşya !Bilgisayar +Ev elektroniği /Doğada ve sporda +Bebek ve Çocuk
   � ������Hs�Q��=4��_                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
MutfakMobilya%Teknik kitap	Dergi	Roman-Konsol oyunlarıOyun
MüzikFilmHırdavat+Özel Günlerde
Gelinlik		GiysiAyakkabıTelefon#Beyaz eşya!Bilgisayar+Ev elektroniği/Doğada ve sporda+	Bebek ve Çocuk                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �  �`�B�                                                                                                                                                                     �$�+tableuseruserCREATE TABLE user (
	id INTEGER NOT NULL, 
	email VARCHAR(255), 
	name VARCHAR(255) NOT NULL, 
	phone_number VARCHAR(255), 
	photo VARCHAR(255), 
	about VARCHAR(1000), 
	why VARCHAR(1000), 
	password VARCHAR(255), 
	active BOOLEAN, 
	approved BOOLEAN, 
	confirmed_at DATETIME, 
	registered_at DATETIME, 
	PRIMARY KEY (id), 
	UNIQUE (email), 
	CHECK (active IN (0, 1)), 
	CHECK (approved IN (0, 1))
)'; indexsqlite_autoindex_user_1user��]tablecategorycategoryCREATE TABLE category (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	PRIMARY KEY (id), 
	UNIQUE (name)
)/C indexsqlite_autoindex_category_1category��_tablestufftypestufftypeCREATE TABLE stufftype (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	PRIMARY KEY (id), 
	UNIQUE (name)
)1E indexsqlite_autoindex_stufftype_1stufftype    |  |8c�#�                                                                                                        �9�QtablegroupgroupCREATE TABLE "group" (
	id INTEGER NOT NULL, 
	name VARCHAR(255), 
	description VARCHAR(1000), 
	logo VARCHAR(255) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (name)
))= indexsqlite_autoindex_group_1group	�	�tableroleroleCREATE TABLE role (
	id INTEGER NOT NULL, 
	name VARCHAR(80), 
	description VARCHAR(255), 
	PRIMARY KEY (id), 
	UNIQUE (name)
)'
; indexsqlite_autoindex_role_1role�:�StablephotophotoCREATE TABLE photo (
	id INTEGER NOT NULL, 
	filename VARCHAR(255) NOT NULL, 
	owner_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(owner_id) REFERENCES user (id)
)��tableaddressaddressCREATE TABLE address (
	id INTEGER NOT NULL, 
	lat FLOAT NOT NULL, 
	lng FLOAT NOT NULL, 
	detail VARCHAR(255) NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	user_id INTEGER, 
	created_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id)
)   � ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              moderator
  member	  admin
   � ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                moderator
member	admin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 + �+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               v	 �A@D��G�+@<��p   Taksim Gezi Park İçi Yolu Gümüşsuyu Mh. Beyoğlu İstanbul ev2014-12-22 09:31:44.655449[ UA@D��Yِ*@<����h Gümüşsuyu Mh. Beyoğlu İstanbul addr2014-12-22 09:30:16.741095   v ������������������}v                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
	
				    �  ��@                                                                                                                                                                                  �g--�tablecategories_typescategories_typesCREATE TABLE categories_types (
	category_id INTEGER, 
	stufftype_id INTEGER, 
	FOREIGN KEY(category_id) REFERENCES category (id), 
	FOREIGN KEY(stufftype_id) REFERENCES stufftype (id)
)�!!�qtableconnectionconnectionCREATE TABLE connection (
	id INTEGER NOT NULL, 
	user_id INTEGER, 
	provider_id VARCHAR(255), 
	provider_user_id VARCHAR(255), 
	access_token VARCHAR(255), 
	secret VARCHAR(255), 
	display_name VARCHAR(255), 
	full_name VARCHAR(255), 
	profile_url VARCHAR(512), 
	image_url VARCHAR(512), 
	rank INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id)
)�=##�Atableroles_usersroles_usersCREATE TABLE roles_users (
	user_id INTEGER, 
	role_id INTEGER, 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(role_id) REFERENCES role (id)
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               				                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � ��                                                                                                                                                                                                                                                                                                                                                                                              �@--�3tablegroup_membershipgroup_membershipCREATE TABLE group_membership (
	user_id INTEGER NOT NULL, 
	group_id INTEGER NOT NULL, 
	is_moderator BOOLEAN, 
	PRIMARY KEY (user_id, group_id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(group_id) REFERENCES "group" (id), 
	CHECK (is_moderator IN (0, 1))
)?S- indexsqlite_autoindex_group_membership_1group_membership�m##�!tableinvitationsinvitationsCREATE TABLE invitations (
	id INTEGER NOT NULL, 
	user_id INTEGER, 
	emails VARCHAR(255), 
	message VARCHAR(1000), 
	datetime DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id)
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  b %/	A 	AMülksüzlerUrsula K. Le Guin2014-12-22 09:30:16.7421902014-12-22 09:30:16.742205   � �                                                                                                                                                                                                                                                                                                                                                                                                  �q�AtablestuffstuffCREATE TABLE stuff (
	id INTEGER NOT NULL, 
	title VARCHAR(255) NOT NULL, 
	detail VARCHAR(10000), 
	owner_id INTEGER, 
	address_id INTEGER, 
	date DATETIME, 
	type_id INTEGER, 
	category_id INTEGER, 
	group_id INTEGER, 
	approved INTEGER, 
	status INTEGER, 
	is_wanted BOOLEAN, 
	created_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(owner_id) REFERENCES user (id), 
	FOREIGN KEY(address_id) REFERENCES address (id), 
	FOREIGN KEY(type_id) REFERENCES stufftype (id), 
	FOREIGN KEY(category_id) REFERENCES category (id), 
	FOREIGN KEY(group_id) REFERENCES "group" (id), 
	CHECK (is_wanted IN (0, 1))
)   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    @
 			AA 2014-12-22 09:31:55.8248382014-12-22 14:34:12.872713    �  �:�                                                                                                                                                      ��}tablerequestrequestCREATE TABLE request (
	id INTEGER NOT NULL, 
	stuff_id INTEGER, 
	user_id INTEGER, 
	from_user_id INTEGER, 
	status INTEGER, 
	duration INTEGER, 
	created_at DATETIME, 
	given_at DATETIME, 
	returned_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(stuff_id) REFERENCES stuff (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(from_user_id) REFERENCES user (id)
)�1�ItabletagtagCREATE TABLE tag (
	id INTEGER NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	stuff_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(stuff_id) REFERENCES stuff (id)
)�##�etablestuff_photostuff_photoCREATE TABLE stuff_photo (
	id INTEGER NOT NULL, 
	filename VARCHAR(255) NOT NULL, 
	owner_id INTEGER, 
	stuff_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(owner_id) REFERENCES user (id), 
	FOREIGN KEY(stuff_id) REFERENCES stuff (id)
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              6 m	stuff/1/0c771cf4-89e7-11e4-835d-d94dde7e89e2.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �                                                                                                                                                                                                                                                                                                                                                                                                �v�GtablereviewreviewCREATE TABLE review (
	id INTEGER NOT NULL, 
	user_id INTEGER, 
	reviewed_user_id INTEGER, 
	request_id INTEGER, 
	comment VARCHAR(1000), 
	rating INTEGER, 
	created_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(reviewed_user_id) REFERENCES user (id), 
	FOREIGN KEY(request_id) REFERENCES request (id)
)�x%%�3tableconversationconversation CREATE TABLE conversation (
	id INTEGER NOT NULL, 
	request_id INTEGER, 
	title VARCHAR(255), 
	created_at DATETIME, 
	updated_at DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(request_id) REFERENCES request (id)
)   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              F 	%AAMülksüzler2014-12-22 09:31:55.8259542014-12-22 09:33:38.825829   � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        		   � �3�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         J 	YA	Tamam olur. Yarın görüşmek üzere.2014-12-22 09:33:38.825829f	 	�A	Yarın TAK'ta Things buluşması varmış. Orada görüşelim mi?2014-12-22 09:33:07.127652c	 	�	A	Merhaba, aysu senden Mülksüzler eşyanı ödünç istiyorum.2014-12-22 09:31:55.827620   � �{                                                                                                                                                                                                                                                                                                                                                                                                  �j11�tableconversation_usersconversation_users!CREATE TABLE conversation_users (
	user_id INTEGER, 
	conversation_id INTEGER, 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(conversation_id) REFERENCES conversation (id)
)��[tablemessagemessage"CREATE TABLE message (
	id INTEGER NOT NULL, 
	to_user_id INTEGER, 
	from_user_id INTEGER, 
	conversation_id INTEGER, 
	txt VARCHAR(1000), 
	created_at DATETIME, 
	status INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(to_user_id) REFERENCES user (id), 
	FOREIGN KEY(from_user_id) REFERENCES user (id), 
	FOREIGN KEY(conversation_id) REFERENCES conversation (id)
)