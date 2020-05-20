create database db_contacts
	with owner admin_ct;

create schema if not exists contacts;

create sequence if not exists contacts.hibernate_sequence;

alter sequence if exists contacts.hibernate_sequence owner to admin_ct;

create table if not exists contacts.contacts
(
	id bigint not null
		constraint contacts_pkey
			primary key,
	date_naissance date,
	email varchar(255),
	nom varchar(255),
	photo varchar(255),
	prenom varchar(255),
	tel bigint not null
);

alter table if exists contacts.contacts owner to admin_ct;
