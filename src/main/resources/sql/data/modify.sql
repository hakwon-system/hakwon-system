alter table student modify password varchar(100);
alter table student alter column available set default 'o';
alter table student alter column join_date set default (CURRENT_TIMESTAMP);
alter table student alter column update_date set default (CURRENT_TIMESTAMP);
alter table student alter column student_class set default '단어구구단(1단)';
