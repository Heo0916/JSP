
  create table membership2 (
    id       varchar2(20) , 
    pw      varchar2(20) ,
    name  varchar2(40),  
    phone1 varchar2(20) ,
    phone2 varchar2(20),
    phone3 varchar2(20),  
    gender VARCHAR2(20)
  );
  
  commit;
  select * from membership2;
  
    -- SQL (Structed Query Language)    
insert  into membership2 (id, pw, name, phone1,phone2, phone3) 
      values ('abcd', '1234', '������', '010', '1234', '5678')  ;
insert  into membership2 (id, pw, name) 
      values ('abcd', '1234')  ;  
delete * from   membership2;
