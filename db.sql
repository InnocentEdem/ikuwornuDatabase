create table quizmasters(
    id serial primary key,
    fname varchar(100) not null,
    lname varchar(100) not null,
    password varchar(100)not null,
    isAdmin boolean
);

create table questions(
    id serial primary key,
    question varchar(500),
    answer varchar(200),
    quizmaster_id int references quizmasters(id)

);

create table quiz_sessions(
    session_id serial primary key,
    date_created date,
    max_question_point int,
    min_question_point int,
    seconds_per_question int,
    number_of_questions int,
    quizmaster_id int references quizmasters(id)
);
create table contestants(
    id serial primary key,
    fname varchar(100),
    lname varchar(100),
    score int,
    quiz_session_id int references quiz_sessions(session_id)
);

