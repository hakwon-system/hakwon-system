create table if not exists adminwork_table
(
    adminwork_seq        int auto_increment primary key,
    adminwork_content    varchar(200)  not null,
    adminwork_type       varchar(30)   not null,
    adminwork_date       date          not null,
    adminwork_deadline   date          not null,
    adminwork_manager    varchar(200)  not null,
    adminwork_incomplete varchar(200)  not null,
    adminwork_reason     varchar(1000) not null,
    adminwork_delete     int
);

create table if not exists admin_notice
(
    notice_seq     int auto_increment primary key,
    notice_title   varchar(30)   not null,
    notice_content varchar(1000) not null,
    notice_name    varchar(30)   not null,
    notice_date    datetime
);

create table if not exists admin_material
(
    material_seq     int auto_increment primary key,
    material_title   varchar(30)   not null,
    material_content varchar(1000) not null,
    material_name    varchar(30)   not null,
    material_date    datetime
);

create table if not exists admin_table
(
    admin_seq      int auto_increment primary key,
    admin_id       varchar(50) unique not null,
    admin_password varchar(100)       not null,
    admin_name     varchar(20)        not null,
    admin_phone1   varchar(10)        not null,
    admin_phone2   varchar(10)        not null,
    admin_phone3   varchar(10)        not null,
    admin_email    varchar(100)       null,
    admin_academy  varchar(50)        not null,
    admin_access   varchar(10)        not null,
    admin_tier     varchar(10)        not null,
    admin_date     datetime
);

create table if not exists report
(
    id                 int auto_increment primary key,
    teacher_id         int          not null,
    title              varchar(255) not null,
    content            varchar(255) null,
    teacher_name       varchar(255) not null,
    deadline           datetime     null,
    `check`            varchar(255) null default 'x',
    fulfill            varchar(255) null default 'x',
    reply              varchar(255) null default 'x',
    reply_check        varchar(255) null default 'x',
    success            varchar(255) null default 'x',
    replyteacher_check varchar(255) null default 'x',
    replyteacher       varchar(255) null default 'x',
    reorder            varchar(255) null default 'x',
    importance         varchar(255) null default 'x',
    longorder          varchar(255) null default 'x',
    file_id            int          null,
    create_date        datetime     null default CURRENT_TIMESTAMP,
    update_date        datetime     null default CURRENT_TIMESTAMP,
    daily              varchar(20)  null default 'x'
);

create table if not exists report_file
(
    id            int auto_increment primary key,
    original_name varchar(255),
    save_name     varchar(255),
    save_path     varchar(255),
    report_id     int,
    delete_yn     varchar(255)
);

create table if not exists teacher
(
    id          int auto_increment primary key,
    user_id     varchar(20)  not null,
    password    varchar(100) not null,
    name        varchar(20)  not null,
    number      varchar(20)  not null,
    available   varchar(20)  not null default 'o',
    join_date   datetime     not null default CURRENT_TIMESTAMP,
    update_date datetime     not null default CURRENT_TIMESTAMP,
    department  varchar(20)
);

create table if not exists department
(
    id   int auto_increment primary key,
    name varchar(100)
);
create table if not exists student_class
(
    id    int auto_increment primary key,
    title varchar(200),
    name  varchar(100)
);