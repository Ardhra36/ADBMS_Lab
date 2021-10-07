create table student_34(RNO number, s1 number, s2 number, s3 number,s4 number,total number, percentage number(8,2));

declare
       t student_34.total%type;
       p student_34.percentage%type;
       cursor STU is select * from student_34;
       rw STUrow%type;
       begin
             open STU;
             loop
                      fetch STU into rw;
                      exit when STU%notfound;
                      t:=rw.s1+rw.s2+rw.s3+rw.s4;
                      p:=t*0.25;
                      update student_34 set total=t,percentage=p where RNO=rw.RNO;
             end loop;
             close STU;
       end;
