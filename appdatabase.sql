use project;

drop table if exists Person;
drop table if exists School;
drop table if exists Cred;
drop table if exists Category;
drop table if exists Post;
drop table if exists Messages;
drop table if exists Post_Reply;
drop table if exists Reply;


create table Person(
	u_id integer (2) not null primary key,
    dob date,
    f_name varchar(100),
    l_name varchar(100),
    gender varchar(100),
    school_id integer(2) references School.school_id
);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(1, '2002-04-24', 'Sam', 'Smith','male', 1);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(2, '2001-07-04', 'John', 'Brown','male', 2);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(3, '2000-12-12', 'Bob', 'Lynn','male', 3);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(4, '2003-07-24', 'Beca', 'Mitchell','female', 4);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(5, '2002-04-24', 'Gina', 'Ramsey','female', 5);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(6, '2000-02-17', 'Samantha', 'Deere','female', 1);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(7, '2003-08-12', 'Alex', 'Casey','female', 2);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(8, '2002-04-24', 'Don', 'Birch','male', 3);

insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(9, '2002-04-24', 'Sam', 'Neya','female', 4);
    
insert into Person(u_id, dob, f_name, l_name, gender, school_id)
    values(10, '2002-04-24', 'Chloe', 'Beale','female', 4);
    
    
create table School(
	school_id int(2),
    s_name varchar(100)
);

insert into School(school_id, s_name)
	values(1, 'East High School');
    
insert into School(school_id, s_name)
	values(2, 'Rancho Carne High School');
    
insert into School(school_id, s_name)
	values(3, 'Monte Vista High School');
    
insert into School(school_id, s_name)
	values(4, 'Barden High School');
    
insert into School(school_id, s_name)
	values(5, 'South Point High School');
    
create table Cred(
	username varchar(100),
    p_word varchar(100),
    date_of_creation date,
    u_id int(2) references Pesron.u_id
);

insert into Cred(username, p_word, date_of_creation, u_id)
    values('sith_s', 'samsmith', '2017-03-14', 1);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('brown-j', 'johnbrown', '2017-10-04', 2);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('bobdylan', 'boblynn', '2018-01-17', 3);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('b-mitch', 'becamitchell', '2017-12-25', 4);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('g_ram', 'ginaramsay', '2018-02-01', 5);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('Deer', 'samanthadeere', '2017-11-11', 6);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('A-Case', 'alexcasey', '2017-08-09', 7);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('Dawn-Bir', 'donbirch', '2017-09-08', 8);

insert into Cred(username, p_word, date_of_creation, u_id)
    values('neysey', 'samneya', '2018-01-08', 9);
    
insert into Cred(username, p_word, date_of_creation, u_id)
    values('chlobear', 'chloebeale', '2017-12-24', 10);
    
create table Category(
	category_id int(2) not null primary key,
    c_name varchar(100)
);

insert into Category(category_id, c_name)
	values(1, 'eating disorders');
    
insert into Category(category_id, c_name)
	values(2, 'mental health');
    
insert into Category(category_id, c_name)
	values(3, 'disabilities');
    
insert into Category(category_id, c_name)
	values(4, 'bullying');
    
insert into Category(category_id, c_name)
	values(5, 'lgbt');
    
create table Post(
	description varchar(20000),
    post_id int(2), 
    date_posted date,
    author int(2)  ,
    category_id int(2) references Category.category_id,
    hugs int(2)
);

insert into Post(description, post_id, date_posted, author, category_id, hugs)
	values('post about eating disorder', 1, '2018-01-05', 1, 1, '23');
    
insert into Post(description, post_id, date_posted, author, category_id, hugs)
	values('post about mnetal health', 2, '2018-02-04', 2, 2, '12');
    
insert into Post(description, post_id, date_posted, author, category_id, hugs)
	values('post about disabilities', 3, '2017-06-14', 3, 3, '123');

insert into Post(description, post_id, date_posted, author, category_id, hugs)
	values('post about bullying happening', 4, '2018-01-01', 4, 4, '100');
    
insert into Post(description, post_id, date_posted, author, category_id, hugs)
	values('post about lgbt issue', 5, '2018-01-25', 5, 5, '45');
    
create table Messages(
	sender int(2) references Person.u_id,
    recipient int(2) references Person.u_id,
    message varchar(2000),
    m_date date
);

insert into Messages(sender, recipient, message, m_date)
	value(1, 2, 'hello', '2018-01-15');

insert into Messages(sender, recipient, message, m_date)
	value(3, 4, 'me too', '2017-09-15');
    
insert into Messages(sender, recipient, message, m_date)
	value(5, 6, 'i hate it', '2018-01-25');
    
insert into Messages(sender, recipient, message, m_date)
	value(7, 8, 'it is the worst', '2017-10-15');
    
insert into Messages(sender, recipient, message, m_date)
	value(9, 10, 'good night', '2018-12-24');
    
create table Post_Reply(
	post_id int(2) references Post.post_id,
	reply_id int(2) 
);

insert into Post_Reply(post_id, reply_id)
	values(1, 2);
    
insert into Post_Reply(post_id, reply_id)
	values(3, 5);

insert into Post_Reply(post_id, reply_id)
	values(4,3);
    
Create table Reply(
	id int(2) references Post_Reply.reply_id,
    message varchar(2000),
    r_date date,
    author int(2) references Person.u_id
);

insert into Reply(id, message, r_date, author)
	values(2, 'yeah', '2018-08-09', 1);

insert into Reply(id, message, r_date, author)
	values(5, 'yup', '2018-05-19', 3);

insert into Reply(id, message, r_date, author)
	values(3, 'yes', '2017-08-29', 4);
