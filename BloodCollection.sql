
-- create tables

CREATE table Donor(
    donor_id integer,
    fname varchar(20) not null,
    minit varchar (1) not null,
    lname varchar(15) not null,
    donor_age integer not null,
    weightLBS integer not null,
    conditions varchar(5) not null, 
    donor_address varchar(20) not null,
    donor_contact varchar(20), not null,
    donor_bloodtype varchar(3), not null,
    primary  key (donor_id)
);

CREATE table Donation(
	donor_id integer,
	donation_number integer,
    blood_bank_id integer,
    donation_bloodtype text not null,
    donation_volumePT integer not null,
    date_of_donation  DATE not null,
    primary key (donation_number)
	foreign key (donation_id) references Donor(donor_id)
);


CREATE table BloodBank(
    blood_bank_id integer,
    blood_bank_name varchar(20),
    blood_bank_address varchar(20),
    blood_bank_email varchar(30)
    blood_bank_fax char(10)
    blood_bank_phone char(10)
    primary key (blood_bank_id)
    
);

CREATE table BBInventory(
    inventory_id integer,
	donation_number integer,
	donor_id integer,
    blood_bank_id integer,
    bbtype varchar(2) not null,
    bbvolumePT integer not null,
	primary key (inventory_id)
    foreign key (blood_bank_id) references BloodBank(blood_bank_id)
	foreign key (donation_number) references Donation(donation_number)   
    );
   
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
			values(1001,1,'Kim','D','Gaines''25','130','false','1401 S 16th St Philadelphia PA 19146','267-467-5045','A+');
			
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1002,2,'Angel','F','Rodriguez','38','198','false','3999 W Chester Pike Newton Sq, PA 19073','781-768-6813','B+');
			
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1003,3,'Anastasia','R','Fox','59','158','true','324 Main St, Carbondale,PA 18407','800-258-3554','AB+');
			
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1004,4,'Thomas','T','McFarlane','49','212','false','563 Moore St, Springfield,PA 18407','800-258-3554','O+');
			
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1005,5,'Thomas','T','McFarlane','49','212','false','563 Moore St, Springfield,PA 18407','800-258-3554','O+');
			
insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1006,6,'Thomas','T','McFarlane','49','212','false','563 Moore St, Springfield,PA 18407','800-258-3554','O+');

insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1007,7,'Thomas','T','McFarlane','49','212','false','563 Moore St, Springfield,PA 18407','800-258-3554','O+');

insert into Donor (donor_id,donation_number,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
            values(1008,8,'Thomas','T','McFarlane','49','212','false','563 Moore St, Springfield,PA 18407','800-258-3554','O+');

--data insertion of Donation

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1001, 1, 001, 'A+', 1, TO_DATE('24/01/2010', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1002, 2, 002, 'B+', 1, TO_DATE('24/09/2011', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1003, 3, 003, 'AB+', 1, TO_DATE('24/02/2012', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1004, 4, 004, 'O+', 1, TO_DATE('24/06/2013', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1005, 5, 005, 'O+', 1, TO_DATE('24/07/2014', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1006, 6, 006, 'O+', 1, TO_DATE('24/03/2015', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1007, 7, 007, 'O+', 1, TO_DATE('24/04/2016', 'DD/MM/YYYY');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (1008, 8, 008, 'O+', 1, TO_DATE('28/05/2017', 'DD/MM/YYYY');

--data insertion of BloodBank

insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_email,blood_bank_fax,blood_bank_phone)
values (01,'ARC','525 S 9th St Philadelphia PA 19147','support@arc.org','1-806-905-6421','1-800-732-2945');

--data insertion of BBInventory

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (101,1,001,01,'A+',1);

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (102,2,002,02,'B+','1');

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (103,3,003,03,'AB+','1');

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (104,4,004,04,'O+','1');

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (105,5,005,05,'O+','1');

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (106,6,006,06,'O+','1');

insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (107,7,007,07,'O+','1');
insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (108,8,008,08,'O+','1');

         
