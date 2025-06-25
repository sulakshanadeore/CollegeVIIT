SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1* declare
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees;
  4  v_empid employees.employee_id%type;
  5  v_fname employees.first_name%type;
  6  begin
  7  open emp_cur;
  8  loop
  9  fetch emp_cur into v_empid,v_fname;
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  exit when emp_cur%notfound;
 12  --%notfound,%found,%rowcount;%isopen
 13  end loop;
 14* end;
SQL> /
174  Ellen                                                                      
166  Sundar                                                                     
130  Mozhe                                                                      
116  Shelli                                                                     
167  Amit                                                                       
172  Elizabeth                                                                  
192  Sarah                                                                      
151  David                                                                      
129  Laura                                                                      
169  Harrison                                                                   
204  Hermann                                                                    
185  Alexis                                                                     
187  Anthony                                                                    
148  Gerald                                                                     
154  Nanette                                                                    
110  John                                                                       
188  Kelly                                                                      
119  Karen                                                                      
142  Curtis                                                                     
202  Pat                                                                        
186  Julia                                                                      
189  Jennifer                                                                   
160  Louise                                                                     
147  Alberto                                                                    
193  Britney                                                                    
109  Daniel                                                                     
197  Kevin                                                                      
181  Jean                                                                       
170  Tayler                                                                     
121  Adam                                                                       
102  Lex                                                                        
135  Ki                                                                         
183  Girard                                                                     
206  William                                                                    
199  Douglas                                                                    
178  Kimberely                                                                  
163  Danielle                                                                   
108  Nancy                                                                      
152  Peter                                                                      
205  Shelley                                                                    
118  Guy                                                                        
175  Alyssa                                                                     
106  Valli                                                                      
203  Susan                                                                      
103  Alexander                                                                  
179  Charles                                                                    
195  Vance                                                                      
122  Payam                                                                      
115  Alexander                                                                  
156  Janette                                                                    
100  Steven                                                                     
173  Sundita                                                                    
137  Renske                                                                     
127  James                                                                      
165  David                                                                      
114  Den                                                                        
177  Jack                                                                       
133  Jason                                                                      
128  Steven                                                                     
131  James                                                                      
201  Michael                                                                    
164  Mattea                                                                     
143  Randall                                                                    
158  Allan                                                                      
194  Samuel                                                                     
126  Irene                                                                      
104  Bruce                                                                      
124  Kevin                                                                      
125  Julia                                                                      
107  Diana                                                                      
198  Donald                                                                     
153  Christopher                                                                
132  TJ                                                                         
168  Lisa                                                                       
146  Karen                                                                      
140  Joshua                                                                     
191  Randall                                                                    
136  Hazel                                                                      
113  Luis                                                                       
141  Trenna                                                                     
134  Michael                                                                    
184  Nandita                                                                    
111  Ismael                                                                     
139  John                                                                       
161  Sarath                                                                     
145  John                                                                       
159  Lindsey                                                                    
171  William                                                                    
138  Stephen                                                                    
182  Martha                                                                     
157  Patrick                                                                    
176  Jonathon                                                                   
180  Winston                                                                    
117  Sigal                                                                      
150  Sean                                                                       
155  Oliver                                                                     
112  Jose Manuel                                                                
144  Peter                                                                      
190  Timothy                                                                    
162  Clara                                                                      
123  Shanta                                                                     
196  Alana                                                                      
120  Matthew                                                                    
200  Jennifer                                                                   
105  David                                                                      
101  Neena                                                                      
149  Eleni                                                                      
149  Eleni                                                                      

PL/SQL procedure successfully completed.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  fetch emp_cur into v_empid,v_fname;
 11  dbms_output.put_line(v_empid || '  ' || v_fname);
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15* end;
SQL> /
100  Steven                                                                     
101  Neena                                                                      
102  Lex                                                                        
103  Alexander                                                                  
104  Bruce                                                                      
105  David                                                                      
106  Valli                                                                      
107  Diana                                                                      
108  Nancy                                                                      
109  Daniel                                                                     
110  John                                                                       
111  Ismael                                                                     
112  Jose Manuel                                                                
113  Luis                                                                       
114  Den                                                                        
115  Alexander                                                                  
116  Shelli                                                                     
117  Sigal                                                                      
118  Guy                                                                        
119  Karen                                                                      
120  Matthew                                                                    
121  Adam                                                                       
122  Payam                                                                      
123  Shanta                                                                     
124  Kevin                                                                      
125  Julia                                                                      
126  Irene                                                                      
127  James                                                                      
128  Steven                                                                     
129  Laura                                                                      
130  Mozhe                                                                      
131  James                                                                      
132  TJ                                                                         
133  Jason                                                                      
134  Michael                                                                    
135  Ki                                                                         
136  Hazel                                                                      
137  Renske                                                                     
138  Stephen                                                                    
139  John                                                                       
140  Joshua                                                                     
141  Trenna                                                                     
142  Curtis                                                                     
143  Randall                                                                    
144  Peter                                                                      
145  John                                                                       
146  Karen                                                                      
147  Alberto                                                                    
148  Gerald                                                                     
149  Eleni                                                                      
150  Sean                                                                       
151  David                                                                      
152  Peter                                                                      
153  Christopher                                                                
154  Nanette                                                                    
155  Oliver                                                                     
156  Janette                                                                    
157  Patrick                                                                    
158  Allan                                                                      
159  Lindsey                                                                    
160  Louise                                                                     
161  Sarath                                                                     
162  Clara                                                                      
163  Danielle                                                                   
164  Mattea                                                                     
165  David                                                                      
166  Sundar                                                                     
167  Amit                                                                       
168  Lisa                                                                       
169  Harrison                                                                   
170  Tayler                                                                     
171  William                                                                    
172  Elizabeth                                                                  
173  Sundita                                                                    
174  Ellen                                                                      
175  Alyssa                                                                     
176  Jonathon                                                                   
177  Jack                                                                       
178  Kimberely                                                                  
179  Charles                                                                    
180  Winston                                                                    
181  Jean                                                                       
182  Martha                                                                     
183  Girard                                                                     
184  Nandita                                                                    
185  Alexis                                                                     
186  Julia                                                                      
187  Anthony                                                                    
188  Kelly                                                                      
189  Jennifer                                                                   
190  Timothy                                                                    
191  Randall                                                                    
192  Sarah                                                                      
193  Britney                                                                    
194  Samuel                                                                     
195  Vance                                                                      
196  Alana                                                                      
197  Kevin                                                                      
198  Donald                                                                     
199  Douglas                                                                    
200  Jennifer                                                                   
201  Michael                                                                    
202  Pat                                                                        
203  Susan                                                                      
204  Hermann                                                                    
205  Shelley                                                                    
206  William                                                                    
206  William                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15* end;
 16  /
100  Steven                                                                     
101  Neena                                                                      
102  Lex                                                                        
103  Alexander                                                                  
104  Bruce                                                                      
105  David                                                                      
106  Valli                                                                      
107  Diana                                                                      
108  Nancy                                                                      
109  Daniel                                                                     
110  John                                                                       
111  Ismael                                                                     
112  Jose Manuel                                                                
113  Luis                                                                       
114  Den                                                                        
115  Alexander                                                                  
116  Shelli                                                                     
117  Sigal                                                                      
118  Guy                                                                        
119  Karen                                                                      
120  Matthew                                                                    
121  Adam                                                                       
122  Payam                                                                      
123  Shanta                                                                     
124  Kevin                                                                      
125  Julia                                                                      
126  Irene                                                                      
127  James                                                                      
128  Steven                                                                     
129  Laura                                                                      
130  Mozhe                                                                      
131  James                                                                      
132  TJ                                                                         
133  Jason                                                                      
134  Michael                                                                    
135  Ki                                                                         
136  Hazel                                                                      
137  Renske                                                                     
138  Stephen                                                                    
139  John                                                                       
140  Joshua                                                                     
141  Trenna                                                                     
142  Curtis                                                                     
143  Randall                                                                    
144  Peter                                                                      
145  John                                                                       
146  Karen                                                                      
147  Alberto                                                                    
148  Gerald                                                                     
149  Eleni                                                                      
150  Sean                                                                       
151  David                                                                      
152  Peter                                                                      
153  Christopher                                                                
154  Nanette                                                                    
155  Oliver                                                                     
156  Janette                                                                    
157  Patrick                                                                    
158  Allan                                                                      
159  Lindsey                                                                    
160  Louise                                                                     
161  Sarath                                                                     
162  Clara                                                                      
163  Danielle                                                                   
164  Mattea                                                                     
165  David                                                                      
166  Sundar                                                                     
167  Amit                                                                       
168  Lisa                                                                       
169  Harrison                                                                   
170  Tayler                                                                     
171  William                                                                    
172  Elizabeth                                                                  
173  Sundita                                                                    
174  Ellen                                                                      
175  Alyssa                                                                     
176  Jonathon                                                                   
177  Jack                                                                       
178  Kimberely                                                                  
179  Charles                                                                    
180  Winston                                                                    
181  Jean                                                                       
182  Martha                                                                     
183  Girard                                                                     
184  Nandita                                                                    
185  Alexis                                                                     
186  Julia                                                                      
187  Anthony                                                                    
188  Kelly                                                                      
189  Jennifer                                                                   
190  Timothy                                                                    
191  Randall                                                                    
192  Sarah                                                                      
193  Britney                                                                    
194  Samuel                                                                     
195  Vance                                                                      
196  Alana                                                                      
197  Kevin                                                                      
198  Donald                                                                     
199  Douglas                                                                    
200  Jennifer                                                                   
201  Michael                                                                    
202  Pat                                                                        
203  Susan                                                                      
204  Hermann                                                                    
205  Shelley                                                                    
206  William                                                                    

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15  dbms_output.put_line('Total number of rows= ' || emp_cur%rowcount);
 16* end;
 17  /
100  Steven                                                                     
101  Neena                                                                      
102  Lex                                                                        
103  Alexander                                                                  
104  Bruce                                                                      
105  David                                                                      
106  Valli                                                                      
107  Diana                                                                      
108  Nancy                                                                      
109  Daniel                                                                     
110  John                                                                       
111  Ismael                                                                     
112  Jose Manuel                                                                
113  Luis                                                                       
114  Den                                                                        
115  Alexander                                                                  
116  Shelli                                                                     
117  Sigal                                                                      
118  Guy                                                                        
119  Karen                                                                      
120  Matthew                                                                    
121  Adam                                                                       
122  Payam                                                                      
123  Shanta                                                                     
124  Kevin                                                                      
125  Julia                                                                      
126  Irene                                                                      
127  James                                                                      
128  Steven                                                                     
129  Laura                                                                      
130  Mozhe                                                                      
131  James                                                                      
132  TJ                                                                         
133  Jason                                                                      
134  Michael                                                                    
135  Ki                                                                         
136  Hazel                                                                      
137  Renske                                                                     
138  Stephen                                                                    
139  John                                                                       
140  Joshua                                                                     
141  Trenna                                                                     
142  Curtis                                                                     
143  Randall                                                                    
144  Peter                                                                      
145  John                                                                       
146  Karen                                                                      
147  Alberto                                                                    
148  Gerald                                                                     
149  Eleni                                                                      
150  Sean                                                                       
151  David                                                                      
152  Peter                                                                      
153  Christopher                                                                
154  Nanette                                                                    
155  Oliver                                                                     
156  Janette                                                                    
157  Patrick                                                                    
158  Allan                                                                      
159  Lindsey                                                                    
160  Louise                                                                     
161  Sarath                                                                     
162  Clara                                                                      
163  Danielle                                                                   
164  Mattea                                                                     
165  David                                                                      
166  Sundar                                                                     
167  Amit                                                                       
168  Lisa                                                                       
169  Harrison                                                                   
170  Tayler                                                                     
171  William                                                                    
172  Elizabeth                                                                  
173  Sundita                                                                    
174  Ellen                                                                      
175  Alyssa                                                                     
176  Jonathon                                                                   
177  Jack                                                                       
178  Kimberely                                                                  
179  Charles                                                                    
180  Winston                                                                    
181  Jean                                                                       
182  Martha                                                                     
183  Girard                                                                     
184  Nandita                                                                    
185  Alexis                                                                     
186  Julia                                                                      
187  Anthony                                                                    
188  Kelly                                                                      
189  Jennifer                                                                   
190  Timothy                                                                    
191  Randall                                                                    
192  Sarah                                                                      
193  Britney                                                                    
194  Samuel                                                                     
195  Vance                                                                      
196  Alana                                                                      
197  Kevin                                                                      
198  Donald                                                                     
199  Douglas                                                                    
200  Jennifer                                                                   
201  Michael                                                                    
202  Pat                                                                        
203  Susan                                                                      
204  Hermann                                                                    
205  Shelley                                                                    
206  William                                                                    
Total number of rows= 107                                                       

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15  dbms_output.put_line('Total number of rows= ' || emp_cur%rowcount);
 16  close emp_cur;
 17  deallocate emp_cur;
 18* end;
SQL> /
deallocate emp_cur;
           *
ERROR at line 17:
ORA-06550: line 17, column 12: 
PLS-00103: Encountered the symbol "EMP_CUR" when expecting one of the 
following: 
:= . ( @ % ; 
The symbol ":=" was substituted for "EMP_CUR" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15  dbms_output.put_line('Total number of rows= ' || emp_cur%rowcount);
 16  close emp_cur;
 17  de-allocate emp_cur;
 18* end;
SQL> /
de-allocate emp_cur;
  *
ERROR at line 17:
ORA-06550: line 17, column 3: 
PLS-00103: Encountered the symbol "-" when expecting one of the following: 
:= . ( @ % ; 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15  dbms_output.put_line('Total number of rows= ' || emp_cur%rowcount);
 16  close emp_cur;
 17  release emp_cur;
 18* end;
SQL> /
release emp_cur;
        *
ERROR at line 17:
ORA-06550: line 17, column 9: 
PLS-00103: Encountered the symbol "EMP_CUR" when expecting one of the 
following: 
:= . ( @ % ; 
The symbol ":=" was substituted for "EMP_CUR" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  cursor emp_cur is
  3  select employee_id,first_name from employees
  4  order by employee_id;
  5  v_empid employees.employee_id%type;
  6  v_fname employees.first_name%type;
  7  begin
  8  open emp_cur;
  9  loop
 10  dbms_output.put_line(v_empid || '  ' || v_fname);
 11  fetch emp_cur into v_empid,v_fname;
 12  exit when emp_cur%notfound;
 13  --%notfound,%found,%rowcount;%isopen
 14  end loop;
 15  dbms_output.put_line('Total number of rows= ' || emp_cur%rowcount);
 16  close emp_cur;
 17* end;
SQL> /
100  Steven                                                                     
101  Neena                                                                      
102  Lex                                                                        
103  Alexander                                                                  
104  Bruce                                                                      
105  David                                                                      
106  Valli                                                                      
107  Diana                                                                      
108  Nancy                                                                      
109  Daniel                                                                     
110  John                                                                       
111  Ismael                                                                     
112  Jose Manuel                                                                
113  Luis                                                                       
114  Den                                                                        
115  Alexander                                                                  
116  Shelli                                                                     
117  Sigal                                                                      
118  Guy                                                                        
119  Karen                                                                      
120  Matthew                                                                    
121  Adam                                                                       
122  Payam                                                                      
123  Shanta                                                                     
124  Kevin                                                                      
125  Julia                                                                      
126  Irene                                                                      
127  James                                                                      
128  Steven                                                                     
129  Laura                                                                      
130  Mozhe                                                                      
131  James                                                                      
132  TJ                                                                         
133  Jason                                                                      
134  Michael                                                                    
135  Ki                                                                         
136  Hazel                                                                      
137  Renske                                                                     
138  Stephen                                                                    
139  John                                                                       
140  Joshua                                                                     
141  Trenna                                                                     
142  Curtis                                                                     
143  Randall                                                                    
144  Peter                                                                      
145  John                                                                       
146  Karen                                                                      
147  Alberto                                                                    
148  Gerald                                                                     
149  Eleni                                                                      
150  Sean                                                                       
151  David                                                                      
152  Peter                                                                      
153  Christopher                                                                
154  Nanette                                                                    
155  Oliver                                                                     
156  Janette                                                                    
157  Patrick                                                                    
158  Allan                                                                      
159  Lindsey                                                                    
160  Louise                                                                     
161  Sarath                                                                     
162  Clara                                                                      
163  Danielle                                                                   
164  Mattea                                                                     
165  David                                                                      
166  Sundar                                                                     
167  Amit                                                                       
168  Lisa                                                                       
169  Harrison                                                                   
170  Tayler                                                                     
171  William                                                                    
172  Elizabeth                                                                  
173  Sundita                                                                    
174  Ellen                                                                      
175  Alyssa                                                                     
176  Jonathon                                                                   
177  Jack                                                                       
178  Kimberely                                                                  
179  Charles                                                                    
180  Winston                                                                    
181  Jean                                                                       
182  Martha                                                                     
183  Girard                                                                     
184  Nandita                                                                    
185  Alexis                                                                     
186  Julia                                                                      
187  Anthony                                                                    
188  Kelly                                                                      
189  Jennifer                                                                   
190  Timothy                                                                    
191  Randall                                                                    
192  Sarah                                                                      
193  Britney                                                                    
194  Samuel                                                                     
195  Vance                                                                      
196  Alana                                                                      
197  Kevin                                                                      
198  Donald                                                                     
199  Douglas                                                                    
200  Jennifer                                                                   
201  Michael                                                                    
202  Pat                                                                        
203  Susan                                                                      
204  Hermann                                                                    
205  Shelley                                                                    
206  William                                                                    
Total number of rows= 107                                                       

PL/SQL procedure successfully completed.

SQL> create or
  2  .
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_getEmpData(p_Deptno number)
  2  return sys_refcursor
  3  as
  4  empcursor sys_refcursor;
  5  begin
  6  open empcursor
  7   for
  8  select employee_id,first_name from employees
  9  where department_id=p_Deptno
 10  return empcursor;
 11* end;
 12  /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_GETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
8/1      PL/SQL: SQL Statement ignored                                          
9/30     PL/SQL: ORA-00933: SQL command not properly ended                      
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_getEmpData(p_Deptno number)
  2  return sys_refcursor
  3  as
  4  empcursor sys_refcursor;
  5  begin
  6  open empcursor
  7   for
  8  select employee_id,first_name from employees
  9  where department_id=p_Deptno;
 10  return empcursor;
 11* end;
SQL> /

Function created.

SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_empcur sys_refcursor;
  3  v_empid employees.employee_id%type;
  4  v_fname employees.first_name%type;
  5  begin
  6  v_empcur:=fn_getEmpData(100);
  7  loop
  8  fetch v_empcur into v_empid,v_fname;
  9  dbms_output.put_line(v_empid || '   '|| v_fname);
 10  exitwhen v_empcur%notfound;
 11  end loop;
 12* end;
 13  /
exitwhen v_empcur%notfound;
         *
ERROR at line 10:
ORA-06550: line 10, column 10: 
PLS-00103: Encountered the symbol "V_EMPCUR" when expecting one of the 
following: 
:= . ( @ % ; 
The symbol ":=" was substituted for "V_EMPCUR" to continue. 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_empcur sys_refcursor;
  3  v_empid employees.employee_id%type;
  4  v_fname employees.first_name%type;
  5  begin
  6  v_empcur:=fn_getEmpData(100);
  7  loop
  8  fetch v_empcur into v_empid,v_fname;
  9  dbms_output.put_line(v_empid || '   '|| v_fname);
 10  exit when v_empcur%notfound;
 11  end loop;
 12* end;
SQL> /
108   Nancy                                                                     
109   Daniel                                                                    
110   John                                                                      
111   Ismael                                                                    
112   Jose Manuel                                                               
113   Luis                                                                      
113   Luis                                                                      

PL/SQL procedure successfully completed.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_empcur sys_refcursor;
  3  v_empid employees.employee_id%type;
  4  v_fname employees.first_name%type;
  5  begin
  6  v_empcur:=fn_getEmpData(100);
  7  loop
  8  fetch v_empcur into v_empid,v_fname;
  9  dbms_output.put_line(v_empid || '   '|| v_fname);
 10  exit when v_empcur%notfound;
 11  end loop;
 12* end;
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return empcursor
  4      as
  5      empcursor is (select employee_id,first_name from employees
  6  where department_id=p_Deptno);
  7     begin
  8      open empcursor;
  9          return empcursor;
 10*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_STRONGTYPEDGETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
5/15     PLS-00103: Encountered the symbol "IS" when expecting one of the       
         following:                                                             
         constant exception <an identifier>                                     
         <a double-quoted delimited-identifier> table columns long              
         double ref char time timestamp interval date binary national           
         character nchar                                                        
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return empcursor
  4      as
  5      empcursor as (select employee_id,first_name from employees
  6  where department_id=p_Deptno);
  7     begin
  8      open empcursor;
  9          return empcursor;
 10*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return empcursor
  4      as
  5  v_empcur empcursor;
  6     begin
  7      open empcursor as 
  8  (select employee_id,first_name from employees
  9  where department_id=p_Deptno);
 10          return empcursor;
 11*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_STRONGTYPEDGETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
7/20     PLS-00103: Encountered the symbol "AS" when expecting one of the       
         following:                                                             
         . ( % ; for                                                            
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return empcursor
  4      as
  5  v_empcur empcursor;
  6     begin
  7      open empcursor for
  8  (select employee_id,first_name from employees
  9  where department_id=p_Deptno);
 10          return empcursor;
 11*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_STRONGTYPEDGETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
8/2      PLS-00103: Encountered the symbol "SELECT" when expecting one of       
         the following:                                                         
         ( - + case mod new not null <an identifier>                            
         <a double-quoted delimited-identifier> <a bind variable>               
         continue avg count current exists max min prior sql stddev             
         sum variance execute forall merge time timestamp interval              
         date <a string literal with character set specification>               
         <a number> <a single-quoted SQL string> pipe                           
         <an alternatively-quoted string literal with character set             
         specification>                                                         
         <an alternat                                                           

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
                                                                                
9/29     PLS-00103: Encountered the symbol ")" when expecting one of the        
         following:                                                             
         . ( * @ % & - + ; / at for mod remainder rem                           
         <an exponent (**)> and or group having intersect minus order           
         start union where connect || multiset                                  
         The symbol "(" was substituted for ")" to continue.                    
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return empcursor
  4      as
  5  v_empcur empcursor;
  6     begin
  7      open empcursor for
  8  select employee_id,first_name from employees
  9  where department_id=p_Deptno;
 10          return empcursor;
 11*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_STRONGTYPEDGETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
0/0      PL/SQL: Compilation unit analysis terminated                           
3/12     PLS-00201: identifier 'EMPCURSOR' must be declared                     
SQL> ed
Wrote file afiedt.buf

  1  create or replace package pkg_Emp
  2  as
  3* type empcur is ref cursor return employees%rowtype;
  4  /

Warning: Package created with compilation errors.

SQL> show err
Errors for PACKAGE PKG_EMP:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
3/51     PLS-00103: Encountered the symbol "end-of-file" when expecting         
         one of the following:                                                  
         end function pragma procedure subtype type <an identifier>             
         <a double-quoted delimited-identifier> current cursor delete           
         exists prior                                                           
                                                                                
SQL> ed
Wrote file afiedt.buf

  1  create or replace package pkg_EmpPackage
  2  as
  3  type empcur is ref cursor return employees%rowtype;
  4* end;
SQL> /

Package created.

SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return pkg_EmpPackage.empcur
  4      as
  5  v_empcur pkg_EmpPackage.empcur;
  6     begin
  7      open v_empcur for
  8  select employee_id,first_name from employees
  9  where department_id=p_Deptno;
 10          return v_empcur;
 11*   end;
SQL> /

Warning: Function created with compilation errors.

SQL> show err
Errors for FUNCTION FN_STRONGTYPEDGETEMPDATA:

LINE/COL ERROR                                                                  
-------- -----------------------------------------------------------------      
7/5      PL/SQL: SQL Statement ignored                                          
8/1      PLS-00382: expression is of wrong type                                 
SQL> ed
Wrote file afiedt.buf

  1  create or replace function fn_StrongTypedGetEmpData
  2  (p_Deptno number)
  3      return pkg_EmpPackage.empcur
  4      as
  5  v_empcur pkg_EmpPackage.empcur;
  6     begin
  7      open v_empcur for
  8  select * from employees
  9  where department_id=p_Deptno;
 10          return v_empcur;
 11*   end;
SQL> /

Function created.

SQL> declare
  2  .
SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_ecur pkg_EmpPackage.empcur;
  3  begin
  4  v_ecur:=fn_StrongTypedGetEmpData(100);
  5  loop
  6  fetch v_ecur into v_ecur.employee_id,v_ecur.first_name;
  7  dbms_out.put_line(v_ecur.employee_id || v_ecur.first_name);
  8  exit when v_ecur%notfound;
  9  end loop;
 10* end;
SQL> /
fetch v_ecur into v_ecur.employee_id,v_ecur.first_name;
                         *
ERROR at line 6:
ORA-06550: line 6, column 26: 
PLS-00487: Invalid reference to variable 'V_ECUR' 
ORA-06550: line 6, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 7, column 26: 
PLS-00487: Invalid reference to variable 'V_ECUR' 
ORA-06550: line 7, column 1: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_ecur pkg_EmpPackage.empcur;
  3  v_edata employees%rowtype;
  4  begin
  5  v_ecur:=fn_StrongTypedGetEmpData(100);
  6  loop
  7  fetch v_ecur into v_edata.employee_id,v_edata.first_name;
  8  dbms_out.put_line(v_edata.employee_id || v_edata.first_name);
  9  exit when v_ecur%notfound;
 10  end loop;
 11* end;
SQL> /
fetch v_ecur into v_edata.employee_id,v_edata.first_name;
*
ERROR at line 7:
ORA-06550: line 7, column 1: 
PLS-00394: wrong number of values in the INTO list of a FETCH statement 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 
ORA-06550: line 8, column 1: 
PLS-00201: identifier 'DBMS_OUT.PUT_LINE' must be declared 
ORA-06550: line 8, column 1: 
PL/SQL: Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_ecur pkg_EmpPackage.empcur;
  3  v_edata employees%rowtype;
  4  begin
  5  v_ecur:=fn_StrongTypedGetEmpData(100);
  6  loop
  7  fetch v_ecur into v_edata.employee_id,v_edata.first_name;
  8  dbms_output.put_line(v_edata.employee_id || v_edata.first_name);
  9  exit when v_ecur%notfound;
 10  end loop;
 11* end;
SQL> /
fetch v_ecur into v_edata.employee_id,v_edata.first_name;
*
ERROR at line 7:
ORA-06550: line 7, column 1: 
PLS-00394: wrong number of values in the INTO list of a FETCH statement 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 


SQL> ed
Wrote file afiedt.buf

  1  declare
  2  v_ecur pkg_EmpPackage.empcur;
  3  v_edata employees%rowtype;
  4  begin
  5  v_ecur:=fn_StrongTypedGetEmpData(100);
  6  loop
  7  fetch v_ecur into v_edata.employee_id,v_edata.first_name,v_edata.last_name,
  8  v_edata.salary,v_edata.department_id,v_edata.manager_id,v_edata.commission_pct;
  9  dbms_output.put_line(v_edata.employee_id || v_edata.first_name);
 10  exit when v_ecur%notfound;
 11  end loop;
 12* end;
SQL> /
v_edata.salary,v_edata.department_id,v_edata.manager_id,v_edata.commission_pct;
                                             *
ERROR at line 8:
ORA-06550: line 8, column 46: 
PLS-00386: type mismatch found at 'V_EDATA.MANAGER_ID' between FETCH cursor and 
INTO variables 
ORA-06550: line 7, column 1: 
PL/SQL: SQL Statement ignored 


SQL> desc employees
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> 
SQL>  declare
  2    2  v_ecur pkg_EmpPackage.empcur;
  3    3  v_edata employees%rowtype;
  4    4  begin
  5    5  v_ecur:=fn_StrongTypedGetEmpData(100);
  6    6  loop
  7    7  fetch v_ecur into v_edata.employee_id,v_edata.first_name,v_edata.last_name,
  8    8  v_edata.salary,v_edata.department_id,v_edata.manager_id,v_edata.commission_pct;
  9    9  dbms_output.put_line(v_edata.employee_id || v_edata.first_name);
 10   10  exit when v_ecur%notfound;
 11   11  end loop;
 12   12* end;
 13  .
SQL> ed
Wrote file afiedt.buf

  1   declare
  2     v_ecur pkg_EmpPackage.empcur;
  3      v_edata employees%rowtype;
  4      begin
  5      v_ecur:=fn_StrongTypedGetEmpData(100);
  6      loop
  7      fetch v_ecur into v_edata.employee_id,v_edata.first_name,v_edata.last_name,
  8  v_edata.email, v_edata.phone_number,v_edata.hire_date,v_edata.job_id    v_edata.salary,v_edata.commission_pct,v_edata.manager_id,v_edata.department_id;
  9      dbms_output.put_line(v_edata.employee_id || v_edata.first_name);
 10    exit when v_ecur%notfound;
 11     end loop;
 12*   end;
SQL> /
v_edata.email, v_edata.phone_number,v_edata.hire_date,v_edata.job_id    v_edata.salary,v_edata.commission_pct,v_edata.manager_id,v_edata.department_id;
                                                                        *
ERROR at line 8:
ORA-06550: line 8, column 73: 
PLS-00103: Encountered the symbol "V_EDATA" when expecting one of the 
following: 
. ( , % ; limit 
The symbol "." was substituted for "V_EDATA" to continue. 


SQL> ed
Wrote file afiedt.buf

  1   declare
  2     v_ecur pkg_EmpPackage.empcur;
  3      v_edata employees%rowtype;
  4      begin
  5      v_ecur:=fn_StrongTypedGetEmpData(100);
  6      loop
  7      fetch v_ecur into v_edata.employee_id,v_edata.first_name,v_edata.last_name,
  8  v_edata.email, v_edata.phone_number,v_edata.hire_date,v_edata.job_id,    v_edata.salary,v_edata.commission_pct,v_edata.manager_id,v_edata.department_id;
  9      dbms_output.put_line(v_edata.employee_id || v_edata.first_name);
 10    exit when v_ecur%notfound;
 11     end loop;
 12*   end;
SQL> /
108Nancy                                                                        
109Daniel                                                                       
110John                                                                         
111Ismael                                                                       
112Jose Manuel                                                                  
113Luis                                                                         
113Luis                                                                         

PL/SQL procedure successfully completed.

SQL> ed
Wrote file afiedt.buf

  1   declare
  2     v_ecur pkg_EmpPackage.empcur;
  3      v_edata employees%rowtype;
  4      begin
  5      v_ecur:=fn_StrongTypedGetEmpData(100);
  6      loop
  7      fetch v_ecur into v_edata.employee_id,v_edata.first_name,v_edata.last_name,
  8  v_edata.email, v_edata.phone_number,v_edata.hire_date,v_edata.job_id,    v_edata.salary,v_edata.commission_pct,v_edata.manager_id,v_edata.department_id;
  9      dbms_output.put_line(v_edata.employee_id || ' : '
 10  ||v_edata.first_name);
 11    exit when v_ecur%notfound;
 12     end loop;
 13*   end;
SQL> /
108 : Nancy                                                                     
109 : Daniel                                                                    
110 : John                                                                      
111 : Ismael                                                                    
112 : Jose Manuel                                                               
113 : Luis                                                                      
113 : Luis                                                                      

PL/SQL procedure successfully completed.

SQL> 
SQL> spoossp
SP2-0042: unknown command "spoossp" - rest of line ignored.
SQL> spool off
