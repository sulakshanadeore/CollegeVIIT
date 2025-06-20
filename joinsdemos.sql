SQL> select employee_id,first_name from employees;

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        174 Ellen                                                               
        166 Sundar                                                              
        130 Mozhe                                                               
        116 Shelli                                                              
        167 Amit                                                                
        172 Elizabeth                                                           
        192 Sarah                                                               
        151 David                                                               
        129 Laura                                                               
        169 Harrison                                                            
        204 Hermann                                                             

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        185 Alexis                                                              
        187 Anthony                                                             
        148 Gerald                                                              
        154 Nanette                                                             
        110 John                                                                
        188 Kelly                                                               
        119 Karen                                                               
        142 Curtis                                                              
        202 Pat                                                                 
        186 Julia                                                               
        189 Jennifer                                                            

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        160 Louise                                                              
        147 Alberto                                                             
        193 Britney                                                             
        109 Daniel                                                              
        197 Kevin                                                               
        181 Jean                                                                
        170 Tayler                                                              
        121 Adam                                                                
        102 Lex                                                                 
        135 Ki                                                                  
        183 Girard                                                              

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        206 William                                                             
        208 Ana                                                                 
        199 Douglas                                                             
        178 Kimberely                                                           
        163 Danielle                                                            
        108 Nancy                                                               
        152 Peter                                                               
        205 Shelley                                                             
        118 Guy                                                                 
        175 Alyssa                                                              
        106 Valli                                                               

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        203 Susan                                                               
        103 Alexander                                                           
        207 Jack                                                                
        179 Charles                                                             
        195 Vance                                                               
        122 Payam                                                               
        115 Alexander                                                           
        156 Janette                                                             
        100 Steven                                                              
        173 Sundita                                                             
        137 Renske                                                              

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        127 James                                                               
        165 David                                                               
        114 Den                                                                 
        177 Jack                                                                
        133 Jason                                                               
        128 Steven                                                              
        131 James                                                               
        201 Michael                                                             
        164 Mattea                                                              
        143 Randall                                                             
        158 Allan                                                               

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        194 Samuel                                                              
        126 Irene                                                               
        104 Bruce                                                               
        124 Kevin                                                               
        125 Julia                                                               
        107 Diana                                                               
        198 Donald                                                              
        153 Christopher                                                         
        132 TJ                                                                  
        168 Lisa                                                                
        146 Karen                                                               

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        140 Joshua                                                              
        191 Randall                                                             
        136 Hazel                                                               
        113 Luis                                                                
        141 Trenna                                                              
        134 Michael                                                             
        184 Nandita                                                             
        111 Ismael                                                              
        139 John                                                                
        161 Sarath                                                              
        145 John                                                                

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        159 Lindsey                                                             
        171 William                                                             
        138 Stephen                                                             
        182 Martha                                                              
        157 Patrick                                                             
        176 Jonathon                                                            
        180 Winston                                                             
        117 Sigal                                                               
        150 Sean                                                                
        155 Oliver                                                              
        112 Jose Manuel                                                         

EMPLOYEE_ID FIRST_NAME                                                          
----------- --------------------                                                
        144 Peter                                                               
        190 Timothy                                                             
        162 Clara                                                               
        123 Shanta                                                              
        196 Alana                                                               
        120 Matthew                                                             
        200 Jennifer                                                            
        105 David                                                               
        101 Neena                                                               
        149 Eleni                                                               

109 rows selected.

SQL> select department_id from department;
select department_id from department
                          *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> ed
Wrote file afiedt.buf

  1* select department_id from departments
SQL> /

DEPARTMENT_ID                                                                   
-------------                                                                   
           10                                                                   
           20                                                                   
           30                                                                   
           40                                                                   
           50                                                                   
           60                                                                   
           70                                                                   
           80                                                                   
           90                                                                   
          100                                                                   
          110                                                                   

DEPARTMENT_ID                                                                   
-------------                                                                   
          120                                                                   
          130                                                                   
          140                                                                   
          150                                                                   
          160                                                                   
          170                                                                   
          180                                                                   
          190                                                                   
          200                                                                   
          210                                                                   
          220                                                                   

DEPARTMENT_ID                                                                   
-------------                                                                   
          230                                                                   
          240                                                                   
          250                                                                   
          260                                                                   
          270                                                                   

27 rows selected.

SQL> select 109*27 from dual;

    109*27                                                                      
----------                                                                      
      2943                                                                      

SQL> select employee_id,first_name,employees.department_id, departments.department_id from employees,departments;

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90            10                    
        100 Steven                          90            20                    
        100 Steven                          90            30                    
        100 Steven                          90            40                    
        100 Steven                          90            50                    
        100 Steven                          90            60                    
        100 Steven                          90            70                    
        100 Steven                          90            80                    
        100 Steven                          90            90                    
        100 Steven                          90           100                    
        100 Steven                          90           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90           120                    
        100 Steven                          90           130                    
        100 Steven                          90           140                    
        100 Steven                          90           150                    
        100 Steven                          90           160                    
        100 Steven                          90           170                    
        100 Steven                          90           180                    
        100 Steven                          90           190                    
        100 Steven                          90           200                    
        100 Steven                          90           210                    
        100 Steven                          90           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90           230                    
        100 Steven                          90           240                    
        100 Steven                          90           250                    
        100 Steven                          90           260                    
        100 Steven                          90           270                    
        101 Neena                           90            10                    
        101 Neena                           90            20                    
        101 Neena                           90            30                    
        101 Neena                           90            40                    
        101 Neena                           90            50                    
        101 Neena                           90            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        101 Neena                           90            70                    
        101 Neena                           90            80                    
        101 Neena                           90            90                    
        101 Neena                           90           100                    
        101 Neena                           90           110                    
        101 Neena                           90           120                    
        101 Neena                           90           130                    
        101 Neena                           90           140                    
        101 Neena                           90           150                    
        101 Neena                           90           160                    
        101 Neena                           90           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        101 Neena                           90           180                    
        101 Neena                           90           190                    
        101 Neena                           90           200                    
        101 Neena                           90           210                    
        101 Neena                           90           220                    
        101 Neena                           90           230                    
        101 Neena                           90           240                    
        101 Neena                           90           250                    
        101 Neena                           90           260                    
        101 Neena                           90           270                    
        102 Lex                             90            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90            20                    
        102 Lex                             90            30                    
        102 Lex                             90            40                    
        102 Lex                             90            50                    
        102 Lex                             90            60                    
        102 Lex                             90            70                    
        102 Lex                             90            80                    
        102 Lex                             90            90                    
        102 Lex                             90           100                    
        102 Lex                             90           110                    
        102 Lex                             90           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90           130                    
        102 Lex                             90           140                    
        102 Lex                             90           150                    
        102 Lex                             90           160                    
        102 Lex                             90           170                    
        102 Lex                             90           180                    
        102 Lex                             90           190                    
        102 Lex                             90           200                    
        102 Lex                             90           210                    
        102 Lex                             90           220                    
        102 Lex                             90           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90           240                    
        102 Lex                             90           250                    
        102 Lex                             90           260                    
        102 Lex                             90           270                    
        103 Alexander                       60            10                    
        103 Alexander                       60            20                    
        103 Alexander                       60            30                    
        103 Alexander                       60            40                    
        103 Alexander                       60            50                    
        103 Alexander                       60            60                    
        103 Alexander                       60            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        103 Alexander                       60            80                    
        103 Alexander                       60            90                    
        103 Alexander                       60           100                    
        103 Alexander                       60           110                    
        103 Alexander                       60           120                    
        103 Alexander                       60           130                    
        103 Alexander                       60           140                    
        103 Alexander                       60           150                    
        103 Alexander                       60           160                    
        103 Alexander                       60           170                    
        103 Alexander                       60           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        103 Alexander                       60           190                    
        103 Alexander                       60           200                    
        103 Alexander                       60           210                    
        103 Alexander                       60           220                    
        103 Alexander                       60           230                    
        103 Alexander                       60           240                    
        103 Alexander                       60           250                    
        103 Alexander                       60           260                    
        103 Alexander                       60           270                    
        104 Bruce                           60            10                    
        104 Bruce                           60            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60            30                    
        104 Bruce                           60            40                    
        104 Bruce                           60            50                    
        104 Bruce                           60            60                    
        104 Bruce                           60            70                    
        104 Bruce                           60            80                    
        104 Bruce                           60            90                    
        104 Bruce                           60           100                    
        104 Bruce                           60           110                    
        104 Bruce                           60           120                    
        104 Bruce                           60           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60           140                    
        104 Bruce                           60           150                    
        104 Bruce                           60           160                    
        104 Bruce                           60           170                    
        104 Bruce                           60           180                    
        104 Bruce                           60           190                    
        104 Bruce                           60           200                    
        104 Bruce                           60           210                    
        104 Bruce                           60           220                    
        104 Bruce                           60           230                    
        104 Bruce                           60           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60           250                    
        104 Bruce                           60           260                    
        104 Bruce                           60           270                    
        105 David                           60            10                    
        105 David                           60            20                    
        105 David                           60            30                    
        105 David                           60            40                    
        105 David                           60            50                    
        105 David                           60            60                    
        105 David                           60            70                    
        105 David                           60            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        105 David                           60            90                    
        105 David                           60           100                    
        105 David                           60           110                    
        105 David                           60           120                    
        105 David                           60           130                    
        105 David                           60           140                    
        105 David                           60           150                    
        105 David                           60           160                    
        105 David                           60           170                    
        105 David                           60           180                    
        105 David                           60           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        105 David                           60           200                    
        105 David                           60           210                    
        105 David                           60           220                    
        105 David                           60           230                    
        105 David                           60           240                    
        105 David                           60           250                    
        105 David                           60           260                    
        105 David                           60           270                    
        106 Valli                           60            10                    
        106 Valli                           60            20                    
        106 Valli                           60            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60            40                    
        106 Valli                           60            50                    
        106 Valli                           60            60                    
        106 Valli                           60            70                    
        106 Valli                           60            80                    
        106 Valli                           60            90                    
        106 Valli                           60           100                    
        106 Valli                           60           110                    
        106 Valli                           60           120                    
        106 Valli                           60           130                    
        106 Valli                           60           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60           150                    
        106 Valli                           60           160                    
        106 Valli                           60           170                    
        106 Valli                           60           180                    
        106 Valli                           60           190                    
        106 Valli                           60           200                    
        106 Valli                           60           210                    
        106 Valli                           60           220                    
        106 Valli                           60           230                    
        106 Valli                           60           240                    
        106 Valli                           60           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60           260                    
        106 Valli                           60           270                    
        107 Diana                           60            10                    
        107 Diana                           60            20                    
        107 Diana                           60            30                    
        107 Diana                           60            40                    
        107 Diana                           60            50                    
        107 Diana                           60            60                    
        107 Diana                           60            70                    
        107 Diana                           60            80                    
        107 Diana                           60            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        107 Diana                           60           100                    
        107 Diana                           60           110                    
        107 Diana                           60           120                    
        107 Diana                           60           130                    
        107 Diana                           60           140                    
        107 Diana                           60           150                    
        107 Diana                           60           160                    
        107 Diana                           60           170                    
        107 Diana                           60           180                    
        107 Diana                           60           190                    
        107 Diana                           60           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        107 Diana                           60           210                    
        107 Diana                           60           220                    
        107 Diana                           60           230                    
        107 Diana                           60           240                    
        107 Diana                           60           250                    
        107 Diana                           60           260                    
        107 Diana                           60           270                    
        108 Nancy                          100            10                    
        108 Nancy                          100            20                    
        108 Nancy                          100            30                    
        108 Nancy                          100            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100            50                    
        108 Nancy                          100            60                    
        108 Nancy                          100            70                    
        108 Nancy                          100            80                    
        108 Nancy                          100            90                    
        108 Nancy                          100           100                    
        108 Nancy                          100           110                    
        108 Nancy                          100           120                    
        108 Nancy                          100           130                    
        108 Nancy                          100           140                    
        108 Nancy                          100           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100           160                    
        108 Nancy                          100           170                    
        108 Nancy                          100           180                    
        108 Nancy                          100           190                    
        108 Nancy                          100           200                    
        108 Nancy                          100           210                    
        108 Nancy                          100           220                    
        108 Nancy                          100           230                    
        108 Nancy                          100           240                    
        108 Nancy                          100           250                    
        108 Nancy                          100           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100           270                    
        109 Daniel                         100            10                    
        109 Daniel                         100            20                    
        109 Daniel                         100            30                    
        109 Daniel                         100            40                    
        109 Daniel                         100            50                    
        109 Daniel                         100            60                    
        109 Daniel                         100            70                    
        109 Daniel                         100            80                    
        109 Daniel                         100            90                    
        109 Daniel                         100           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        109 Daniel                         100           110                    
        109 Daniel                         100           120                    
        109 Daniel                         100           130                    
        109 Daniel                         100           140                    
        109 Daniel                         100           150                    
        109 Daniel                         100           160                    
        109 Daniel                         100           170                    
        109 Daniel                         100           180                    
        109 Daniel                         100           190                    
        109 Daniel                         100           200                    
        109 Daniel                         100           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        109 Daniel                         100           220                    
        109 Daniel                         100           230                    
        109 Daniel                         100           240                    
        109 Daniel                         100           250                    
        109 Daniel                         100           260                    
        109 Daniel                         100           270                    
        110 John                           100            10                    
        110 John                           100            20                    
        110 John                           100            30                    
        110 John                           100            40                    
        110 John                           100            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        110 John                           100            60                    
        110 John                           100            70                    
        110 John                           100            80                    
        110 John                           100            90                    
        110 John                           100           100                    
        110 John                           100           110                    
        110 John                           100           120                    
        110 John                           100           130                    
        110 John                           100           140                    
        110 John                           100           150                    
        110 John                           100           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        110 John                           100           170                    
        110 John                           100           180                    
        110 John                           100           190                    
        110 John                           100           200                    
        110 John                           100           210                    
        110 John                           100           220                    
        110 John                           100           230                    
        110 John                           100           240                    
        110 John                           100           250                    
        110 John                           100           260                    
        110 John                           100           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100            10                    
        111 Ismael                         100            20                    
        111 Ismael                         100            30                    
        111 Ismael                         100            40                    
        111 Ismael                         100            50                    
        111 Ismael                         100            60                    
        111 Ismael                         100            70                    
        111 Ismael                         100            80                    
        111 Ismael                         100            90                    
        111 Ismael                         100           100                    
        111 Ismael                         100           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100           120                    
        111 Ismael                         100           130                    
        111 Ismael                         100           140                    
        111 Ismael                         100           150                    
        111 Ismael                         100           160                    
        111 Ismael                         100           170                    
        111 Ismael                         100           180                    
        111 Ismael                         100           190                    
        111 Ismael                         100           200                    
        111 Ismael                         100           210                    
        111 Ismael                         100           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100           230                    
        111 Ismael                         100           240                    
        111 Ismael                         100           250                    
        111 Ismael                         100           260                    
        111 Ismael                         100           270                    
        112 Jose Manuel                    100            10                    
        112 Jose Manuel                    100            20                    
        112 Jose Manuel                    100            30                    
        112 Jose Manuel                    100            40                    
        112 Jose Manuel                    100            50                    
        112 Jose Manuel                    100            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        112 Jose Manuel                    100            70                    
        112 Jose Manuel                    100            80                    
        112 Jose Manuel                    100            90                    
        112 Jose Manuel                    100           100                    
        112 Jose Manuel                    100           110                    
        112 Jose Manuel                    100           120                    
        112 Jose Manuel                    100           130                    
        112 Jose Manuel                    100           140                    
        112 Jose Manuel                    100           150                    
        112 Jose Manuel                    100           160                    
        112 Jose Manuel                    100           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        112 Jose Manuel                    100           180                    
        112 Jose Manuel                    100           190                    
        112 Jose Manuel                    100           200                    
        112 Jose Manuel                    100           210                    
        112 Jose Manuel                    100           220                    
        112 Jose Manuel                    100           230                    
        112 Jose Manuel                    100           240                    
        112 Jose Manuel                    100           250                    
        112 Jose Manuel                    100           260                    
        112 Jose Manuel                    100           270                    
        113 Luis                           100            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100            20                    
        113 Luis                           100            30                    
        113 Luis                           100            40                    
        113 Luis                           100            50                    
        113 Luis                           100            60                    
        113 Luis                           100            70                    
        113 Luis                           100            80                    
        113 Luis                           100            90                    
        113 Luis                           100           100                    
        113 Luis                           100           110                    
        113 Luis                           100           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100           130                    
        113 Luis                           100           140                    
        113 Luis                           100           150                    
        113 Luis                           100           160                    
        113 Luis                           100           170                    
        113 Luis                           100           180                    
        113 Luis                           100           190                    
        113 Luis                           100           200                    
        113 Luis                           100           210                    
        113 Luis                           100           220                    
        113 Luis                           100           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100           240                    
        113 Luis                           100           250                    
        113 Luis                           100           260                    
        113 Luis                           100           270                    
        114 Den                             30            10                    
        114 Den                             30            20                    
        114 Den                             30            30                    
        114 Den                             30            40                    
        114 Den                             30            50                    
        114 Den                             30            60                    
        114 Den                             30            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        114 Den                             30            80                    
        114 Den                             30            90                    
        114 Den                             30           100                    
        114 Den                             30           110                    
        114 Den                             30           120                    
        114 Den                             30           130                    
        114 Den                             30           140                    
        114 Den                             30           150                    
        114 Den                             30           160                    
        114 Den                             30           170                    
        114 Den                             30           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        114 Den                             30           190                    
        114 Den                             30           200                    
        114 Den                             30           210                    
        114 Den                             30           220                    
        114 Den                             30           230                    
        114 Den                             30           240                    
        114 Den                             30           250                    
        114 Den                             30           260                    
        114 Den                             30           270                    
        115 Alexander                       30            10                    
        115 Alexander                       30            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30            30                    
        115 Alexander                       30            40                    
        115 Alexander                       30            50                    
        115 Alexander                       30            60                    
        115 Alexander                       30            70                    
        115 Alexander                       30            80                    
        115 Alexander                       30            90                    
        115 Alexander                       30           100                    
        115 Alexander                       30           110                    
        115 Alexander                       30           120                    
        115 Alexander                       30           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30           140                    
        115 Alexander                       30           150                    
        115 Alexander                       30           160                    
        115 Alexander                       30           170                    
        115 Alexander                       30           180                    
        115 Alexander                       30           190                    
        115 Alexander                       30           200                    
        115 Alexander                       30           210                    
        115 Alexander                       30           220                    
        115 Alexander                       30           230                    
        115 Alexander                       30           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30           250                    
        115 Alexander                       30           260                    
        115 Alexander                       30           270                    
        116 Shelli                          30            10                    
        116 Shelli                          30            20                    
        116 Shelli                          30            30                    
        116 Shelli                          30            40                    
        116 Shelli                          30            50                    
        116 Shelli                          30            60                    
        116 Shelli                          30            70                    
        116 Shelli                          30            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        116 Shelli                          30            90                    
        116 Shelli                          30           100                    
        116 Shelli                          30           110                    
        116 Shelli                          30           120                    
        116 Shelli                          30           130                    
        116 Shelli                          30           140                    
        116 Shelli                          30           150                    
        116 Shelli                          30           160                    
        116 Shelli                          30           170                    
        116 Shelli                          30           180                    
        116 Shelli                          30           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        116 Shelli                          30           200                    
        116 Shelli                          30           210                    
        116 Shelli                          30           220                    
        116 Shelli                          30           230                    
        116 Shelli                          30           240                    
        116 Shelli                          30           250                    
        116 Shelli                          30           260                    
        116 Shelli                          30           270                    
        117 Sigal                           30            10                    
        117 Sigal                           30            20                    
        117 Sigal                           30            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30            40                    
        117 Sigal                           30            50                    
        117 Sigal                           30            60                    
        117 Sigal                           30            70                    
        117 Sigal                           30            80                    
        117 Sigal                           30            90                    
        117 Sigal                           30           100                    
        117 Sigal                           30           110                    
        117 Sigal                           30           120                    
        117 Sigal                           30           130                    
        117 Sigal                           30           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30           150                    
        117 Sigal                           30           160                    
        117 Sigal                           30           170                    
        117 Sigal                           30           180                    
        117 Sigal                           30           190                    
        117 Sigal                           30           200                    
        117 Sigal                           30           210                    
        117 Sigal                           30           220                    
        117 Sigal                           30           230                    
        117 Sigal                           30           240                    
        117 Sigal                           30           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30           260                    
        117 Sigal                           30           270                    
        118 Guy                             30            10                    
        118 Guy                             30            20                    
        118 Guy                             30            30                    
        118 Guy                             30            40                    
        118 Guy                             30            50                    
        118 Guy                             30            60                    
        118 Guy                             30            70                    
        118 Guy                             30            80                    
        118 Guy                             30            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        118 Guy                             30           100                    
        118 Guy                             30           110                    
        118 Guy                             30           120                    
        118 Guy                             30           130                    
        118 Guy                             30           140                    
        118 Guy                             30           150                    
        118 Guy                             30           160                    
        118 Guy                             30           170                    
        118 Guy                             30           180                    
        118 Guy                             30           190                    
        118 Guy                             30           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        118 Guy                             30           210                    
        118 Guy                             30           220                    
        118 Guy                             30           230                    
        118 Guy                             30           240                    
        118 Guy                             30           250                    
        118 Guy                             30           260                    
        118 Guy                             30           270                    
        119 Karen                           30            10                    
        119 Karen                           30            20                    
        119 Karen                           30            30                    
        119 Karen                           30            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30            50                    
        119 Karen                           30            60                    
        119 Karen                           30            70                    
        119 Karen                           30            80                    
        119 Karen                           30            90                    
        119 Karen                           30           100                    
        119 Karen                           30           110                    
        119 Karen                           30           120                    
        119 Karen                           30           130                    
        119 Karen                           30           140                    
        119 Karen                           30           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30           160                    
        119 Karen                           30           170                    
        119 Karen                           30           180                    
        119 Karen                           30           190                    
        119 Karen                           30           200                    
        119 Karen                           30           210                    
        119 Karen                           30           220                    
        119 Karen                           30           230                    
        119 Karen                           30           240                    
        119 Karen                           30           250                    
        119 Karen                           30           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30           270                    
        120 Matthew                         50            10                    
        120 Matthew                         50            20                    
        120 Matthew                         50            30                    
        120 Matthew                         50            40                    
        120 Matthew                         50            50                    
        120 Matthew                         50            60                    
        120 Matthew                         50            70                    
        120 Matthew                         50            80                    
        120 Matthew                         50            90                    
        120 Matthew                         50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        120 Matthew                         50           110                    
        120 Matthew                         50           120                    
        120 Matthew                         50           130                    
        120 Matthew                         50           140                    
        120 Matthew                         50           150                    
        120 Matthew                         50           160                    
        120 Matthew                         50           170                    
        120 Matthew                         50           180                    
        120 Matthew                         50           190                    
        120 Matthew                         50           200                    
        120 Matthew                         50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        120 Matthew                         50           220                    
        120 Matthew                         50           230                    
        120 Matthew                         50           240                    
        120 Matthew                         50           250                    
        120 Matthew                         50           260                    
        120 Matthew                         50           270                    
        121 Adam                            50            10                    
        121 Adam                            50            20                    
        121 Adam                            50            30                    
        121 Adam                            50            40                    
        121 Adam                            50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        121 Adam                            50            60                    
        121 Adam                            50            70                    
        121 Adam                            50            80                    
        121 Adam                            50            90                    
        121 Adam                            50           100                    
        121 Adam                            50           110                    
        121 Adam                            50           120                    
        121 Adam                            50           130                    
        121 Adam                            50           140                    
        121 Adam                            50           150                    
        121 Adam                            50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        121 Adam                            50           170                    
        121 Adam                            50           180                    
        121 Adam                            50           190                    
        121 Adam                            50           200                    
        121 Adam                            50           210                    
        121 Adam                            50           220                    
        121 Adam                            50           230                    
        121 Adam                            50           240                    
        121 Adam                            50           250                    
        121 Adam                            50           260                    
        121 Adam                            50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50            10                    
        122 Payam                           50            20                    
        122 Payam                           50            30                    
        122 Payam                           50            40                    
        122 Payam                           50            50                    
        122 Payam                           50            60                    
        122 Payam                           50            70                    
        122 Payam                           50            80                    
        122 Payam                           50            90                    
        122 Payam                           50           100                    
        122 Payam                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50           120                    
        122 Payam                           50           130                    
        122 Payam                           50           140                    
        122 Payam                           50           150                    
        122 Payam                           50           160                    
        122 Payam                           50           170                    
        122 Payam                           50           180                    
        122 Payam                           50           190                    
        122 Payam                           50           200                    
        122 Payam                           50           210                    
        122 Payam                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50           230                    
        122 Payam                           50           240                    
        122 Payam                           50           250                    
        122 Payam                           50           260                    
        122 Payam                           50           270                    
        123 Shanta                          50            10                    
        123 Shanta                          50            20                    
        123 Shanta                          50            30                    
        123 Shanta                          50            40                    
        123 Shanta                          50            50                    
        123 Shanta                          50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        123 Shanta                          50            70                    
        123 Shanta                          50            80                    
        123 Shanta                          50            90                    
        123 Shanta                          50           100                    
        123 Shanta                          50           110                    
        123 Shanta                          50           120                    
        123 Shanta                          50           130                    
        123 Shanta                          50           140                    
        123 Shanta                          50           150                    
        123 Shanta                          50           160                    
        123 Shanta                          50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        123 Shanta                          50           180                    
        123 Shanta                          50           190                    
        123 Shanta                          50           200                    
        123 Shanta                          50           210                    
        123 Shanta                          50           220                    
        123 Shanta                          50           230                    
        123 Shanta                          50           240                    
        123 Shanta                          50           250                    
        123 Shanta                          50           260                    
        123 Shanta                          50           270                    
        124 Kevin                           50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50            20                    
        124 Kevin                           50            30                    
        124 Kevin                           50            40                    
        124 Kevin                           50            50                    
        124 Kevin                           50            60                    
        124 Kevin                           50            70                    
        124 Kevin                           50            80                    
        124 Kevin                           50            90                    
        124 Kevin                           50           100                    
        124 Kevin                           50           110                    
        124 Kevin                           50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50           130                    
        124 Kevin                           50           140                    
        124 Kevin                           50           150                    
        124 Kevin                           50           160                    
        124 Kevin                           50           170                    
        124 Kevin                           50           180                    
        124 Kevin                           50           190                    
        124 Kevin                           50           200                    
        124 Kevin                           50           210                    
        124 Kevin                           50           220                    
        124 Kevin                           50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50           240                    
        124 Kevin                           50           250                    
        124 Kevin                           50           260                    
        124 Kevin                           50           270                    
        125 Julia                           50            10                    
        125 Julia                           50            20                    
        125 Julia                           50            30                    
        125 Julia                           50            40                    
        125 Julia                           50            50                    
        125 Julia                           50            60                    
        125 Julia                           50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        125 Julia                           50            80                    
        125 Julia                           50            90                    
        125 Julia                           50           100                    
        125 Julia                           50           110                    
        125 Julia                           50           120                    
        125 Julia                           50           130                    
        125 Julia                           50           140                    
        125 Julia                           50           150                    
        125 Julia                           50           160                    
        125 Julia                           50           170                    
        125 Julia                           50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        125 Julia                           50           190                    
        125 Julia                           50           200                    
        125 Julia                           50           210                    
        125 Julia                           50           220                    
        125 Julia                           50           230                    
        125 Julia                           50           240                    
        125 Julia                           50           250                    
        125 Julia                           50           260                    
        125 Julia                           50           270                    
        126 Irene                           50            10                    
        126 Irene                           50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50            30                    
        126 Irene                           50            40                    
        126 Irene                           50            50                    
        126 Irene                           50            60                    
        126 Irene                           50            70                    
        126 Irene                           50            80                    
        126 Irene                           50            90                    
        126 Irene                           50           100                    
        126 Irene                           50           110                    
        126 Irene                           50           120                    
        126 Irene                           50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50           140                    
        126 Irene                           50           150                    
        126 Irene                           50           160                    
        126 Irene                           50           170                    
        126 Irene                           50           180                    
        126 Irene                           50           190                    
        126 Irene                           50           200                    
        126 Irene                           50           210                    
        126 Irene                           50           220                    
        126 Irene                           50           230                    
        126 Irene                           50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50           250                    
        126 Irene                           50           260                    
        126 Irene                           50           270                    
        127 James                           50            10                    
        127 James                           50            20                    
        127 James                           50            30                    
        127 James                           50            40                    
        127 James                           50            50                    
        127 James                           50            60                    
        127 James                           50            70                    
        127 James                           50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        127 James                           50            90                    
        127 James                           50           100                    
        127 James                           50           110                    
        127 James                           50           120                    
        127 James                           50           130                    
        127 James                           50           140                    
        127 James                           50           150                    
        127 James                           50           160                    
        127 James                           50           170                    
        127 James                           50           180                    
        127 James                           50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        127 James                           50           200                    
        127 James                           50           210                    
        127 James                           50           220                    
        127 James                           50           230                    
        127 James                           50           240                    
        127 James                           50           250                    
        127 James                           50           260                    
        127 James                           50           270                    
        128 Steven                          50            10                    
        128 Steven                          50            20                    
        128 Steven                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50            40                    
        128 Steven                          50            50                    
        128 Steven                          50            60                    
        128 Steven                          50            70                    
        128 Steven                          50            80                    
        128 Steven                          50            90                    
        128 Steven                          50           100                    
        128 Steven                          50           110                    
        128 Steven                          50           120                    
        128 Steven                          50           130                    
        128 Steven                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50           150                    
        128 Steven                          50           160                    
        128 Steven                          50           170                    
        128 Steven                          50           180                    
        128 Steven                          50           190                    
        128 Steven                          50           200                    
        128 Steven                          50           210                    
        128 Steven                          50           220                    
        128 Steven                          50           230                    
        128 Steven                          50           240                    
        128 Steven                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50           260                    
        128 Steven                          50           270                    
        129 Laura                           50            10                    
        129 Laura                           50            20                    
        129 Laura                           50            30                    
        129 Laura                           50            40                    
        129 Laura                           50            50                    
        129 Laura                           50            60                    
        129 Laura                           50            70                    
        129 Laura                           50            80                    
        129 Laura                           50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        129 Laura                           50           100                    
        129 Laura                           50           110                    
        129 Laura                           50           120                    
        129 Laura                           50           130                    
        129 Laura                           50           140                    
        129 Laura                           50           150                    
        129 Laura                           50           160                    
        129 Laura                           50           170                    
        129 Laura                           50           180                    
        129 Laura                           50           190                    
        129 Laura                           50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        129 Laura                           50           210                    
        129 Laura                           50           220                    
        129 Laura                           50           230                    
        129 Laura                           50           240                    
        129 Laura                           50           250                    
        129 Laura                           50           260                    
        129 Laura                           50           270                    
        130 Mozhe                           50            10                    
        130 Mozhe                           50            20                    
        130 Mozhe                           50            30                    
        130 Mozhe                           50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50            50                    
        130 Mozhe                           50            60                    
        130 Mozhe                           50            70                    
        130 Mozhe                           50            80                    
        130 Mozhe                           50            90                    
        130 Mozhe                           50           100                    
        130 Mozhe                           50           110                    
        130 Mozhe                           50           120                    
        130 Mozhe                           50           130                    
        130 Mozhe                           50           140                    
        130 Mozhe                           50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50           160                    
        130 Mozhe                           50           170                    
        130 Mozhe                           50           180                    
        130 Mozhe                           50           190                    
        130 Mozhe                           50           200                    
        130 Mozhe                           50           210                    
        130 Mozhe                           50           220                    
        130 Mozhe                           50           230                    
        130 Mozhe                           50           240                    
        130 Mozhe                           50           250                    
        130 Mozhe                           50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50           270                    
        131 James                           50            10                    
        131 James                           50            20                    
        131 James                           50            30                    
        131 James                           50            40                    
        131 James                           50            50                    
        131 James                           50            60                    
        131 James                           50            70                    
        131 James                           50            80                    
        131 James                           50            90                    
        131 James                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        131 James                           50           110                    
        131 James                           50           120                    
        131 James                           50           130                    
        131 James                           50           140                    
        131 James                           50           150                    
        131 James                           50           160                    
        131 James                           50           170                    
        131 James                           50           180                    
        131 James                           50           190                    
        131 James                           50           200                    
        131 James                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        131 James                           50           220                    
        131 James                           50           230                    
        131 James                           50           240                    
        131 James                           50           250                    
        131 James                           50           260                    
        131 James                           50           270                    
        132 TJ                              50            10                    
        132 TJ                              50            20                    
        132 TJ                              50            30                    
        132 TJ                              50            40                    
        132 TJ                              50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        132 TJ                              50            60                    
        132 TJ                              50            70                    
        132 TJ                              50            80                    
        132 TJ                              50            90                    
        132 TJ                              50           100                    
        132 TJ                              50           110                    
        132 TJ                              50           120                    
        132 TJ                              50           130                    
        132 TJ                              50           140                    
        132 TJ                              50           150                    
        132 TJ                              50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        132 TJ                              50           170                    
        132 TJ                              50           180                    
        132 TJ                              50           190                    
        132 TJ                              50           200                    
        132 TJ                              50           210                    
        132 TJ                              50           220                    
        132 TJ                              50           230                    
        132 TJ                              50           240                    
        132 TJ                              50           250                    
        132 TJ                              50           260                    
        132 TJ                              50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50            10                    
        133 Jason                           50            20                    
        133 Jason                           50            30                    
        133 Jason                           50            40                    
        133 Jason                           50            50                    
        133 Jason                           50            60                    
        133 Jason                           50            70                    
        133 Jason                           50            80                    
        133 Jason                           50            90                    
        133 Jason                           50           100                    
        133 Jason                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50           120                    
        133 Jason                           50           130                    
        133 Jason                           50           140                    
        133 Jason                           50           150                    
        133 Jason                           50           160                    
        133 Jason                           50           170                    
        133 Jason                           50           180                    
        133 Jason                           50           190                    
        133 Jason                           50           200                    
        133 Jason                           50           210                    
        133 Jason                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50           230                    
        133 Jason                           50           240                    
        133 Jason                           50           250                    
        133 Jason                           50           260                    
        133 Jason                           50           270                    
        134 Michael                         50            10                    
        134 Michael                         50            20                    
        134 Michael                         50            30                    
        134 Michael                         50            40                    
        134 Michael                         50            50                    
        134 Michael                         50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        134 Michael                         50            70                    
        134 Michael                         50            80                    
        134 Michael                         50            90                    
        134 Michael                         50           100                    
        134 Michael                         50           110                    
        134 Michael                         50           120                    
        134 Michael                         50           130                    
        134 Michael                         50           140                    
        134 Michael                         50           150                    
        134 Michael                         50           160                    
        134 Michael                         50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        134 Michael                         50           180                    
        134 Michael                         50           190                    
        134 Michael                         50           200                    
        134 Michael                         50           210                    
        134 Michael                         50           220                    
        134 Michael                         50           230                    
        134 Michael                         50           240                    
        134 Michael                         50           250                    
        134 Michael                         50           260                    
        134 Michael                         50           270                    
        135 Ki                              50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50            20                    
        135 Ki                              50            30                    
        135 Ki                              50            40                    
        135 Ki                              50            50                    
        135 Ki                              50            60                    
        135 Ki                              50            70                    
        135 Ki                              50            80                    
        135 Ki                              50            90                    
        135 Ki                              50           100                    
        135 Ki                              50           110                    
        135 Ki                              50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50           130                    
        135 Ki                              50           140                    
        135 Ki                              50           150                    
        135 Ki                              50           160                    
        135 Ki                              50           170                    
        135 Ki                              50           180                    
        135 Ki                              50           190                    
        135 Ki                              50           200                    
        135 Ki                              50           210                    
        135 Ki                              50           220                    
        135 Ki                              50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50           240                    
        135 Ki                              50           250                    
        135 Ki                              50           260                    
        135 Ki                              50           270                    
        136 Hazel                           50            10                    
        136 Hazel                           50            20                    
        136 Hazel                           50            30                    
        136 Hazel                           50            40                    
        136 Hazel                           50            50                    
        136 Hazel                           50            60                    
        136 Hazel                           50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        136 Hazel                           50            80                    
        136 Hazel                           50            90                    
        136 Hazel                           50           100                    
        136 Hazel                           50           110                    
        136 Hazel                           50           120                    
        136 Hazel                           50           130                    
        136 Hazel                           50           140                    
        136 Hazel                           50           150                    
        136 Hazel                           50           160                    
        136 Hazel                           50           170                    
        136 Hazel                           50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        136 Hazel                           50           190                    
        136 Hazel                           50           200                    
        136 Hazel                           50           210                    
        136 Hazel                           50           220                    
        136 Hazel                           50           230                    
        136 Hazel                           50           240                    
        136 Hazel                           50           250                    
        136 Hazel                           50           260                    
        136 Hazel                           50           270                    
        137 Renske                          50            10                    
        137 Renske                          50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50            30                    
        137 Renske                          50            40                    
        137 Renske                          50            50                    
        137 Renske                          50            60                    
        137 Renske                          50            70                    
        137 Renske                          50            80                    
        137 Renske                          50            90                    
        137 Renske                          50           100                    
        137 Renske                          50           110                    
        137 Renske                          50           120                    
        137 Renske                          50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50           140                    
        137 Renske                          50           150                    
        137 Renske                          50           160                    
        137 Renske                          50           170                    
        137 Renske                          50           180                    
        137 Renske                          50           190                    
        137 Renske                          50           200                    
        137 Renske                          50           210                    
        137 Renske                          50           220                    
        137 Renske                          50           230                    
        137 Renske                          50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50           250                    
        137 Renske                          50           260                    
        137 Renske                          50           270                    
        138 Stephen                         50            10                    
        138 Stephen                         50            20                    
        138 Stephen                         50            30                    
        138 Stephen                         50            40                    
        138 Stephen                         50            50                    
        138 Stephen                         50            60                    
        138 Stephen                         50            70                    
        138 Stephen                         50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        138 Stephen                         50            90                    
        138 Stephen                         50           100                    
        138 Stephen                         50           110                    
        138 Stephen                         50           120                    
        138 Stephen                         50           130                    
        138 Stephen                         50           140                    
        138 Stephen                         50           150                    
        138 Stephen                         50           160                    
        138 Stephen                         50           170                    
        138 Stephen                         50           180                    
        138 Stephen                         50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        138 Stephen                         50           200                    
        138 Stephen                         50           210                    
        138 Stephen                         50           220                    
        138 Stephen                         50           230                    
        138 Stephen                         50           240                    
        138 Stephen                         50           250                    
        138 Stephen                         50           260                    
        138 Stephen                         50           270                    
        139 John                            50            10                    
        139 John                            50            20                    
        139 John                            50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50            40                    
        139 John                            50            50                    
        139 John                            50            60                    
        139 John                            50            70                    
        139 John                            50            80                    
        139 John                            50            90                    
        139 John                            50           100                    
        139 John                            50           110                    
        139 John                            50           120                    
        139 John                            50           130                    
        139 John                            50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50           150                    
        139 John                            50           160                    
        139 John                            50           170                    
        139 John                            50           180                    
        139 John                            50           190                    
        139 John                            50           200                    
        139 John                            50           210                    
        139 John                            50           220                    
        139 John                            50           230                    
        139 John                            50           240                    
        139 John                            50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50           260                    
        139 John                            50           270                    
        140 Joshua                          50            10                    
        140 Joshua                          50            20                    
        140 Joshua                          50            30                    
        140 Joshua                          50            40                    
        140 Joshua                          50            50                    
        140 Joshua                          50            60                    
        140 Joshua                          50            70                    
        140 Joshua                          50            80                    
        140 Joshua                          50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        140 Joshua                          50           100                    
        140 Joshua                          50           110                    
        140 Joshua                          50           120                    
        140 Joshua                          50           130                    
        140 Joshua                          50           140                    
        140 Joshua                          50           150                    
        140 Joshua                          50           160                    
        140 Joshua                          50           170                    
        140 Joshua                          50           180                    
        140 Joshua                          50           190                    
        140 Joshua                          50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        140 Joshua                          50           210                    
        140 Joshua                          50           220                    
        140 Joshua                          50           230                    
        140 Joshua                          50           240                    
        140 Joshua                          50           250                    
        140 Joshua                          50           260                    
        140 Joshua                          50           270                    
        141 Trenna                          50            10                    
        141 Trenna                          50            20                    
        141 Trenna                          50            30                    
        141 Trenna                          50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50            50                    
        141 Trenna                          50            60                    
        141 Trenna                          50            70                    
        141 Trenna                          50            80                    
        141 Trenna                          50            90                    
        141 Trenna                          50           100                    
        141 Trenna                          50           110                    
        141 Trenna                          50           120                    
        141 Trenna                          50           130                    
        141 Trenna                          50           140                    
        141 Trenna                          50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50           160                    
        141 Trenna                          50           170                    
        141 Trenna                          50           180                    
        141 Trenna                          50           190                    
        141 Trenna                          50           200                    
        141 Trenna                          50           210                    
        141 Trenna                          50           220                    
        141 Trenna                          50           230                    
        141 Trenna                          50           240                    
        141 Trenna                          50           250                    
        141 Trenna                          50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50           270                    
        142 Curtis                          50            10                    
        142 Curtis                          50            20                    
        142 Curtis                          50            30                    
        142 Curtis                          50            40                    
        142 Curtis                          50            50                    
        142 Curtis                          50            60                    
        142 Curtis                          50            70                    
        142 Curtis                          50            80                    
        142 Curtis                          50            90                    
        142 Curtis                          50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        142 Curtis                          50           110                    
        142 Curtis                          50           120                    
        142 Curtis                          50           130                    
        142 Curtis                          50           140                    
        142 Curtis                          50           150                    
        142 Curtis                          50           160                    
        142 Curtis                          50           170                    
        142 Curtis                          50           180                    
        142 Curtis                          50           190                    
        142 Curtis                          50           200                    
        142 Curtis                          50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        142 Curtis                          50           220                    
        142 Curtis                          50           230                    
        142 Curtis                          50           240                    
        142 Curtis                          50           250                    
        142 Curtis                          50           260                    
        142 Curtis                          50           270                    
        143 Randall                         50            10                    
        143 Randall                         50            20                    
        143 Randall                         50            30                    
        143 Randall                         50            40                    
        143 Randall                         50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        143 Randall                         50            60                    
        143 Randall                         50            70                    
        143 Randall                         50            80                    
        143 Randall                         50            90                    
        143 Randall                         50           100                    
        143 Randall                         50           110                    
        143 Randall                         50           120                    
        143 Randall                         50           130                    
        143 Randall                         50           140                    
        143 Randall                         50           150                    
        143 Randall                         50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        143 Randall                         50           170                    
        143 Randall                         50           180                    
        143 Randall                         50           190                    
        143 Randall                         50           200                    
        143 Randall                         50           210                    
        143 Randall                         50           220                    
        143 Randall                         50           230                    
        143 Randall                         50           240                    
        143 Randall                         50           250                    
        143 Randall                         50           260                    
        143 Randall                         50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50            10                    
        144 Peter                           50            20                    
        144 Peter                           50            30                    
        144 Peter                           50            40                    
        144 Peter                           50            50                    
        144 Peter                           50            60                    
        144 Peter                           50            70                    
        144 Peter                           50            80                    
        144 Peter                           50            90                    
        144 Peter                           50           100                    
        144 Peter                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50           120                    
        144 Peter                           50           130                    
        144 Peter                           50           140                    
        144 Peter                           50           150                    
        144 Peter                           50           160                    
        144 Peter                           50           170                    
        144 Peter                           50           180                    
        144 Peter                           50           190                    
        144 Peter                           50           200                    
        144 Peter                           50           210                    
        144 Peter                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50           230                    
        144 Peter                           50           240                    
        144 Peter                           50           250                    
        144 Peter                           50           260                    
        144 Peter                           50           270                    
        145 John                            80            10                    
        145 John                            80            20                    
        145 John                            80            30                    
        145 John                            80            40                    
        145 John                            80            50                    
        145 John                            80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        145 John                            80            70                    
        145 John                            80            80                    
        145 John                            80            90                    
        145 John                            80           100                    
        145 John                            80           110                    
        145 John                            80           120                    
        145 John                            80           130                    
        145 John                            80           140                    
        145 John                            80           150                    
        145 John                            80           160                    
        145 John                            80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        145 John                            80           180                    
        145 John                            80           190                    
        145 John                            80           200                    
        145 John                            80           210                    
        145 John                            80           220                    
        145 John                            80           230                    
        145 John                            80           240                    
        145 John                            80           250                    
        145 John                            80           260                    
        145 John                            80           270                    
        146 Karen                           80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80            20                    
        146 Karen                           80            30                    
        146 Karen                           80            40                    
        146 Karen                           80            50                    
        146 Karen                           80            60                    
        146 Karen                           80            70                    
        146 Karen                           80            80                    
        146 Karen                           80            90                    
        146 Karen                           80           100                    
        146 Karen                           80           110                    
        146 Karen                           80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80           130                    
        146 Karen                           80           140                    
        146 Karen                           80           150                    
        146 Karen                           80           160                    
        146 Karen                           80           170                    
        146 Karen                           80           180                    
        146 Karen                           80           190                    
        146 Karen                           80           200                    
        146 Karen                           80           210                    
        146 Karen                           80           220                    
        146 Karen                           80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80           240                    
        146 Karen                           80           250                    
        146 Karen                           80           260                    
        146 Karen                           80           270                    
        147 Alberto                         80            10                    
        147 Alberto                         80            20                    
        147 Alberto                         80            30                    
        147 Alberto                         80            40                    
        147 Alberto                         80            50                    
        147 Alberto                         80            60                    
        147 Alberto                         80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        147 Alberto                         80            80                    
        147 Alberto                         80            90                    
        147 Alberto                         80           100                    
        147 Alberto                         80           110                    
        147 Alberto                         80           120                    
        147 Alberto                         80           130                    
        147 Alberto                         80           140                    
        147 Alberto                         80           150                    
        147 Alberto                         80           160                    
        147 Alberto                         80           170                    
        147 Alberto                         80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        147 Alberto                         80           190                    
        147 Alberto                         80           200                    
        147 Alberto                         80           210                    
        147 Alberto                         80           220                    
        147 Alberto                         80           230                    
        147 Alberto                         80           240                    
        147 Alberto                         80           250                    
        147 Alberto                         80           260                    
        147 Alberto                         80           270                    
        148 Gerald                          80            10                    
        148 Gerald                          80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80            30                    
        148 Gerald                          80            40                    
        148 Gerald                          80            50                    
        148 Gerald                          80            60                    
        148 Gerald                          80            70                    
        148 Gerald                          80            80                    
        148 Gerald                          80            90                    
        148 Gerald                          80           100                    
        148 Gerald                          80           110                    
        148 Gerald                          80           120                    
        148 Gerald                          80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80           140                    
        148 Gerald                          80           150                    
        148 Gerald                          80           160                    
        148 Gerald                          80           170                    
        148 Gerald                          80           180                    
        148 Gerald                          80           190                    
        148 Gerald                          80           200                    
        148 Gerald                          80           210                    
        148 Gerald                          80           220                    
        148 Gerald                          80           230                    
        148 Gerald                          80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80           250                    
        148 Gerald                          80           260                    
        148 Gerald                          80           270                    
        149 Eleni                           80            10                    
        149 Eleni                           80            20                    
        149 Eleni                           80            30                    
        149 Eleni                           80            40                    
        149 Eleni                           80            50                    
        149 Eleni                           80            60                    
        149 Eleni                           80            70                    
        149 Eleni                           80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        149 Eleni                           80            90                    
        149 Eleni                           80           100                    
        149 Eleni                           80           110                    
        149 Eleni                           80           120                    
        149 Eleni                           80           130                    
        149 Eleni                           80           140                    
        149 Eleni                           80           150                    
        149 Eleni                           80           160                    
        149 Eleni                           80           170                    
        149 Eleni                           80           180                    
        149 Eleni                           80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        149 Eleni                           80           200                    
        149 Eleni                           80           210                    
        149 Eleni                           80           220                    
        149 Eleni                           80           230                    
        149 Eleni                           80           240                    
        149 Eleni                           80           250                    
        149 Eleni                           80           260                    
        149 Eleni                           80           270                    
        150 Sean                            80            10                    
        150 Sean                            80            20                    
        150 Sean                            80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80            40                    
        150 Sean                            80            50                    
        150 Sean                            80            60                    
        150 Sean                            80            70                    
        150 Sean                            80            80                    
        150 Sean                            80            90                    
        150 Sean                            80           100                    
        150 Sean                            80           110                    
        150 Sean                            80           120                    
        150 Sean                            80           130                    
        150 Sean                            80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80           150                    
        150 Sean                            80           160                    
        150 Sean                            80           170                    
        150 Sean                            80           180                    
        150 Sean                            80           190                    
        150 Sean                            80           200                    
        150 Sean                            80           210                    
        150 Sean                            80           220                    
        150 Sean                            80           230                    
        150 Sean                            80           240                    
        150 Sean                            80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80           260                    
        150 Sean                            80           270                    
        151 David                           80            10                    
        151 David                           80            20                    
        151 David                           80            30                    
        151 David                           80            40                    
        151 David                           80            50                    
        151 David                           80            60                    
        151 David                           80            70                    
        151 David                           80            80                    
        151 David                           80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        151 David                           80           100                    
        151 David                           80           110                    
        151 David                           80           120                    
        151 David                           80           130                    
        151 David                           80           140                    
        151 David                           80           150                    
        151 David                           80           160                    
        151 David                           80           170                    
        151 David                           80           180                    
        151 David                           80           190                    
        151 David                           80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        151 David                           80           210                    
        151 David                           80           220                    
        151 David                           80           230                    
        151 David                           80           240                    
        151 David                           80           250                    
        151 David                           80           260                    
        151 David                           80           270                    
        152 Peter                           80            10                    
        152 Peter                           80            20                    
        152 Peter                           80            30                    
        152 Peter                           80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80            50                    
        152 Peter                           80            60                    
        152 Peter                           80            70                    
        152 Peter                           80            80                    
        152 Peter                           80            90                    
        152 Peter                           80           100                    
        152 Peter                           80           110                    
        152 Peter                           80           120                    
        152 Peter                           80           130                    
        152 Peter                           80           140                    
        152 Peter                           80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80           160                    
        152 Peter                           80           170                    
        152 Peter                           80           180                    
        152 Peter                           80           190                    
        152 Peter                           80           200                    
        152 Peter                           80           210                    
        152 Peter                           80           220                    
        152 Peter                           80           230                    
        152 Peter                           80           240                    
        152 Peter                           80           250                    
        152 Peter                           80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80           270                    
        153 Christopher                     80            10                    
        153 Christopher                     80            20                    
        153 Christopher                     80            30                    
        153 Christopher                     80            40                    
        153 Christopher                     80            50                    
        153 Christopher                     80            60                    
        153 Christopher                     80            70                    
        153 Christopher                     80            80                    
        153 Christopher                     80            90                    
        153 Christopher                     80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        153 Christopher                     80           110                    
        153 Christopher                     80           120                    
        153 Christopher                     80           130                    
        153 Christopher                     80           140                    
        153 Christopher                     80           150                    
        153 Christopher                     80           160                    
        153 Christopher                     80           170                    
        153 Christopher                     80           180                    
        153 Christopher                     80           190                    
        153 Christopher                     80           200                    
        153 Christopher                     80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        153 Christopher                     80           220                    
        153 Christopher                     80           230                    
        153 Christopher                     80           240                    
        153 Christopher                     80           250                    
        153 Christopher                     80           260                    
        153 Christopher                     80           270                    
        154 Nanette                         80            10                    
        154 Nanette                         80            20                    
        154 Nanette                         80            30                    
        154 Nanette                         80            40                    
        154 Nanette                         80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        154 Nanette                         80            60                    
        154 Nanette                         80            70                    
        154 Nanette                         80            80                    
        154 Nanette                         80            90                    
        154 Nanette                         80           100                    
        154 Nanette                         80           110                    
        154 Nanette                         80           120                    
        154 Nanette                         80           130                    
        154 Nanette                         80           140                    
        154 Nanette                         80           150                    
        154 Nanette                         80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        154 Nanette                         80           170                    
        154 Nanette                         80           180                    
        154 Nanette                         80           190                    
        154 Nanette                         80           200                    
        154 Nanette                         80           210                    
        154 Nanette                         80           220                    
        154 Nanette                         80           230                    
        154 Nanette                         80           240                    
        154 Nanette                         80           250                    
        154 Nanette                         80           260                    
        154 Nanette                         80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80            10                    
        155 Oliver                          80            20                    
        155 Oliver                          80            30                    
        155 Oliver                          80            40                    
        155 Oliver                          80            50                    
        155 Oliver                          80            60                    
        155 Oliver                          80            70                    
        155 Oliver                          80            80                    
        155 Oliver                          80            90                    
        155 Oliver                          80           100                    
        155 Oliver                          80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80           120                    
        155 Oliver                          80           130                    
        155 Oliver                          80           140                    
        155 Oliver                          80           150                    
        155 Oliver                          80           160                    
        155 Oliver                          80           170                    
        155 Oliver                          80           180                    
        155 Oliver                          80           190                    
        155 Oliver                          80           200                    
        155 Oliver                          80           210                    
        155 Oliver                          80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80           230                    
        155 Oliver                          80           240                    
        155 Oliver                          80           250                    
        155 Oliver                          80           260                    
        155 Oliver                          80           270                    
        156 Janette                         80            10                    
        156 Janette                         80            20                    
        156 Janette                         80            30                    
        156 Janette                         80            40                    
        156 Janette                         80            50                    
        156 Janette                         80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        156 Janette                         80            70                    
        156 Janette                         80            80                    
        156 Janette                         80            90                    
        156 Janette                         80           100                    
        156 Janette                         80           110                    
        156 Janette                         80           120                    
        156 Janette                         80           130                    
        156 Janette                         80           140                    
        156 Janette                         80           150                    
        156 Janette                         80           160                    
        156 Janette                         80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        156 Janette                         80           180                    
        156 Janette                         80           190                    
        156 Janette                         80           200                    
        156 Janette                         80           210                    
        156 Janette                         80           220                    
        156 Janette                         80           230                    
        156 Janette                         80           240                    
        156 Janette                         80           250                    
        156 Janette                         80           260                    
        156 Janette                         80           270                    
        157 Patrick                         80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80            20                    
        157 Patrick                         80            30                    
        157 Patrick                         80            40                    
        157 Patrick                         80            50                    
        157 Patrick                         80            60                    
        157 Patrick                         80            70                    
        157 Patrick                         80            80                    
        157 Patrick                         80            90                    
        157 Patrick                         80           100                    
        157 Patrick                         80           110                    
        157 Patrick                         80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80           130                    
        157 Patrick                         80           140                    
        157 Patrick                         80           150                    
        157 Patrick                         80           160                    
        157 Patrick                         80           170                    
        157 Patrick                         80           180                    
        157 Patrick                         80           190                    
        157 Patrick                         80           200                    
        157 Patrick                         80           210                    
        157 Patrick                         80           220                    
        157 Patrick                         80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80           240                    
        157 Patrick                         80           250                    
        157 Patrick                         80           260                    
        157 Patrick                         80           270                    
        158 Allan                           80            10                    
        158 Allan                           80            20                    
        158 Allan                           80            30                    
        158 Allan                           80            40                    
        158 Allan                           80            50                    
        158 Allan                           80            60                    
        158 Allan                           80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        158 Allan                           80            80                    
        158 Allan                           80            90                    
        158 Allan                           80           100                    
        158 Allan                           80           110                    
        158 Allan                           80           120                    
        158 Allan                           80           130                    
        158 Allan                           80           140                    
        158 Allan                           80           150                    
        158 Allan                           80           160                    
        158 Allan                           80           170                    
        158 Allan                           80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        158 Allan                           80           190                    
        158 Allan                           80           200                    
        158 Allan                           80           210                    
        158 Allan                           80           220                    
        158 Allan                           80           230                    
        158 Allan                           80           240                    
        158 Allan                           80           250                    
        158 Allan                           80           260                    
        158 Allan                           80           270                    
        159 Lindsey                         80            10                    
        159 Lindsey                         80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80            30                    
        159 Lindsey                         80            40                    
        159 Lindsey                         80            50                    
        159 Lindsey                         80            60                    
        159 Lindsey                         80            70                    
        159 Lindsey                         80            80                    
        159 Lindsey                         80            90                    
        159 Lindsey                         80           100                    
        159 Lindsey                         80           110                    
        159 Lindsey                         80           120                    
        159 Lindsey                         80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80           140                    
        159 Lindsey                         80           150                    
        159 Lindsey                         80           160                    
        159 Lindsey                         80           170                    
        159 Lindsey                         80           180                    
        159 Lindsey                         80           190                    
        159 Lindsey                         80           200                    
        159 Lindsey                         80           210                    
        159 Lindsey                         80           220                    
        159 Lindsey                         80           230                    
        159 Lindsey                         80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80           250                    
        159 Lindsey                         80           260                    
        159 Lindsey                         80           270                    
        160 Louise                          80            10                    
        160 Louise                          80            20                    
        160 Louise                          80            30                    
        160 Louise                          80            40                    
        160 Louise                          80            50                    
        160 Louise                          80            60                    
        160 Louise                          80            70                    
        160 Louise                          80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        160 Louise                          80            90                    
        160 Louise                          80           100                    
        160 Louise                          80           110                    
        160 Louise                          80           120                    
        160 Louise                          80           130                    
        160 Louise                          80           140                    
        160 Louise                          80           150                    
        160 Louise                          80           160                    
        160 Louise                          80           170                    
        160 Louise                          80           180                    
        160 Louise                          80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        160 Louise                          80           200                    
        160 Louise                          80           210                    
        160 Louise                          80           220                    
        160 Louise                          80           230                    
        160 Louise                          80           240                    
        160 Louise                          80           250                    
        160 Louise                          80           260                    
        160 Louise                          80           270                    
        161 Sarath                          80            10                    
        161 Sarath                          80            20                    
        161 Sarath                          80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80            40                    
        161 Sarath                          80            50                    
        161 Sarath                          80            60                    
        161 Sarath                          80            70                    
        161 Sarath                          80            80                    
        161 Sarath                          80            90                    
        161 Sarath                          80           100                    
        161 Sarath                          80           110                    
        161 Sarath                          80           120                    
        161 Sarath                          80           130                    
        161 Sarath                          80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80           150                    
        161 Sarath                          80           160                    
        161 Sarath                          80           170                    
        161 Sarath                          80           180                    
        161 Sarath                          80           190                    
        161 Sarath                          80           200                    
        161 Sarath                          80           210                    
        161 Sarath                          80           220                    
        161 Sarath                          80           230                    
        161 Sarath                          80           240                    
        161 Sarath                          80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80           260                    
        161 Sarath                          80           270                    
        162 Clara                           80            10                    
        162 Clara                           80            20                    
        162 Clara                           80            30                    
        162 Clara                           80            40                    
        162 Clara                           80            50                    
        162 Clara                           80            60                    
        162 Clara                           80            70                    
        162 Clara                           80            80                    
        162 Clara                           80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        162 Clara                           80           100                    
        162 Clara                           80           110                    
        162 Clara                           80           120                    
        162 Clara                           80           130                    
        162 Clara                           80           140                    
        162 Clara                           80           150                    
        162 Clara                           80           160                    
        162 Clara                           80           170                    
        162 Clara                           80           180                    
        162 Clara                           80           190                    
        162 Clara                           80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        162 Clara                           80           210                    
        162 Clara                           80           220                    
        162 Clara                           80           230                    
        162 Clara                           80           240                    
        162 Clara                           80           250                    
        162 Clara                           80           260                    
        162 Clara                           80           270                    
        163 Danielle                        80            10                    
        163 Danielle                        80            20                    
        163 Danielle                        80            30                    
        163 Danielle                        80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80            50                    
        163 Danielle                        80            60                    
        163 Danielle                        80            70                    
        163 Danielle                        80            80                    
        163 Danielle                        80            90                    
        163 Danielle                        80           100                    
        163 Danielle                        80           110                    
        163 Danielle                        80           120                    
        163 Danielle                        80           130                    
        163 Danielle                        80           140                    
        163 Danielle                        80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80           160                    
        163 Danielle                        80           170                    
        163 Danielle                        80           180                    
        163 Danielle                        80           190                    
        163 Danielle                        80           200                    
        163 Danielle                        80           210                    
        163 Danielle                        80           220                    
        163 Danielle                        80           230                    
        163 Danielle                        80           240                    
        163 Danielle                        80           250                    
        163 Danielle                        80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80           270                    
        164 Mattea                          80            10                    
        164 Mattea                          80            20                    
        164 Mattea                          80            30                    
        164 Mattea                          80            40                    
        164 Mattea                          80            50                    
        164 Mattea                          80            60                    
        164 Mattea                          80            70                    
        164 Mattea                          80            80                    
        164 Mattea                          80            90                    
        164 Mattea                          80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        164 Mattea                          80           110                    
        164 Mattea                          80           120                    
        164 Mattea                          80           130                    
        164 Mattea                          80           140                    
        164 Mattea                          80           150                    
        164 Mattea                          80           160                    
        164 Mattea                          80           170                    
        164 Mattea                          80           180                    
        164 Mattea                          80           190                    
        164 Mattea                          80           200                    
        164 Mattea                          80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        164 Mattea                          80           220                    
        164 Mattea                          80           230                    
        164 Mattea                          80           240                    
        164 Mattea                          80           250                    
        164 Mattea                          80           260                    
        164 Mattea                          80           270                    
        165 David                           80            10                    
        165 David                           80            20                    
        165 David                           80            30                    
        165 David                           80            40                    
        165 David                           80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        165 David                           80            60                    
        165 David                           80            70                    
        165 David                           80            80                    
        165 David                           80            90                    
        165 David                           80           100                    
        165 David                           80           110                    
        165 David                           80           120                    
        165 David                           80           130                    
        165 David                           80           140                    
        165 David                           80           150                    
        165 David                           80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        165 David                           80           170                    
        165 David                           80           180                    
        165 David                           80           190                    
        165 David                           80           200                    
        165 David                           80           210                    
        165 David                           80           220                    
        165 David                           80           230                    
        165 David                           80           240                    
        165 David                           80           250                    
        165 David                           80           260                    
        165 David                           80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80            10                    
        166 Sundar                          80            20                    
        166 Sundar                          80            30                    
        166 Sundar                          80            40                    
        166 Sundar                          80            50                    
        166 Sundar                          80            60                    
        166 Sundar                          80            70                    
        166 Sundar                          80            80                    
        166 Sundar                          80            90                    
        166 Sundar                          80           100                    
        166 Sundar                          80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80           120                    
        166 Sundar                          80           130                    
        166 Sundar                          80           140                    
        166 Sundar                          80           150                    
        166 Sundar                          80           160                    
        166 Sundar                          80           170                    
        166 Sundar                          80           180                    
        166 Sundar                          80           190                    
        166 Sundar                          80           200                    
        166 Sundar                          80           210                    
        166 Sundar                          80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80           230                    
        166 Sundar                          80           240                    
        166 Sundar                          80           250                    
        166 Sundar                          80           260                    
        166 Sundar                          80           270                    
        167 Amit                            80            10                    
        167 Amit                            80            20                    
        167 Amit                            80            30                    
        167 Amit                            80            40                    
        167 Amit                            80            50                    
        167 Amit                            80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        167 Amit                            80            70                    
        167 Amit                            80            80                    
        167 Amit                            80            90                    
        167 Amit                            80           100                    
        167 Amit                            80           110                    
        167 Amit                            80           120                    
        167 Amit                            80           130                    
        167 Amit                            80           140                    
        167 Amit                            80           150                    
        167 Amit                            80           160                    
        167 Amit                            80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        167 Amit                            80           180                    
        167 Amit                            80           190                    
        167 Amit                            80           200                    
        167 Amit                            80           210                    
        167 Amit                            80           220                    
        167 Amit                            80           230                    
        167 Amit                            80           240                    
        167 Amit                            80           250                    
        167 Amit                            80           260                    
        167 Amit                            80           270                    
        168 Lisa                            80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80            20                    
        168 Lisa                            80            30                    
        168 Lisa                            80            40                    
        168 Lisa                            80            50                    
        168 Lisa                            80            60                    
        168 Lisa                            80            70                    
        168 Lisa                            80            80                    
        168 Lisa                            80            90                    
        168 Lisa                            80           100                    
        168 Lisa                            80           110                    
        168 Lisa                            80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80           130                    
        168 Lisa                            80           140                    
        168 Lisa                            80           150                    
        168 Lisa                            80           160                    
        168 Lisa                            80           170                    
        168 Lisa                            80           180                    
        168 Lisa                            80           190                    
        168 Lisa                            80           200                    
        168 Lisa                            80           210                    
        168 Lisa                            80           220                    
        168 Lisa                            80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80           240                    
        168 Lisa                            80           250                    
        168 Lisa                            80           260                    
        168 Lisa                            80           270                    
        169 Harrison                        80            10                    
        169 Harrison                        80            20                    
        169 Harrison                        80            30                    
        169 Harrison                        80            40                    
        169 Harrison                        80            50                    
        169 Harrison                        80            60                    
        169 Harrison                        80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        169 Harrison                        80            80                    
        169 Harrison                        80            90                    
        169 Harrison                        80           100                    
        169 Harrison                        80           110                    
        169 Harrison                        80           120                    
        169 Harrison                        80           130                    
        169 Harrison                        80           140                    
        169 Harrison                        80           150                    
        169 Harrison                        80           160                    
        169 Harrison                        80           170                    
        169 Harrison                        80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        169 Harrison                        80           190                    
        169 Harrison                        80           200                    
        169 Harrison                        80           210                    
        169 Harrison                        80           220                    
        169 Harrison                        80           230                    
        169 Harrison                        80           240                    
        169 Harrison                        80           250                    
        169 Harrison                        80           260                    
        169 Harrison                        80           270                    
        170 Tayler                          80            10                    
        170 Tayler                          80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80            30                    
        170 Tayler                          80            40                    
        170 Tayler                          80            50                    
        170 Tayler                          80            60                    
        170 Tayler                          80            70                    
        170 Tayler                          80            80                    
        170 Tayler                          80            90                    
        170 Tayler                          80           100                    
        170 Tayler                          80           110                    
        170 Tayler                          80           120                    
        170 Tayler                          80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80           140                    
        170 Tayler                          80           150                    
        170 Tayler                          80           160                    
        170 Tayler                          80           170                    
        170 Tayler                          80           180                    
        170 Tayler                          80           190                    
        170 Tayler                          80           200                    
        170 Tayler                          80           210                    
        170 Tayler                          80           220                    
        170 Tayler                          80           230                    
        170 Tayler                          80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80           250                    
        170 Tayler                          80           260                    
        170 Tayler                          80           270                    
        171 William                         80            10                    
        171 William                         80            20                    
        171 William                         80            30                    
        171 William                         80            40                    
        171 William                         80            50                    
        171 William                         80            60                    
        171 William                         80            70                    
        171 William                         80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        171 William                         80            90                    
        171 William                         80           100                    
        171 William                         80           110                    
        171 William                         80           120                    
        171 William                         80           130                    
        171 William                         80           140                    
        171 William                         80           150                    
        171 William                         80           160                    
        171 William                         80           170                    
        171 William                         80           180                    
        171 William                         80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        171 William                         80           200                    
        171 William                         80           210                    
        171 William                         80           220                    
        171 William                         80           230                    
        171 William                         80           240                    
        171 William                         80           250                    
        171 William                         80           260                    
        171 William                         80           270                    
        172 Elizabeth                       80            10                    
        172 Elizabeth                       80            20                    
        172 Elizabeth                       80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80            40                    
        172 Elizabeth                       80            50                    
        172 Elizabeth                       80            60                    
        172 Elizabeth                       80            70                    
        172 Elizabeth                       80            80                    
        172 Elizabeth                       80            90                    
        172 Elizabeth                       80           100                    
        172 Elizabeth                       80           110                    
        172 Elizabeth                       80           120                    
        172 Elizabeth                       80           130                    
        172 Elizabeth                       80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80           150                    
        172 Elizabeth                       80           160                    
        172 Elizabeth                       80           170                    
        172 Elizabeth                       80           180                    
        172 Elizabeth                       80           190                    
        172 Elizabeth                       80           200                    
        172 Elizabeth                       80           210                    
        172 Elizabeth                       80           220                    
        172 Elizabeth                       80           230                    
        172 Elizabeth                       80           240                    
        172 Elizabeth                       80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80           260                    
        172 Elizabeth                       80           270                    
        173 Sundita                         80            10                    
        173 Sundita                         80            20                    
        173 Sundita                         80            30                    
        173 Sundita                         80            40                    
        173 Sundita                         80            50                    
        173 Sundita                         80            60                    
        173 Sundita                         80            70                    
        173 Sundita                         80            80                    
        173 Sundita                         80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        173 Sundita                         80           100                    
        173 Sundita                         80           110                    
        173 Sundita                         80           120                    
        173 Sundita                         80           130                    
        173 Sundita                         80           140                    
        173 Sundita                         80           150                    
        173 Sundita                         80           160                    
        173 Sundita                         80           170                    
        173 Sundita                         80           180                    
        173 Sundita                         80           190                    
        173 Sundita                         80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        173 Sundita                         80           210                    
        173 Sundita                         80           220                    
        173 Sundita                         80           230                    
        173 Sundita                         80           240                    
        173 Sundita                         80           250                    
        173 Sundita                         80           260                    
        173 Sundita                         80           270                    
        174 Ellen                           80            10                    
        174 Ellen                           80            20                    
        174 Ellen                           80            30                    
        174 Ellen                           80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80            50                    
        174 Ellen                           80            60                    
        174 Ellen                           80            70                    
        174 Ellen                           80            80                    
        174 Ellen                           80            90                    
        174 Ellen                           80           100                    
        174 Ellen                           80           110                    
        174 Ellen                           80           120                    
        174 Ellen                           80           130                    
        174 Ellen                           80           140                    
        174 Ellen                           80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80           160                    
        174 Ellen                           80           170                    
        174 Ellen                           80           180                    
        174 Ellen                           80           190                    
        174 Ellen                           80           200                    
        174 Ellen                           80           210                    
        174 Ellen                           80           220                    
        174 Ellen                           80           230                    
        174 Ellen                           80           240                    
        174 Ellen                           80           250                    
        174 Ellen                           80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80           270                    
        175 Alyssa                          80            10                    
        175 Alyssa                          80            20                    
        175 Alyssa                          80            30                    
        175 Alyssa                          80            40                    
        175 Alyssa                          80            50                    
        175 Alyssa                          80            60                    
        175 Alyssa                          80            70                    
        175 Alyssa                          80            80                    
        175 Alyssa                          80            90                    
        175 Alyssa                          80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        175 Alyssa                          80           110                    
        175 Alyssa                          80           120                    
        175 Alyssa                          80           130                    
        175 Alyssa                          80           140                    
        175 Alyssa                          80           150                    
        175 Alyssa                          80           160                    
        175 Alyssa                          80           170                    
        175 Alyssa                          80           180                    
        175 Alyssa                          80           190                    
        175 Alyssa                          80           200                    
        175 Alyssa                          80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        175 Alyssa                          80           220                    
        175 Alyssa                          80           230                    
        175 Alyssa                          80           240                    
        175 Alyssa                          80           250                    
        175 Alyssa                          80           260                    
        175 Alyssa                          80           270                    
        176 Jonathon                        80            10                    
        176 Jonathon                        80            20                    
        176 Jonathon                        80            30                    
        176 Jonathon                        80            40                    
        176 Jonathon                        80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        176 Jonathon                        80            60                    
        176 Jonathon                        80            70                    
        176 Jonathon                        80            80                    
        176 Jonathon                        80            90                    
        176 Jonathon                        80           100                    
        176 Jonathon                        80           110                    
        176 Jonathon                        80           120                    
        176 Jonathon                        80           130                    
        176 Jonathon                        80           140                    
        176 Jonathon                        80           150                    
        176 Jonathon                        80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        176 Jonathon                        80           170                    
        176 Jonathon                        80           180                    
        176 Jonathon                        80           190                    
        176 Jonathon                        80           200                    
        176 Jonathon                        80           210                    
        176 Jonathon                        80           220                    
        176 Jonathon                        80           230                    
        176 Jonathon                        80           240                    
        176 Jonathon                        80           250                    
        176 Jonathon                        80           260                    
        176 Jonathon                        80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80            10                    
        177 Jack                            80            20                    
        177 Jack                            80            30                    
        177 Jack                            80            40                    
        177 Jack                            80            50                    
        177 Jack                            80            60                    
        177 Jack                            80            70                    
        177 Jack                            80            80                    
        177 Jack                            80            90                    
        177 Jack                            80           100                    
        177 Jack                            80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80           120                    
        177 Jack                            80           130                    
        177 Jack                            80           140                    
        177 Jack                            80           150                    
        177 Jack                            80           160                    
        177 Jack                            80           170                    
        177 Jack                            80           180                    
        177 Jack                            80           190                    
        177 Jack                            80           200                    
        177 Jack                            80           210                    
        177 Jack                            80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80           230                    
        177 Jack                            80           240                    
        177 Jack                            80           250                    
        177 Jack                            80           260                    
        177 Jack                            80           270                    
        178 Kimberely                                     10                    
        178 Kimberely                                     20                    
        178 Kimberely                                     30                    
        178 Kimberely                                     40                    
        178 Kimberely                                     50                    
        178 Kimberely                                     60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        178 Kimberely                                     70                    
        178 Kimberely                                     80                    
        178 Kimberely                                     90                    
        178 Kimberely                                    100                    
        178 Kimberely                                    110                    
        178 Kimberely                                    120                    
        178 Kimberely                                    130                    
        178 Kimberely                                    140                    
        178 Kimberely                                    150                    
        178 Kimberely                                    160                    
        178 Kimberely                                    170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        178 Kimberely                                    180                    
        178 Kimberely                                    190                    
        178 Kimberely                                    200                    
        178 Kimberely                                    210                    
        178 Kimberely                                    220                    
        178 Kimberely                                    230                    
        178 Kimberely                                    240                    
        178 Kimberely                                    250                    
        178 Kimberely                                    260                    
        178 Kimberely                                    270                    
        179 Charles                         80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80            20                    
        179 Charles                         80            30                    
        179 Charles                         80            40                    
        179 Charles                         80            50                    
        179 Charles                         80            60                    
        179 Charles                         80            70                    
        179 Charles                         80            80                    
        179 Charles                         80            90                    
        179 Charles                         80           100                    
        179 Charles                         80           110                    
        179 Charles                         80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80           130                    
        179 Charles                         80           140                    
        179 Charles                         80           150                    
        179 Charles                         80           160                    
        179 Charles                         80           170                    
        179 Charles                         80           180                    
        179 Charles                         80           190                    
        179 Charles                         80           200                    
        179 Charles                         80           210                    
        179 Charles                         80           220                    
        179 Charles                         80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80           240                    
        179 Charles                         80           250                    
        179 Charles                         80           260                    
        179 Charles                         80           270                    
        180 Winston                         50            10                    
        180 Winston                         50            20                    
        180 Winston                         50            30                    
        180 Winston                         50            40                    
        180 Winston                         50            50                    
        180 Winston                         50            60                    
        180 Winston                         50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        180 Winston                         50            80                    
        180 Winston                         50            90                    
        180 Winston                         50           100                    
        180 Winston                         50           110                    
        180 Winston                         50           120                    
        180 Winston                         50           130                    
        180 Winston                         50           140                    
        180 Winston                         50           150                    
        180 Winston                         50           160                    
        180 Winston                         50           170                    
        180 Winston                         50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        180 Winston                         50           190                    
        180 Winston                         50           200                    
        180 Winston                         50           210                    
        180 Winston                         50           220                    
        180 Winston                         50           230                    
        180 Winston                         50           240                    
        180 Winston                         50           250                    
        180 Winston                         50           260                    
        180 Winston                         50           270                    
        181 Jean                            50            10                    
        181 Jean                            50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50            30                    
        181 Jean                            50            40                    
        181 Jean                            50            50                    
        181 Jean                            50            60                    
        181 Jean                            50            70                    
        181 Jean                            50            80                    
        181 Jean                            50            90                    
        181 Jean                            50           100                    
        181 Jean                            50           110                    
        181 Jean                            50           120                    
        181 Jean                            50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50           140                    
        181 Jean                            50           150                    
        181 Jean                            50           160                    
        181 Jean                            50           170                    
        181 Jean                            50           180                    
        181 Jean                            50           190                    
        181 Jean                            50           200                    
        181 Jean                            50           210                    
        181 Jean                            50           220                    
        181 Jean                            50           230                    
        181 Jean                            50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50           250                    
        181 Jean                            50           260                    
        181 Jean                            50           270                    
        182 Martha                          50            10                    
        182 Martha                          50            20                    
        182 Martha                          50            30                    
        182 Martha                          50            40                    
        182 Martha                          50            50                    
        182 Martha                          50            60                    
        182 Martha                          50            70                    
        182 Martha                          50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        182 Martha                          50            90                    
        182 Martha                          50           100                    
        182 Martha                          50           110                    
        182 Martha                          50           120                    
        182 Martha                          50           130                    
        182 Martha                          50           140                    
        182 Martha                          50           150                    
        182 Martha                          50           160                    
        182 Martha                          50           170                    
        182 Martha                          50           180                    
        182 Martha                          50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        182 Martha                          50           200                    
        182 Martha                          50           210                    
        182 Martha                          50           220                    
        182 Martha                          50           230                    
        182 Martha                          50           240                    
        182 Martha                          50           250                    
        182 Martha                          50           260                    
        182 Martha                          50           270                    
        183 Girard                          50            10                    
        183 Girard                          50            20                    
        183 Girard                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50            40                    
        183 Girard                          50            50                    
        183 Girard                          50            60                    
        183 Girard                          50            70                    
        183 Girard                          50            80                    
        183 Girard                          50            90                    
        183 Girard                          50           100                    
        183 Girard                          50           110                    
        183 Girard                          50           120                    
        183 Girard                          50           130                    
        183 Girard                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50           150                    
        183 Girard                          50           160                    
        183 Girard                          50           170                    
        183 Girard                          50           180                    
        183 Girard                          50           190                    
        183 Girard                          50           200                    
        183 Girard                          50           210                    
        183 Girard                          50           220                    
        183 Girard                          50           230                    
        183 Girard                          50           240                    
        183 Girard                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50           260                    
        183 Girard                          50           270                    
        184 Nandita                         50            10                    
        184 Nandita                         50            20                    
        184 Nandita                         50            30                    
        184 Nandita                         50            40                    
        184 Nandita                         50            50                    
        184 Nandita                         50            60                    
        184 Nandita                         50            70                    
        184 Nandita                         50            80                    
        184 Nandita                         50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        184 Nandita                         50           100                    
        184 Nandita                         50           110                    
        184 Nandita                         50           120                    
        184 Nandita                         50           130                    
        184 Nandita                         50           140                    
        184 Nandita                         50           150                    
        184 Nandita                         50           160                    
        184 Nandita                         50           170                    
        184 Nandita                         50           180                    
        184 Nandita                         50           190                    
        184 Nandita                         50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        184 Nandita                         50           210                    
        184 Nandita                         50           220                    
        184 Nandita                         50           230                    
        184 Nandita                         50           240                    
        184 Nandita                         50           250                    
        184 Nandita                         50           260                    
        184 Nandita                         50           270                    
        185 Alexis                          50            10                    
        185 Alexis                          50            20                    
        185 Alexis                          50            30                    
        185 Alexis                          50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50            50                    
        185 Alexis                          50            60                    
        185 Alexis                          50            70                    
        185 Alexis                          50            80                    
        185 Alexis                          50            90                    
        185 Alexis                          50           100                    
        185 Alexis                          50           110                    
        185 Alexis                          50           120                    
        185 Alexis                          50           130                    
        185 Alexis                          50           140                    
        185 Alexis                          50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50           160                    
        185 Alexis                          50           170                    
        185 Alexis                          50           180                    
        185 Alexis                          50           190                    
        185 Alexis                          50           200                    
        185 Alexis                          50           210                    
        185 Alexis                          50           220                    
        185 Alexis                          50           230                    
        185 Alexis                          50           240                    
        185 Alexis                          50           250                    
        185 Alexis                          50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50           270                    
        186 Julia                           50            10                    
        186 Julia                           50            20                    
        186 Julia                           50            30                    
        186 Julia                           50            40                    
        186 Julia                           50            50                    
        186 Julia                           50            60                    
        186 Julia                           50            70                    
        186 Julia                           50            80                    
        186 Julia                           50            90                    
        186 Julia                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        186 Julia                           50           110                    
        186 Julia                           50           120                    
        186 Julia                           50           130                    
        186 Julia                           50           140                    
        186 Julia                           50           150                    
        186 Julia                           50           160                    
        186 Julia                           50           170                    
        186 Julia                           50           180                    
        186 Julia                           50           190                    
        186 Julia                           50           200                    
        186 Julia                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        186 Julia                           50           220                    
        186 Julia                           50           230                    
        186 Julia                           50           240                    
        186 Julia                           50           250                    
        186 Julia                           50           260                    
        186 Julia                           50           270                    
        187 Anthony                         50            10                    
        187 Anthony                         50            20                    
        187 Anthony                         50            30                    
        187 Anthony                         50            40                    
        187 Anthony                         50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        187 Anthony                         50            60                    
        187 Anthony                         50            70                    
        187 Anthony                         50            80                    
        187 Anthony                         50            90                    
        187 Anthony                         50           100                    
        187 Anthony                         50           110                    
        187 Anthony                         50           120                    
        187 Anthony                         50           130                    
        187 Anthony                         50           140                    
        187 Anthony                         50           150                    
        187 Anthony                         50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        187 Anthony                         50           170                    
        187 Anthony                         50           180                    
        187 Anthony                         50           190                    
        187 Anthony                         50           200                    
        187 Anthony                         50           210                    
        187 Anthony                         50           220                    
        187 Anthony                         50           230                    
        187 Anthony                         50           240                    
        187 Anthony                         50           250                    
        187 Anthony                         50           260                    
        187 Anthony                         50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50            10                    
        188 Kelly                           50            20                    
        188 Kelly                           50            30                    
        188 Kelly                           50            40                    
        188 Kelly                           50            50                    
        188 Kelly                           50            60                    
        188 Kelly                           50            70                    
        188 Kelly                           50            80                    
        188 Kelly                           50            90                    
        188 Kelly                           50           100                    
        188 Kelly                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50           120                    
        188 Kelly                           50           130                    
        188 Kelly                           50           140                    
        188 Kelly                           50           150                    
        188 Kelly                           50           160                    
        188 Kelly                           50           170                    
        188 Kelly                           50           180                    
        188 Kelly                           50           190                    
        188 Kelly                           50           200                    
        188 Kelly                           50           210                    
        188 Kelly                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50           230                    
        188 Kelly                           50           240                    
        188 Kelly                           50           250                    
        188 Kelly                           50           260                    
        188 Kelly                           50           270                    
        189 Jennifer                        50            10                    
        189 Jennifer                        50            20                    
        189 Jennifer                        50            30                    
        189 Jennifer                        50            40                    
        189 Jennifer                        50            50                    
        189 Jennifer                        50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        189 Jennifer                        50            70                    
        189 Jennifer                        50            80                    
        189 Jennifer                        50            90                    
        189 Jennifer                        50           100                    
        189 Jennifer                        50           110                    
        189 Jennifer                        50           120                    
        189 Jennifer                        50           130                    
        189 Jennifer                        50           140                    
        189 Jennifer                        50           150                    
        189 Jennifer                        50           160                    
        189 Jennifer                        50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        189 Jennifer                        50           180                    
        189 Jennifer                        50           190                    
        189 Jennifer                        50           200                    
        189 Jennifer                        50           210                    
        189 Jennifer                        50           220                    
        189 Jennifer                        50           230                    
        189 Jennifer                        50           240                    
        189 Jennifer                        50           250                    
        189 Jennifer                        50           260                    
        189 Jennifer                        50           270                    
        190 Timothy                         50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50            20                    
        190 Timothy                         50            30                    
        190 Timothy                         50            40                    
        190 Timothy                         50            50                    
        190 Timothy                         50            60                    
        190 Timothy                         50            70                    
        190 Timothy                         50            80                    
        190 Timothy                         50            90                    
        190 Timothy                         50           100                    
        190 Timothy                         50           110                    
        190 Timothy                         50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50           130                    
        190 Timothy                         50           140                    
        190 Timothy                         50           150                    
        190 Timothy                         50           160                    
        190 Timothy                         50           170                    
        190 Timothy                         50           180                    
        190 Timothy                         50           190                    
        190 Timothy                         50           200                    
        190 Timothy                         50           210                    
        190 Timothy                         50           220                    
        190 Timothy                         50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50           240                    
        190 Timothy                         50           250                    
        190 Timothy                         50           260                    
        190 Timothy                         50           270                    
        191 Randall                         50            10                    
        191 Randall                         50            20                    
        191 Randall                         50            30                    
        191 Randall                         50            40                    
        191 Randall                         50            50                    
        191 Randall                         50            60                    
        191 Randall                         50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        191 Randall                         50            80                    
        191 Randall                         50            90                    
        191 Randall                         50           100                    
        191 Randall                         50           110                    
        191 Randall                         50           120                    
        191 Randall                         50           130                    
        191 Randall                         50           140                    
        191 Randall                         50           150                    
        191 Randall                         50           160                    
        191 Randall                         50           170                    
        191 Randall                         50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        191 Randall                         50           190                    
        191 Randall                         50           200                    
        191 Randall                         50           210                    
        191 Randall                         50           220                    
        191 Randall                         50           230                    
        191 Randall                         50           240                    
        191 Randall                         50           250                    
        191 Randall                         50           260                    
        191 Randall                         50           270                    
        192 Sarah                           50            10                    
        192 Sarah                           50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50            30                    
        192 Sarah                           50            40                    
        192 Sarah                           50            50                    
        192 Sarah                           50            60                    
        192 Sarah                           50            70                    
        192 Sarah                           50            80                    
        192 Sarah                           50            90                    
        192 Sarah                           50           100                    
        192 Sarah                           50           110                    
        192 Sarah                           50           120                    
        192 Sarah                           50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50           140                    
        192 Sarah                           50           150                    
        192 Sarah                           50           160                    
        192 Sarah                           50           170                    
        192 Sarah                           50           180                    
        192 Sarah                           50           190                    
        192 Sarah                           50           200                    
        192 Sarah                           50           210                    
        192 Sarah                           50           220                    
        192 Sarah                           50           230                    
        192 Sarah                           50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50           250                    
        192 Sarah                           50           260                    
        192 Sarah                           50           270                    
        193 Britney                         50            10                    
        193 Britney                         50            20                    
        193 Britney                         50            30                    
        193 Britney                         50            40                    
        193 Britney                         50            50                    
        193 Britney                         50            60                    
        193 Britney                         50            70                    
        193 Britney                         50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        193 Britney                         50            90                    
        193 Britney                         50           100                    
        193 Britney                         50           110                    
        193 Britney                         50           120                    
        193 Britney                         50           130                    
        193 Britney                         50           140                    
        193 Britney                         50           150                    
        193 Britney                         50           160                    
        193 Britney                         50           170                    
        193 Britney                         50           180                    
        193 Britney                         50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        193 Britney                         50           200                    
        193 Britney                         50           210                    
        193 Britney                         50           220                    
        193 Britney                         50           230                    
        193 Britney                         50           240                    
        193 Britney                         50           250                    
        193 Britney                         50           260                    
        193 Britney                         50           270                    
        194 Samuel                          50            10                    
        194 Samuel                          50            20                    
        194 Samuel                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50            40                    
        194 Samuel                          50            50                    
        194 Samuel                          50            60                    
        194 Samuel                          50            70                    
        194 Samuel                          50            80                    
        194 Samuel                          50            90                    
        194 Samuel                          50           100                    
        194 Samuel                          50           110                    
        194 Samuel                          50           120                    
        194 Samuel                          50           130                    
        194 Samuel                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50           150                    
        194 Samuel                          50           160                    
        194 Samuel                          50           170                    
        194 Samuel                          50           180                    
        194 Samuel                          50           190                    
        194 Samuel                          50           200                    
        194 Samuel                          50           210                    
        194 Samuel                          50           220                    
        194 Samuel                          50           230                    
        194 Samuel                          50           240                    
        194 Samuel                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50           260                    
        194 Samuel                          50           270                    
        195 Vance                           50            10                    
        195 Vance                           50            20                    
        195 Vance                           50            30                    
        195 Vance                           50            40                    
        195 Vance                           50            50                    
        195 Vance                           50            60                    
        195 Vance                           50            70                    
        195 Vance                           50            80                    
        195 Vance                           50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        195 Vance                           50           100                    
        195 Vance                           50           110                    
        195 Vance                           50           120                    
        195 Vance                           50           130                    
        195 Vance                           50           140                    
        195 Vance                           50           150                    
        195 Vance                           50           160                    
        195 Vance                           50           170                    
        195 Vance                           50           180                    
        195 Vance                           50           190                    
        195 Vance                           50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        195 Vance                           50           210                    
        195 Vance                           50           220                    
        195 Vance                           50           230                    
        195 Vance                           50           240                    
        195 Vance                           50           250                    
        195 Vance                           50           260                    
        195 Vance                           50           270                    
        196 Alana                           50            10                    
        196 Alana                           50            20                    
        196 Alana                           50            30                    
        196 Alana                           50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50            50                    
        196 Alana                           50            60                    
        196 Alana                           50            70                    
        196 Alana                           50            80                    
        196 Alana                           50            90                    
        196 Alana                           50           100                    
        196 Alana                           50           110                    
        196 Alana                           50           120                    
        196 Alana                           50           130                    
        196 Alana                           50           140                    
        196 Alana                           50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50           160                    
        196 Alana                           50           170                    
        196 Alana                           50           180                    
        196 Alana                           50           190                    
        196 Alana                           50           200                    
        196 Alana                           50           210                    
        196 Alana                           50           220                    
        196 Alana                           50           230                    
        196 Alana                           50           240                    
        196 Alana                           50           250                    
        196 Alana                           50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50           270                    
        197 Kevin                           50            10                    
        197 Kevin                           50            20                    
        197 Kevin                           50            30                    
        197 Kevin                           50            40                    
        197 Kevin                           50            50                    
        197 Kevin                           50            60                    
        197 Kevin                           50            70                    
        197 Kevin                           50            80                    
        197 Kevin                           50            90                    
        197 Kevin                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        197 Kevin                           50           110                    
        197 Kevin                           50           120                    
        197 Kevin                           50           130                    
        197 Kevin                           50           140                    
        197 Kevin                           50           150                    
        197 Kevin                           50           160                    
        197 Kevin                           50           170                    
        197 Kevin                           50           180                    
        197 Kevin                           50           190                    
        197 Kevin                           50           200                    
        197 Kevin                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        197 Kevin                           50           220                    
        197 Kevin                           50           230                    
        197 Kevin                           50           240                    
        197 Kevin                           50           250                    
        197 Kevin                           50           260                    
        197 Kevin                           50           270                    
        198 Donald                          50            10                    
        198 Donald                          50            20                    
        198 Donald                          50            30                    
        198 Donald                          50            40                    
        198 Donald                          50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        198 Donald                          50            60                    
        198 Donald                          50            70                    
        198 Donald                          50            80                    
        198 Donald                          50            90                    
        198 Donald                          50           100                    
        198 Donald                          50           110                    
        198 Donald                          50           120                    
        198 Donald                          50           130                    
        198 Donald                          50           140                    
        198 Donald                          50           150                    
        198 Donald                          50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        198 Donald                          50           170                    
        198 Donald                          50           180                    
        198 Donald                          50           190                    
        198 Donald                          50           200                    
        198 Donald                          50           210                    
        198 Donald                          50           220                    
        198 Donald                          50           230                    
        198 Donald                          50           240                    
        198 Donald                          50           250                    
        198 Donald                          50           260                    
        198 Donald                          50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50            10                    
        199 Douglas                         50            20                    
        199 Douglas                         50            30                    
        199 Douglas                         50            40                    
        199 Douglas                         50            50                    
        199 Douglas                         50            60                    
        199 Douglas                         50            70                    
        199 Douglas                         50            80                    
        199 Douglas                         50            90                    
        199 Douglas                         50           100                    
        199 Douglas                         50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50           120                    
        199 Douglas                         50           130                    
        199 Douglas                         50           140                    
        199 Douglas                         50           150                    
        199 Douglas                         50           160                    
        199 Douglas                         50           170                    
        199 Douglas                         50           180                    
        199 Douglas                         50           190                    
        199 Douglas                         50           200                    
        199 Douglas                         50           210                    
        199 Douglas                         50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50           230                    
        199 Douglas                         50           240                    
        199 Douglas                         50           250                    
        199 Douglas                         50           260                    
        199 Douglas                         50           270                    
        200 Jennifer                        10            10                    
        200 Jennifer                        10            20                    
        200 Jennifer                        10            30                    
        200 Jennifer                        10            40                    
        200 Jennifer                        10            50                    
        200 Jennifer                        10            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        200 Jennifer                        10            70                    
        200 Jennifer                        10            80                    
        200 Jennifer                        10            90                    
        200 Jennifer                        10           100                    
        200 Jennifer                        10           110                    
        200 Jennifer                        10           120                    
        200 Jennifer                        10           130                    
        200 Jennifer                        10           140                    
        200 Jennifer                        10           150                    
        200 Jennifer                        10           160                    
        200 Jennifer                        10           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        200 Jennifer                        10           180                    
        200 Jennifer                        10           190                    
        200 Jennifer                        10           200                    
        200 Jennifer                        10           210                    
        200 Jennifer                        10           220                    
        200 Jennifer                        10           230                    
        200 Jennifer                        10           240                    
        200 Jennifer                        10           250                    
        200 Jennifer                        10           260                    
        200 Jennifer                        10           270                    
        201 Michael                         20            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20            20                    
        201 Michael                         20            30                    
        201 Michael                         20            40                    
        201 Michael                         20            50                    
        201 Michael                         20            60                    
        201 Michael                         20            70                    
        201 Michael                         20            80                    
        201 Michael                         20            90                    
        201 Michael                         20           100                    
        201 Michael                         20           110                    
        201 Michael                         20           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20           130                    
        201 Michael                         20           140                    
        201 Michael                         20           150                    
        201 Michael                         20           160                    
        201 Michael                         20           170                    
        201 Michael                         20           180                    
        201 Michael                         20           190                    
        201 Michael                         20           200                    
        201 Michael                         20           210                    
        201 Michael                         20           220                    
        201 Michael                         20           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20           240                    
        201 Michael                         20           250                    
        201 Michael                         20           260                    
        201 Michael                         20           270                    
        202 Pat                             20            10                    
        202 Pat                             20            20                    
        202 Pat                             20            30                    
        202 Pat                             20            40                    
        202 Pat                             20            50                    
        202 Pat                             20            60                    
        202 Pat                             20            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        202 Pat                             20            80                    
        202 Pat                             20            90                    
        202 Pat                             20           100                    
        202 Pat                             20           110                    
        202 Pat                             20           120                    
        202 Pat                             20           130                    
        202 Pat                             20           140                    
        202 Pat                             20           150                    
        202 Pat                             20           160                    
        202 Pat                             20           170                    
        202 Pat                             20           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        202 Pat                             20           190                    
        202 Pat                             20           200                    
        202 Pat                             20           210                    
        202 Pat                             20           220                    
        202 Pat                             20           230                    
        202 Pat                             20           240                    
        202 Pat                             20           250                    
        202 Pat                             20           260                    
        202 Pat                             20           270                    
        203 Susan                           40            10                    
        203 Susan                           40            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40            30                    
        203 Susan                           40            40                    
        203 Susan                           40            50                    
        203 Susan                           40            60                    
        203 Susan                           40            70                    
        203 Susan                           40            80                    
        203 Susan                           40            90                    
        203 Susan                           40           100                    
        203 Susan                           40           110                    
        203 Susan                           40           120                    
        203 Susan                           40           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40           140                    
        203 Susan                           40           150                    
        203 Susan                           40           160                    
        203 Susan                           40           170                    
        203 Susan                           40           180                    
        203 Susan                           40           190                    
        203 Susan                           40           200                    
        203 Susan                           40           210                    
        203 Susan                           40           220                    
        203 Susan                           40           230                    
        203 Susan                           40           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40           250                    
        203 Susan                           40           260                    
        203 Susan                           40           270                    
        204 Hermann                         70            10                    
        204 Hermann                         70            20                    
        204 Hermann                         70            30                    
        204 Hermann                         70            40                    
        204 Hermann                         70            50                    
        204 Hermann                         70            60                    
        204 Hermann                         70            70                    
        204 Hermann                         70            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        204 Hermann                         70            90                    
        204 Hermann                         70           100                    
        204 Hermann                         70           110                    
        204 Hermann                         70           120                    
        204 Hermann                         70           130                    
        204 Hermann                         70           140                    
        204 Hermann                         70           150                    
        204 Hermann                         70           160                    
        204 Hermann                         70           170                    
        204 Hermann                         70           180                    
        204 Hermann                         70           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        204 Hermann                         70           200                    
        204 Hermann                         70           210                    
        204 Hermann                         70           220                    
        204 Hermann                         70           230                    
        204 Hermann                         70           240                    
        204 Hermann                         70           250                    
        204 Hermann                         70           260                    
        204 Hermann                         70           270                    
        205 Shelley                        110            10                    
        205 Shelley                        110            20                    
        205 Shelley                        110            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110            40                    
        205 Shelley                        110            50                    
        205 Shelley                        110            60                    
        205 Shelley                        110            70                    
        205 Shelley                        110            80                    
        205 Shelley                        110            90                    
        205 Shelley                        110           100                    
        205 Shelley                        110           110                    
        205 Shelley                        110           120                    
        205 Shelley                        110           130                    
        205 Shelley                        110           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110           150                    
        205 Shelley                        110           160                    
        205 Shelley                        110           170                    
        205 Shelley                        110           180                    
        205 Shelley                        110           190                    
        205 Shelley                        110           200                    
        205 Shelley                        110           210                    
        205 Shelley                        110           220                    
        205 Shelley                        110           230                    
        205 Shelley                        110           240                    
        205 Shelley                        110           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110           260                    
        205 Shelley                        110           270                    
        206 William                        110            10                    
        206 William                        110            20                    
        206 William                        110            30                    
        206 William                        110            40                    
        206 William                        110            50                    
        206 William                        110            60                    
        206 William                        110            70                    
        206 William                        110            80                    
        206 William                        110            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        206 William                        110           100                    
        206 William                        110           110                    
        206 William                        110           120                    
        206 William                        110           130                    
        206 William                        110           140                    
        206 William                        110           150                    
        206 William                        110           160                    
        206 William                        110           170                    
        206 William                        110           180                    
        206 William                        110           190                    
        206 William                        110           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        206 William                        110           210                    
        206 William                        110           220                    
        206 William                        110           230                    
        206 William                        110           240                    
        206 William                        110           250                    
        206 William                        110           260                    
        206 William                        110           270                    
        207 Jack                            10            10                    
        207 Jack                            10            20                    
        207 Jack                            10            30                    
        207 Jack                            10            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10            50                    
        207 Jack                            10            60                    
        207 Jack                            10            70                    
        207 Jack                            10            80                    
        207 Jack                            10            90                    
        207 Jack                            10           100                    
        207 Jack                            10           110                    
        207 Jack                            10           120                    
        207 Jack                            10           130                    
        207 Jack                            10           140                    
        207 Jack                            10           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10           160                    
        207 Jack                            10           170                    
        207 Jack                            10           180                    
        207 Jack                            10           190                    
        207 Jack                            10           200                    
        207 Jack                            10           210                    
        207 Jack                            10           220                    
        207 Jack                            10           230                    
        207 Jack                            10           240                    
        207 Jack                            10           250                    
        207 Jack                            10           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10           270                    
        208 Ana                             20            10                    
        208 Ana                             20            20                    
        208 Ana                             20            30                    
        208 Ana                             20            40                    
        208 Ana                             20            50                    
        208 Ana                             20            60                    
        208 Ana                             20            70                    
        208 Ana                             20            80                    
        208 Ana                             20            90                    
        208 Ana                             20           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        208 Ana                             20           110                    
        208 Ana                             20           120                    
        208 Ana                             20           130                    
        208 Ana                             20           140                    
        208 Ana                             20           150                    
        208 Ana                             20           160                    
        208 Ana                             20           170                    
        208 Ana                             20           180                    
        208 Ana                             20           190                    
        208 Ana                             20           200                    
        208 Ana                             20           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        208 Ana                             20           220                    
        208 Ana                             20           230                    
        208 Ana                             20           240                    
        208 Ana                             20           250                    
        208 Ana                             20           260                    
        208 Ana                             20           270                    

2943 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1* select employee_id,first_name,employees.department_id, departments.department_id from employees,departments
SQL> /

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90            10                    
        100 Steven                          90            20                    
        100 Steven                          90            30                    
        100 Steven                          90            40                    
        100 Steven                          90            50                    
        100 Steven                          90            60                    
        100 Steven                          90            70                    
        100 Steven                          90            80                    
        100 Steven                          90            90                    
        100 Steven                          90           100                    
        100 Steven                          90           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90           120                    
        100 Steven                          90           130                    
        100 Steven                          90           140                    
        100 Steven                          90           150                    
        100 Steven                          90           160                    
        100 Steven                          90           170                    
        100 Steven                          90           180                    
        100 Steven                          90           190                    
        100 Steven                          90           200                    
        100 Steven                          90           210                    
        100 Steven                          90           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        100 Steven                          90           230                    
        100 Steven                          90           240                    
        100 Steven                          90           250                    
        100 Steven                          90           260                    
        100 Steven                          90           270                    
        101 Neena                           90            10                    
        101 Neena                           90            20                    
        101 Neena                           90            30                    
        101 Neena                           90            40                    
        101 Neena                           90            50                    
        101 Neena                           90            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        101 Neena                           90            70                    
        101 Neena                           90            80                    
        101 Neena                           90            90                    
        101 Neena                           90           100                    
        101 Neena                           90           110                    
        101 Neena                           90           120                    
        101 Neena                           90           130                    
        101 Neena                           90           140                    
        101 Neena                           90           150                    
        101 Neena                           90           160                    
        101 Neena                           90           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        101 Neena                           90           180                    
        101 Neena                           90           190                    
        101 Neena                           90           200                    
        101 Neena                           90           210                    
        101 Neena                           90           220                    
        101 Neena                           90           230                    
        101 Neena                           90           240                    
        101 Neena                           90           250                    
        101 Neena                           90           260                    
        101 Neena                           90           270                    
        102 Lex                             90            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90            20                    
        102 Lex                             90            30                    
        102 Lex                             90            40                    
        102 Lex                             90            50                    
        102 Lex                             90            60                    
        102 Lex                             90            70                    
        102 Lex                             90            80                    
        102 Lex                             90            90                    
        102 Lex                             90           100                    
        102 Lex                             90           110                    
        102 Lex                             90           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90           130                    
        102 Lex                             90           140                    
        102 Lex                             90           150                    
        102 Lex                             90           160                    
        102 Lex                             90           170                    
        102 Lex                             90           180                    
        102 Lex                             90           190                    
        102 Lex                             90           200                    
        102 Lex                             90           210                    
        102 Lex                             90           220                    
        102 Lex                             90           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        102 Lex                             90           240                    
        102 Lex                             90           250                    
        102 Lex                             90           260                    
        102 Lex                             90           270                    
        103 Alexander                       60            10                    
        103 Alexander                       60            20                    
        103 Alexander                       60            30                    
        103 Alexander                       60            40                    
        103 Alexander                       60            50                    
        103 Alexander                       60            60                    
        103 Alexander                       60            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        103 Alexander                       60            80                    
        103 Alexander                       60            90                    
        103 Alexander                       60           100                    
        103 Alexander                       60           110                    
        103 Alexander                       60           120                    
        103 Alexander                       60           130                    
        103 Alexander                       60           140                    
        103 Alexander                       60           150                    
        103 Alexander                       60           160                    
        103 Alexander                       60           170                    
        103 Alexander                       60           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        103 Alexander                       60           190                    
        103 Alexander                       60           200                    
        103 Alexander                       60           210                    
        103 Alexander                       60           220                    
        103 Alexander                       60           230                    
        103 Alexander                       60           240                    
        103 Alexander                       60           250                    
        103 Alexander                       60           260                    
        103 Alexander                       60           270                    
        104 Bruce                           60            10                    
        104 Bruce                           60            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60            30                    
        104 Bruce                           60            40                    
        104 Bruce                           60            50                    
        104 Bruce                           60            60                    
        104 Bruce                           60            70                    
        104 Bruce                           60            80                    
        104 Bruce                           60            90                    
        104 Bruce                           60           100                    
        104 Bruce                           60           110                    
        104 Bruce                           60           120                    
        104 Bruce                           60           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60           140                    
        104 Bruce                           60           150                    
        104 Bruce                           60           160                    
        104 Bruce                           60           170                    
        104 Bruce                           60           180                    
        104 Bruce                           60           190                    
        104 Bruce                           60           200                    
        104 Bruce                           60           210                    
        104 Bruce                           60           220                    
        104 Bruce                           60           230                    
        104 Bruce                           60           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        104 Bruce                           60           250                    
        104 Bruce                           60           260                    
        104 Bruce                           60           270                    
        105 David                           60            10                    
        105 David                           60            20                    
        105 David                           60            30                    
        105 David                           60            40                    
        105 David                           60            50                    
        105 David                           60            60                    
        105 David                           60            70                    
        105 David                           60            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        105 David                           60            90                    
        105 David                           60           100                    
        105 David                           60           110                    
        105 David                           60           120                    
        105 David                           60           130                    
        105 David                           60           140                    
        105 David                           60           150                    
        105 David                           60           160                    
        105 David                           60           170                    
        105 David                           60           180                    
        105 David                           60           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        105 David                           60           200                    
        105 David                           60           210                    
        105 David                           60           220                    
        105 David                           60           230                    
        105 David                           60           240                    
        105 David                           60           250                    
        105 David                           60           260                    
        105 David                           60           270                    
        106 Valli                           60            10                    
        106 Valli                           60            20                    
        106 Valli                           60            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60            40                    
        106 Valli                           60            50                    
        106 Valli                           60            60                    
        106 Valli                           60            70                    
        106 Valli                           60            80                    
        106 Valli                           60            90                    
        106 Valli                           60           100                    
        106 Valli                           60           110                    
        106 Valli                           60           120                    
        106 Valli                           60           130                    
        106 Valli                           60           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60           150                    
        106 Valli                           60           160                    
        106 Valli                           60           170                    
        106 Valli                           60           180                    
        106 Valli                           60           190                    
        106 Valli                           60           200                    
        106 Valli                           60           210                    
        106 Valli                           60           220                    
        106 Valli                           60           230                    
        106 Valli                           60           240                    
        106 Valli                           60           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        106 Valli                           60           260                    
        106 Valli                           60           270                    
        107 Diana                           60            10                    
        107 Diana                           60            20                    
        107 Diana                           60            30                    
        107 Diana                           60            40                    
        107 Diana                           60            50                    
        107 Diana                           60            60                    
        107 Diana                           60            70                    
        107 Diana                           60            80                    
        107 Diana                           60            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        107 Diana                           60           100                    
        107 Diana                           60           110                    
        107 Diana                           60           120                    
        107 Diana                           60           130                    
        107 Diana                           60           140                    
        107 Diana                           60           150                    
        107 Diana                           60           160                    
        107 Diana                           60           170                    
        107 Diana                           60           180                    
        107 Diana                           60           190                    
        107 Diana                           60           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        107 Diana                           60           210                    
        107 Diana                           60           220                    
        107 Diana                           60           230                    
        107 Diana                           60           240                    
        107 Diana                           60           250                    
        107 Diana                           60           260                    
        107 Diana                           60           270                    
        108 Nancy                          100            10                    
        108 Nancy                          100            20                    
        108 Nancy                          100            30                    
        108 Nancy                          100            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100            50                    
        108 Nancy                          100            60                    
        108 Nancy                          100            70                    
        108 Nancy                          100            80                    
        108 Nancy                          100            90                    
        108 Nancy                          100           100                    
        108 Nancy                          100           110                    
        108 Nancy                          100           120                    
        108 Nancy                          100           130                    
        108 Nancy                          100           140                    
        108 Nancy                          100           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100           160                    
        108 Nancy                          100           170                    
        108 Nancy                          100           180                    
        108 Nancy                          100           190                    
        108 Nancy                          100           200                    
        108 Nancy                          100           210                    
        108 Nancy                          100           220                    
        108 Nancy                          100           230                    
        108 Nancy                          100           240                    
        108 Nancy                          100           250                    
        108 Nancy                          100           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        108 Nancy                          100           270                    
        109 Daniel                         100            10                    
        109 Daniel                         100            20                    
        109 Daniel                         100            30                    
        109 Daniel                         100            40                    
        109 Daniel                         100            50                    
        109 Daniel                         100            60                    
        109 Daniel                         100            70                    
        109 Daniel                         100            80                    
        109 Daniel                         100            90                    
        109 Daniel                         100           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        109 Daniel                         100           110                    
        109 Daniel                         100           120                    
        109 Daniel                         100           130                    
        109 Daniel                         100           140                    
        109 Daniel                         100           150                    
        109 Daniel                         100           160                    
        109 Daniel                         100           170                    
        109 Daniel                         100           180                    
        109 Daniel                         100           190                    
        109 Daniel                         100           200                    
        109 Daniel                         100           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        109 Daniel                         100           220                    
        109 Daniel                         100           230                    
        109 Daniel                         100           240                    
        109 Daniel                         100           250                    
        109 Daniel                         100           260                    
        109 Daniel                         100           270                    
        110 John                           100            10                    
        110 John                           100            20                    
        110 John                           100            30                    
        110 John                           100            40                    
        110 John                           100            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        110 John                           100            60                    
        110 John                           100            70                    
        110 John                           100            80                    
        110 John                           100            90                    
        110 John                           100           100                    
        110 John                           100           110                    
        110 John                           100           120                    
        110 John                           100           130                    
        110 John                           100           140                    
        110 John                           100           150                    
        110 John                           100           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        110 John                           100           170                    
        110 John                           100           180                    
        110 John                           100           190                    
        110 John                           100           200                    
        110 John                           100           210                    
        110 John                           100           220                    
        110 John                           100           230                    
        110 John                           100           240                    
        110 John                           100           250                    
        110 John                           100           260                    
        110 John                           100           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100            10                    
        111 Ismael                         100            20                    
        111 Ismael                         100            30                    
        111 Ismael                         100            40                    
        111 Ismael                         100            50                    
        111 Ismael                         100            60                    
        111 Ismael                         100            70                    
        111 Ismael                         100            80                    
        111 Ismael                         100            90                    
        111 Ismael                         100           100                    
        111 Ismael                         100           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100           120                    
        111 Ismael                         100           130                    
        111 Ismael                         100           140                    
        111 Ismael                         100           150                    
        111 Ismael                         100           160                    
        111 Ismael                         100           170                    
        111 Ismael                         100           180                    
        111 Ismael                         100           190                    
        111 Ismael                         100           200                    
        111 Ismael                         100           210                    
        111 Ismael                         100           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        111 Ismael                         100           230                    
        111 Ismael                         100           240                    
        111 Ismael                         100           250                    
        111 Ismael                         100           260                    
        111 Ismael                         100           270                    
        112 Jose Manuel                    100            10                    
        112 Jose Manuel                    100            20                    
        112 Jose Manuel                    100            30                    
        112 Jose Manuel                    100            40                    
        112 Jose Manuel                    100            50                    
        112 Jose Manuel                    100            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        112 Jose Manuel                    100            70                    
        112 Jose Manuel                    100            80                    
        112 Jose Manuel                    100            90                    
        112 Jose Manuel                    100           100                    
        112 Jose Manuel                    100           110                    
        112 Jose Manuel                    100           120                    
        112 Jose Manuel                    100           130                    
        112 Jose Manuel                    100           140                    
        112 Jose Manuel                    100           150                    
        112 Jose Manuel                    100           160                    
        112 Jose Manuel                    100           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        112 Jose Manuel                    100           180                    
        112 Jose Manuel                    100           190                    
        112 Jose Manuel                    100           200                    
        112 Jose Manuel                    100           210                    
        112 Jose Manuel                    100           220                    
        112 Jose Manuel                    100           230                    
        112 Jose Manuel                    100           240                    
        112 Jose Manuel                    100           250                    
        112 Jose Manuel                    100           260                    
        112 Jose Manuel                    100           270                    
        113 Luis                           100            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100            20                    
        113 Luis                           100            30                    
        113 Luis                           100            40                    
        113 Luis                           100            50                    
        113 Luis                           100            60                    
        113 Luis                           100            70                    
        113 Luis                           100            80                    
        113 Luis                           100            90                    
        113 Luis                           100           100                    
        113 Luis                           100           110                    
        113 Luis                           100           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100           130                    
        113 Luis                           100           140                    
        113 Luis                           100           150                    
        113 Luis                           100           160                    
        113 Luis                           100           170                    
        113 Luis                           100           180                    
        113 Luis                           100           190                    
        113 Luis                           100           200                    
        113 Luis                           100           210                    
        113 Luis                           100           220                    
        113 Luis                           100           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        113 Luis                           100           240                    
        113 Luis                           100           250                    
        113 Luis                           100           260                    
        113 Luis                           100           270                    
        114 Den                             30            10                    
        114 Den                             30            20                    
        114 Den                             30            30                    
        114 Den                             30            40                    
        114 Den                             30            50                    
        114 Den                             30            60                    
        114 Den                             30            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        114 Den                             30            80                    
        114 Den                             30            90                    
        114 Den                             30           100                    
        114 Den                             30           110                    
        114 Den                             30           120                    
        114 Den                             30           130                    
        114 Den                             30           140                    
        114 Den                             30           150                    
        114 Den                             30           160                    
        114 Den                             30           170                    
        114 Den                             30           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        114 Den                             30           190                    
        114 Den                             30           200                    
        114 Den                             30           210                    
        114 Den                             30           220                    
        114 Den                             30           230                    
        114 Den                             30           240                    
        114 Den                             30           250                    
        114 Den                             30           260                    
        114 Den                             30           270                    
        115 Alexander                       30            10                    
        115 Alexander                       30            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30            30                    
        115 Alexander                       30            40                    
        115 Alexander                       30            50                    
        115 Alexander                       30            60                    
        115 Alexander                       30            70                    
        115 Alexander                       30            80                    
        115 Alexander                       30            90                    
        115 Alexander                       30           100                    
        115 Alexander                       30           110                    
        115 Alexander                       30           120                    
        115 Alexander                       30           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30           140                    
        115 Alexander                       30           150                    
        115 Alexander                       30           160                    
        115 Alexander                       30           170                    
        115 Alexander                       30           180                    
        115 Alexander                       30           190                    
        115 Alexander                       30           200                    
        115 Alexander                       30           210                    
        115 Alexander                       30           220                    
        115 Alexander                       30           230                    
        115 Alexander                       30           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        115 Alexander                       30           250                    
        115 Alexander                       30           260                    
        115 Alexander                       30           270                    
        116 Shelli                          30            10                    
        116 Shelli                          30            20                    
        116 Shelli                          30            30                    
        116 Shelli                          30            40                    
        116 Shelli                          30            50                    
        116 Shelli                          30            60                    
        116 Shelli                          30            70                    
        116 Shelli                          30            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        116 Shelli                          30            90                    
        116 Shelli                          30           100                    
        116 Shelli                          30           110                    
        116 Shelli                          30           120                    
        116 Shelli                          30           130                    
        116 Shelli                          30           140                    
        116 Shelli                          30           150                    
        116 Shelli                          30           160                    
        116 Shelli                          30           170                    
        116 Shelli                          30           180                    
        116 Shelli                          30           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        116 Shelli                          30           200                    
        116 Shelli                          30           210                    
        116 Shelli                          30           220                    
        116 Shelli                          30           230                    
        116 Shelli                          30           240                    
        116 Shelli                          30           250                    
        116 Shelli                          30           260                    
        116 Shelli                          30           270                    
        117 Sigal                           30            10                    
        117 Sigal                           30            20                    
        117 Sigal                           30            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30            40                    
        117 Sigal                           30            50                    
        117 Sigal                           30            60                    
        117 Sigal                           30            70                    
        117 Sigal                           30            80                    
        117 Sigal                           30            90                    
        117 Sigal                           30           100                    
        117 Sigal                           30           110                    
        117 Sigal                           30           120                    
        117 Sigal                           30           130                    
        117 Sigal                           30           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30           150                    
        117 Sigal                           30           160                    
        117 Sigal                           30           170                    
        117 Sigal                           30           180                    
        117 Sigal                           30           190                    
        117 Sigal                           30           200                    
        117 Sigal                           30           210                    
        117 Sigal                           30           220                    
        117 Sigal                           30           230                    
        117 Sigal                           30           240                    
        117 Sigal                           30           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        117 Sigal                           30           260                    
        117 Sigal                           30           270                    
        118 Guy                             30            10                    
        118 Guy                             30            20                    
        118 Guy                             30            30                    
        118 Guy                             30            40                    
        118 Guy                             30            50                    
        118 Guy                             30            60                    
        118 Guy                             30            70                    
        118 Guy                             30            80                    
        118 Guy                             30            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        118 Guy                             30           100                    
        118 Guy                             30           110                    
        118 Guy                             30           120                    
        118 Guy                             30           130                    
        118 Guy                             30           140                    
        118 Guy                             30           150                    
        118 Guy                             30           160                    
        118 Guy                             30           170                    
        118 Guy                             30           180                    
        118 Guy                             30           190                    
        118 Guy                             30           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        118 Guy                             30           210                    
        118 Guy                             30           220                    
        118 Guy                             30           230                    
        118 Guy                             30           240                    
        118 Guy                             30           250                    
        118 Guy                             30           260                    
        118 Guy                             30           270                    
        119 Karen                           30            10                    
        119 Karen                           30            20                    
        119 Karen                           30            30                    
        119 Karen                           30            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30            50                    
        119 Karen                           30            60                    
        119 Karen                           30            70                    
        119 Karen                           30            80                    
        119 Karen                           30            90                    
        119 Karen                           30           100                    
        119 Karen                           30           110                    
        119 Karen                           30           120                    
        119 Karen                           30           130                    
        119 Karen                           30           140                    
        119 Karen                           30           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30           160                    
        119 Karen                           30           170                    
        119 Karen                           30           180                    
        119 Karen                           30           190                    
        119 Karen                           30           200                    
        119 Karen                           30           210                    
        119 Karen                           30           220                    
        119 Karen                           30           230                    
        119 Karen                           30           240                    
        119 Karen                           30           250                    
        119 Karen                           30           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        119 Karen                           30           270                    
        120 Matthew                         50            10                    
        120 Matthew                         50            20                    
        120 Matthew                         50            30                    
        120 Matthew                         50            40                    
        120 Matthew                         50            50                    
        120 Matthew                         50            60                    
        120 Matthew                         50            70                    
        120 Matthew                         50            80                    
        120 Matthew                         50            90                    
        120 Matthew                         50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        120 Matthew                         50           110                    
        120 Matthew                         50           120                    
        120 Matthew                         50           130                    
        120 Matthew                         50           140                    
        120 Matthew                         50           150                    
        120 Matthew                         50           160                    
        120 Matthew                         50           170                    
        120 Matthew                         50           180                    
        120 Matthew                         50           190                    
        120 Matthew                         50           200                    
        120 Matthew                         50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        120 Matthew                         50           220                    
        120 Matthew                         50           230                    
        120 Matthew                         50           240                    
        120 Matthew                         50           250                    
        120 Matthew                         50           260                    
        120 Matthew                         50           270                    
        121 Adam                            50            10                    
        121 Adam                            50            20                    
        121 Adam                            50            30                    
        121 Adam                            50            40                    
        121 Adam                            50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        121 Adam                            50            60                    
        121 Adam                            50            70                    
        121 Adam                            50            80                    
        121 Adam                            50            90                    
        121 Adam                            50           100                    
        121 Adam                            50           110                    
        121 Adam                            50           120                    
        121 Adam                            50           130                    
        121 Adam                            50           140                    
        121 Adam                            50           150                    
        121 Adam                            50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        121 Adam                            50           170                    
        121 Adam                            50           180                    
        121 Adam                            50           190                    
        121 Adam                            50           200                    
        121 Adam                            50           210                    
        121 Adam                            50           220                    
        121 Adam                            50           230                    
        121 Adam                            50           240                    
        121 Adam                            50           250                    
        121 Adam                            50           260                    
        121 Adam                            50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50            10                    
        122 Payam                           50            20                    
        122 Payam                           50            30                    
        122 Payam                           50            40                    
        122 Payam                           50            50                    
        122 Payam                           50            60                    
        122 Payam                           50            70                    
        122 Payam                           50            80                    
        122 Payam                           50            90                    
        122 Payam                           50           100                    
        122 Payam                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50           120                    
        122 Payam                           50           130                    
        122 Payam                           50           140                    
        122 Payam                           50           150                    
        122 Payam                           50           160                    
        122 Payam                           50           170                    
        122 Payam                           50           180                    
        122 Payam                           50           190                    
        122 Payam                           50           200                    
        122 Payam                           50           210                    
        122 Payam                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        122 Payam                           50           230                    
        122 Payam                           50           240                    
        122 Payam                           50           250                    
        122 Payam                           50           260                    
        122 Payam                           50           270                    
        123 Shanta                          50            10                    
        123 Shanta                          50            20                    
        123 Shanta                          50            30                    
        123 Shanta                          50            40                    
        123 Shanta                          50            50                    
        123 Shanta                          50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        123 Shanta                          50            70                    
        123 Shanta                          50            80                    
        123 Shanta                          50            90                    
        123 Shanta                          50           100                    
        123 Shanta                          50           110                    
        123 Shanta                          50           120                    
        123 Shanta                          50           130                    
        123 Shanta                          50           140                    
        123 Shanta                          50           150                    
        123 Shanta                          50           160                    
        123 Shanta                          50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        123 Shanta                          50           180                    
        123 Shanta                          50           190                    
        123 Shanta                          50           200                    
        123 Shanta                          50           210                    
        123 Shanta                          50           220                    
        123 Shanta                          50           230                    
        123 Shanta                          50           240                    
        123 Shanta                          50           250                    
        123 Shanta                          50           260                    
        123 Shanta                          50           270                    
        124 Kevin                           50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50            20                    
        124 Kevin                           50            30                    
        124 Kevin                           50            40                    
        124 Kevin                           50            50                    
        124 Kevin                           50            60                    
        124 Kevin                           50            70                    
        124 Kevin                           50            80                    
        124 Kevin                           50            90                    
        124 Kevin                           50           100                    
        124 Kevin                           50           110                    
        124 Kevin                           50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50           130                    
        124 Kevin                           50           140                    
        124 Kevin                           50           150                    
        124 Kevin                           50           160                    
        124 Kevin                           50           170                    
        124 Kevin                           50           180                    
        124 Kevin                           50           190                    
        124 Kevin                           50           200                    
        124 Kevin                           50           210                    
        124 Kevin                           50           220                    
        124 Kevin                           50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        124 Kevin                           50           240                    
        124 Kevin                           50           250                    
        124 Kevin                           50           260                    
        124 Kevin                           50           270                    
        125 Julia                           50            10                    
        125 Julia                           50            20                    
        125 Julia                           50            30                    
        125 Julia                           50            40                    
        125 Julia                           50            50                    
        125 Julia                           50            60                    
        125 Julia                           50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        125 Julia                           50            80                    
        125 Julia                           50            90                    
        125 Julia                           50           100                    
        125 Julia                           50           110                    
        125 Julia                           50           120                    
        125 Julia                           50           130                    
        125 Julia                           50           140                    
        125 Julia                           50           150                    
        125 Julia                           50           160                    
        125 Julia                           50           170                    
        125 Julia                           50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        125 Julia                           50           190                    
        125 Julia                           50           200                    
        125 Julia                           50           210                    
        125 Julia                           50           220                    
        125 Julia                           50           230                    
        125 Julia                           50           240                    
        125 Julia                           50           250                    
        125 Julia                           50           260                    
        125 Julia                           50           270                    
        126 Irene                           50            10                    
        126 Irene                           50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50            30                    
        126 Irene                           50            40                    
        126 Irene                           50            50                    
        126 Irene                           50            60                    
        126 Irene                           50            70                    
        126 Irene                           50            80                    
        126 Irene                           50            90                    
        126 Irene                           50           100                    
        126 Irene                           50           110                    
        126 Irene                           50           120                    
        126 Irene                           50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50           140                    
        126 Irene                           50           150                    
        126 Irene                           50           160                    
        126 Irene                           50           170                    
        126 Irene                           50           180                    
        126 Irene                           50           190                    
        126 Irene                           50           200                    
        126 Irene                           50           210                    
        126 Irene                           50           220                    
        126 Irene                           50           230                    
        126 Irene                           50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        126 Irene                           50           250                    
        126 Irene                           50           260                    
        126 Irene                           50           270                    
        127 James                           50            10                    
        127 James                           50            20                    
        127 James                           50            30                    
        127 James                           50            40                    
        127 James                           50            50                    
        127 James                           50            60                    
        127 James                           50            70                    
        127 James                           50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        127 James                           50            90                    
        127 James                           50           100                    
        127 James                           50           110                    
        127 James                           50           120                    
        127 James                           50           130                    
        127 James                           50           140                    
        127 James                           50           150                    
        127 James                           50           160                    
        127 James                           50           170                    
        127 James                           50           180                    
        127 James                           50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        127 James                           50           200                    
        127 James                           50           210                    
        127 James                           50           220                    
        127 James                           50           230                    
        127 James                           50           240                    
        127 James                           50           250                    
        127 James                           50           260                    
        127 James                           50           270                    
        128 Steven                          50            10                    
        128 Steven                          50            20                    
        128 Steven                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50            40                    
        128 Steven                          50            50                    
        128 Steven                          50            60                    
        128 Steven                          50            70                    
        128 Steven                          50            80                    
        128 Steven                          50            90                    
        128 Steven                          50           100                    
        128 Steven                          50           110                    
        128 Steven                          50           120                    
        128 Steven                          50           130                    
        128 Steven                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50           150                    
        128 Steven                          50           160                    
        128 Steven                          50           170                    
        128 Steven                          50           180                    
        128 Steven                          50           190                    
        128 Steven                          50           200                    
        128 Steven                          50           210                    
        128 Steven                          50           220                    
        128 Steven                          50           230                    
        128 Steven                          50           240                    
        128 Steven                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        128 Steven                          50           260                    
        128 Steven                          50           270                    
        129 Laura                           50            10                    
        129 Laura                           50            20                    
        129 Laura                           50            30                    
        129 Laura                           50            40                    
        129 Laura                           50            50                    
        129 Laura                           50            60                    
        129 Laura                           50            70                    
        129 Laura                           50            80                    
        129 Laura                           50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        129 Laura                           50           100                    
        129 Laura                           50           110                    
        129 Laura                           50           120                    
        129 Laura                           50           130                    
        129 Laura                           50           140                    
        129 Laura                           50           150                    
        129 Laura                           50           160                    
        129 Laura                           50           170                    
        129 Laura                           50           180                    
        129 Laura                           50           190                    
        129 Laura                           50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        129 Laura                           50           210                    
        129 Laura                           50           220                    
        129 Laura                           50           230                    
        129 Laura                           50           240                    
        129 Laura                           50           250                    
        129 Laura                           50           260                    
        129 Laura                           50           270                    
        130 Mozhe                           50            10                    
        130 Mozhe                           50            20                    
        130 Mozhe                           50            30                    
        130 Mozhe                           50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50            50                    
        130 Mozhe                           50            60                    
        130 Mozhe                           50            70                    
        130 Mozhe                           50            80                    
        130 Mozhe                           50            90                    
        130 Mozhe                           50           100                    
        130 Mozhe                           50           110                    
        130 Mozhe                           50           120                    
        130 Mozhe                           50           130                    
        130 Mozhe                           50           140                    
        130 Mozhe                           50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50           160                    
        130 Mozhe                           50           170                    
        130 Mozhe                           50           180                    
        130 Mozhe                           50           190                    
        130 Mozhe                           50           200                    
        130 Mozhe                           50           210                    
        130 Mozhe                           50           220                    
        130 Mozhe                           50           230                    
        130 Mozhe                           50           240                    
        130 Mozhe                           50           250                    
        130 Mozhe                           50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        130 Mozhe                           50           270                    
        131 James                           50            10                    
        131 James                           50            20                    
        131 James                           50            30                    
        131 James                           50            40                    
        131 James                           50            50                    
        131 James                           50            60                    
        131 James                           50            70                    
        131 James                           50            80                    
        131 James                           50            90                    
        131 James                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        131 James                           50           110                    
        131 James                           50           120                    
        131 James                           50           130                    
        131 James                           50           140                    
        131 James                           50           150                    
        131 James                           50           160                    
        131 James                           50           170                    
        131 James                           50           180                    
        131 James                           50           190                    
        131 James                           50           200                    
        131 James                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        131 James                           50           220                    
        131 James                           50           230                    
        131 James                           50           240                    
        131 James                           50           250                    
        131 James                           50           260                    
        131 James                           50           270                    
        132 TJ                              50            10                    
        132 TJ                              50            20                    
        132 TJ                              50            30                    
        132 TJ                              50            40                    
        132 TJ                              50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        132 TJ                              50            60                    
        132 TJ                              50            70                    
        132 TJ                              50            80                    
        132 TJ                              50            90                    
        132 TJ                              50           100                    
        132 TJ                              50           110                    
        132 TJ                              50           120                    
        132 TJ                              50           130                    
        132 TJ                              50           140                    
        132 TJ                              50           150                    
        132 TJ                              50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        132 TJ                              50           170                    
        132 TJ                              50           180                    
        132 TJ                              50           190                    
        132 TJ                              50           200                    
        132 TJ                              50           210                    
        132 TJ                              50           220                    
        132 TJ                              50           230                    
        132 TJ                              50           240                    
        132 TJ                              50           250                    
        132 TJ                              50           260                    
        132 TJ                              50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50            10                    
        133 Jason                           50            20                    
        133 Jason                           50            30                    
        133 Jason                           50            40                    
        133 Jason                           50            50                    
        133 Jason                           50            60                    
        133 Jason                           50            70                    
        133 Jason                           50            80                    
        133 Jason                           50            90                    
        133 Jason                           50           100                    
        133 Jason                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50           120                    
        133 Jason                           50           130                    
        133 Jason                           50           140                    
        133 Jason                           50           150                    
        133 Jason                           50           160                    
        133 Jason                           50           170                    
        133 Jason                           50           180                    
        133 Jason                           50           190                    
        133 Jason                           50           200                    
        133 Jason                           50           210                    
        133 Jason                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        133 Jason                           50           230                    
        133 Jason                           50           240                    
        133 Jason                           50           250                    
        133 Jason                           50           260                    
        133 Jason                           50           270                    
        134 Michael                         50            10                    
        134 Michael                         50            20                    
        134 Michael                         50            30                    
        134 Michael                         50            40                    
        134 Michael                         50            50                    
        134 Michael                         50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        134 Michael                         50            70                    
        134 Michael                         50            80                    
        134 Michael                         50            90                    
        134 Michael                         50           100                    
        134 Michael                         50           110                    
        134 Michael                         50           120                    
        134 Michael                         50           130                    
        134 Michael                         50           140                    
        134 Michael                         50           150                    
        134 Michael                         50           160                    
        134 Michael                         50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        134 Michael                         50           180                    
        134 Michael                         50           190                    
        134 Michael                         50           200                    
        134 Michael                         50           210                    
        134 Michael                         50           220                    
        134 Michael                         50           230                    
        134 Michael                         50           240                    
        134 Michael                         50           250                    
        134 Michael                         50           260                    
        134 Michael                         50           270                    
        135 Ki                              50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50            20                    
        135 Ki                              50            30                    
        135 Ki                              50            40                    
        135 Ki                              50            50                    
        135 Ki                              50            60                    
        135 Ki                              50            70                    
        135 Ki                              50            80                    
        135 Ki                              50            90                    
        135 Ki                              50           100                    
        135 Ki                              50           110                    
        135 Ki                              50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50           130                    
        135 Ki                              50           140                    
        135 Ki                              50           150                    
        135 Ki                              50           160                    
        135 Ki                              50           170                    
        135 Ki                              50           180                    
        135 Ki                              50           190                    
        135 Ki                              50           200                    
        135 Ki                              50           210                    
        135 Ki                              50           220                    
        135 Ki                              50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        135 Ki                              50           240                    
        135 Ki                              50           250                    
        135 Ki                              50           260                    
        135 Ki                              50           270                    
        136 Hazel                           50            10                    
        136 Hazel                           50            20                    
        136 Hazel                           50            30                    
        136 Hazel                           50            40                    
        136 Hazel                           50            50                    
        136 Hazel                           50            60                    
        136 Hazel                           50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        136 Hazel                           50            80                    
        136 Hazel                           50            90                    
        136 Hazel                           50           100                    
        136 Hazel                           50           110                    
        136 Hazel                           50           120                    
        136 Hazel                           50           130                    
        136 Hazel                           50           140                    
        136 Hazel                           50           150                    
        136 Hazel                           50           160                    
        136 Hazel                           50           170                    
        136 Hazel                           50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        136 Hazel                           50           190                    
        136 Hazel                           50           200                    
        136 Hazel                           50           210                    
        136 Hazel                           50           220                    
        136 Hazel                           50           230                    
        136 Hazel                           50           240                    
        136 Hazel                           50           250                    
        136 Hazel                           50           260                    
        136 Hazel                           50           270                    
        137 Renske                          50            10                    
        137 Renske                          50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50            30                    
        137 Renske                          50            40                    
        137 Renske                          50            50                    
        137 Renske                          50            60                    
        137 Renske                          50            70                    
        137 Renske                          50            80                    
        137 Renske                          50            90                    
        137 Renske                          50           100                    
        137 Renske                          50           110                    
        137 Renske                          50           120                    
        137 Renske                          50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50           140                    
        137 Renske                          50           150                    
        137 Renske                          50           160                    
        137 Renske                          50           170                    
        137 Renske                          50           180                    
        137 Renske                          50           190                    
        137 Renske                          50           200                    
        137 Renske                          50           210                    
        137 Renske                          50           220                    
        137 Renske                          50           230                    
        137 Renske                          50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        137 Renske                          50           250                    
        137 Renske                          50           260                    
        137 Renske                          50           270                    
        138 Stephen                         50            10                    
        138 Stephen                         50            20                    
        138 Stephen                         50            30                    
        138 Stephen                         50            40                    
        138 Stephen                         50            50                    
        138 Stephen                         50            60                    
        138 Stephen                         50            70                    
        138 Stephen                         50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        138 Stephen                         50            90                    
        138 Stephen                         50           100                    
        138 Stephen                         50           110                    
        138 Stephen                         50           120                    
        138 Stephen                         50           130                    
        138 Stephen                         50           140                    
        138 Stephen                         50           150                    
        138 Stephen                         50           160                    
        138 Stephen                         50           170                    
        138 Stephen                         50           180                    
        138 Stephen                         50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        138 Stephen                         50           200                    
        138 Stephen                         50           210                    
        138 Stephen                         50           220                    
        138 Stephen                         50           230                    
        138 Stephen                         50           240                    
        138 Stephen                         50           250                    
        138 Stephen                         50           260                    
        138 Stephen                         50           270                    
        139 John                            50            10                    
        139 John                            50            20                    
        139 John                            50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50            40                    
        139 John                            50            50                    
        139 John                            50            60                    
        139 John                            50            70                    
        139 John                            50            80                    
        139 John                            50            90                    
        139 John                            50           100                    
        139 John                            50           110                    
        139 John                            50           120                    
        139 John                            50           130                    
        139 John                            50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50           150                    
        139 John                            50           160                    
        139 John                            50           170                    
        139 John                            50           180                    
        139 John                            50           190                    
        139 John                            50           200                    
        139 John                            50           210                    
        139 John                            50           220                    
        139 John                            50           230                    
        139 John                            50           240                    
        139 John                            50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        139 John                            50           260                    
        139 John                            50           270                    
        140 Joshua                          50            10                    
        140 Joshua                          50            20                    
        140 Joshua                          50            30                    
        140 Joshua                          50            40                    
        140 Joshua                          50            50                    
        140 Joshua                          50            60                    
        140 Joshua                          50            70                    
        140 Joshua                          50            80                    
        140 Joshua                          50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        140 Joshua                          50           100                    
        140 Joshua                          50           110                    
        140 Joshua                          50           120                    
        140 Joshua                          50           130                    
        140 Joshua                          50           140                    
        140 Joshua                          50           150                    
        140 Joshua                          50           160                    
        140 Joshua                          50           170                    
        140 Joshua                          50           180                    
        140 Joshua                          50           190                    
        140 Joshua                          50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        140 Joshua                          50           210                    
        140 Joshua                          50           220                    
        140 Joshua                          50           230                    
        140 Joshua                          50           240                    
        140 Joshua                          50           250                    
        140 Joshua                          50           260                    
        140 Joshua                          50           270                    
        141 Trenna                          50            10                    
        141 Trenna                          50            20                    
        141 Trenna                          50            30                    
        141 Trenna                          50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50            50                    
        141 Trenna                          50            60                    
        141 Trenna                          50            70                    
        141 Trenna                          50            80                    
        141 Trenna                          50            90                    
        141 Trenna                          50           100                    
        141 Trenna                          50           110                    
        141 Trenna                          50           120                    
        141 Trenna                          50           130                    
        141 Trenna                          50           140                    
        141 Trenna                          50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50           160                    
        141 Trenna                          50           170                    
        141 Trenna                          50           180                    
        141 Trenna                          50           190                    
        141 Trenna                          50           200                    
        141 Trenna                          50           210                    
        141 Trenna                          50           220                    
        141 Trenna                          50           230                    
        141 Trenna                          50           240                    
        141 Trenna                          50           250                    
        141 Trenna                          50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        141 Trenna                          50           270                    
        142 Curtis                          50            10                    
        142 Curtis                          50            20                    
        142 Curtis                          50            30                    
        142 Curtis                          50            40                    
        142 Curtis                          50            50                    
        142 Curtis                          50            60                    
        142 Curtis                          50            70                    
        142 Curtis                          50            80                    
        142 Curtis                          50            90                    
        142 Curtis                          50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        142 Curtis                          50           110                    
        142 Curtis                          50           120                    
        142 Curtis                          50           130                    
        142 Curtis                          50           140                    
        142 Curtis                          50           150                    
        142 Curtis                          50           160                    
        142 Curtis                          50           170                    
        142 Curtis                          50           180                    
        142 Curtis                          50           190                    
        142 Curtis                          50           200                    
        142 Curtis                          50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        142 Curtis                          50           220                    
        142 Curtis                          50           230                    
        142 Curtis                          50           240                    
        142 Curtis                          50           250                    
        142 Curtis                          50           260                    
        142 Curtis                          50           270                    
        143 Randall                         50            10                    
        143 Randall                         50            20                    
        143 Randall                         50            30                    
        143 Randall                         50            40                    
        143 Randall                         50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        143 Randall                         50            60                    
        143 Randall                         50            70                    
        143 Randall                         50            80                    
        143 Randall                         50            90                    
        143 Randall                         50           100                    
        143 Randall                         50           110                    
        143 Randall                         50           120                    
        143 Randall                         50           130                    
        143 Randall                         50           140                    
        143 Randall                         50           150                    
        143 Randall                         50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        143 Randall                         50           170                    
        143 Randall                         50           180                    
        143 Randall                         50           190                    
        143 Randall                         50           200                    
        143 Randall                         50           210                    
        143 Randall                         50           220                    
        143 Randall                         50           230                    
        143 Randall                         50           240                    
        143 Randall                         50           250                    
        143 Randall                         50           260                    
        143 Randall                         50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50            10                    
        144 Peter                           50            20                    
        144 Peter                           50            30                    
        144 Peter                           50            40                    
        144 Peter                           50            50                    
        144 Peter                           50            60                    
        144 Peter                           50            70                    
        144 Peter                           50            80                    
        144 Peter                           50            90                    
        144 Peter                           50           100                    
        144 Peter                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50           120                    
        144 Peter                           50           130                    
        144 Peter                           50           140                    
        144 Peter                           50           150                    
        144 Peter                           50           160                    
        144 Peter                           50           170                    
        144 Peter                           50           180                    
        144 Peter                           50           190                    
        144 Peter                           50           200                    
        144 Peter                           50           210                    
        144 Peter                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        144 Peter                           50           230                    
        144 Peter                           50           240                    
        144 Peter                           50           250                    
        144 Peter                           50           260                    
        144 Peter                           50           270                    
        145 John                            80            10                    
        145 John                            80            20                    
        145 John                            80            30                    
        145 John                            80            40                    
        145 John                            80            50                    
        145 John                            80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        145 John                            80            70                    
        145 John                            80            80                    
        145 John                            80            90                    
        145 John                            80           100                    
        145 John                            80           110                    
        145 John                            80           120                    
        145 John                            80           130                    
        145 John                            80           140                    
        145 John                            80           150                    
        145 John                            80           160                    
        145 John                            80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        145 John                            80           180                    
        145 John                            80           190                    
        145 John                            80           200                    
        145 John                            80           210                    
        145 John                            80           220                    
        145 John                            80           230                    
        145 John                            80           240                    
        145 John                            80           250                    
        145 John                            80           260                    
        145 John                            80           270                    
        146 Karen                           80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80            20                    
        146 Karen                           80            30                    
        146 Karen                           80            40                    
        146 Karen                           80            50                    
        146 Karen                           80            60                    
        146 Karen                           80            70                    
        146 Karen                           80            80                    
        146 Karen                           80            90                    
        146 Karen                           80           100                    
        146 Karen                           80           110                    
        146 Karen                           80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80           130                    
        146 Karen                           80           140                    
        146 Karen                           80           150                    
        146 Karen                           80           160                    
        146 Karen                           80           170                    
        146 Karen                           80           180                    
        146 Karen                           80           190                    
        146 Karen                           80           200                    
        146 Karen                           80           210                    
        146 Karen                           80           220                    
        146 Karen                           80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        146 Karen                           80           240                    
        146 Karen                           80           250                    
        146 Karen                           80           260                    
        146 Karen                           80           270                    
        147 Alberto                         80            10                    
        147 Alberto                         80            20                    
        147 Alberto                         80            30                    
        147 Alberto                         80            40                    
        147 Alberto                         80            50                    
        147 Alberto                         80            60                    
        147 Alberto                         80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        147 Alberto                         80            80                    
        147 Alberto                         80            90                    
        147 Alberto                         80           100                    
        147 Alberto                         80           110                    
        147 Alberto                         80           120                    
        147 Alberto                         80           130                    
        147 Alberto                         80           140                    
        147 Alberto                         80           150                    
        147 Alberto                         80           160                    
        147 Alberto                         80           170                    
        147 Alberto                         80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        147 Alberto                         80           190                    
        147 Alberto                         80           200                    
        147 Alberto                         80           210                    
        147 Alberto                         80           220                    
        147 Alberto                         80           230                    
        147 Alberto                         80           240                    
        147 Alberto                         80           250                    
        147 Alberto                         80           260                    
        147 Alberto                         80           270                    
        148 Gerald                          80            10                    
        148 Gerald                          80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80            30                    
        148 Gerald                          80            40                    
        148 Gerald                          80            50                    
        148 Gerald                          80            60                    
        148 Gerald                          80            70                    
        148 Gerald                          80            80                    
        148 Gerald                          80            90                    
        148 Gerald                          80           100                    
        148 Gerald                          80           110                    
        148 Gerald                          80           120                    
        148 Gerald                          80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80           140                    
        148 Gerald                          80           150                    
        148 Gerald                          80           160                    
        148 Gerald                          80           170                    
        148 Gerald                          80           180                    
        148 Gerald                          80           190                    
        148 Gerald                          80           200                    
        148 Gerald                          80           210                    
        148 Gerald                          80           220                    
        148 Gerald                          80           230                    
        148 Gerald                          80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        148 Gerald                          80           250                    
        148 Gerald                          80           260                    
        148 Gerald                          80           270                    
        149 Eleni                           80            10                    
        149 Eleni                           80            20                    
        149 Eleni                           80            30                    
        149 Eleni                           80            40                    
        149 Eleni                           80            50                    
        149 Eleni                           80            60                    
        149 Eleni                           80            70                    
        149 Eleni                           80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        149 Eleni                           80            90                    
        149 Eleni                           80           100                    
        149 Eleni                           80           110                    
        149 Eleni                           80           120                    
        149 Eleni                           80           130                    
        149 Eleni                           80           140                    
        149 Eleni                           80           150                    
        149 Eleni                           80           160                    
        149 Eleni                           80           170                    
        149 Eleni                           80           180                    
        149 Eleni                           80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        149 Eleni                           80           200                    
        149 Eleni                           80           210                    
        149 Eleni                           80           220                    
        149 Eleni                           80           230                    
        149 Eleni                           80           240                    
        149 Eleni                           80           250                    
        149 Eleni                           80           260                    
        149 Eleni                           80           270                    
        150 Sean                            80            10                    
        150 Sean                            80            20                    
        150 Sean                            80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80            40                    
        150 Sean                            80            50                    
        150 Sean                            80            60                    
        150 Sean                            80            70                    
        150 Sean                            80            80                    
        150 Sean                            80            90                    
        150 Sean                            80           100                    
        150 Sean                            80           110                    
        150 Sean                            80           120                    
        150 Sean                            80           130                    
        150 Sean                            80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80           150                    
        150 Sean                            80           160                    
        150 Sean                            80           170                    
        150 Sean                            80           180                    
        150 Sean                            80           190                    
        150 Sean                            80           200                    
        150 Sean                            80           210                    
        150 Sean                            80           220                    
        150 Sean                            80           230                    
        150 Sean                            80           240                    
        150 Sean                            80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        150 Sean                            80           260                    
        150 Sean                            80           270                    
        151 David                           80            10                    
        151 David                           80            20                    
        151 David                           80            30                    
        151 David                           80            40                    
        151 David                           80            50                    
        151 David                           80            60                    
        151 David                           80            70                    
        151 David                           80            80                    
        151 David                           80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        151 David                           80           100                    
        151 David                           80           110                    
        151 David                           80           120                    
        151 David                           80           130                    
        151 David                           80           140                    
        151 David                           80           150                    
        151 David                           80           160                    
        151 David                           80           170                    
        151 David                           80           180                    
        151 David                           80           190                    
        151 David                           80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        151 David                           80           210                    
        151 David                           80           220                    
        151 David                           80           230                    
        151 David                           80           240                    
        151 David                           80           250                    
        151 David                           80           260                    
        151 David                           80           270                    
        152 Peter                           80            10                    
        152 Peter                           80            20                    
        152 Peter                           80            30                    
        152 Peter                           80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80            50                    
        152 Peter                           80            60                    
        152 Peter                           80            70                    
        152 Peter                           80            80                    
        152 Peter                           80            90                    
        152 Peter                           80           100                    
        152 Peter                           80           110                    
        152 Peter                           80           120                    
        152 Peter                           80           130                    
        152 Peter                           80           140                    
        152 Peter                           80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80           160                    
        152 Peter                           80           170                    
        152 Peter                           80           180                    
        152 Peter                           80           190                    
        152 Peter                           80           200                    
        152 Peter                           80           210                    
        152 Peter                           80           220                    
        152 Peter                           80           230                    
        152 Peter                           80           240                    
        152 Peter                           80           250                    
        152 Peter                           80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        152 Peter                           80           270                    
        153 Christopher                     80            10                    
        153 Christopher                     80            20                    
        153 Christopher                     80            30                    
        153 Christopher                     80            40                    
        153 Christopher                     80            50                    
        153 Christopher                     80            60                    
        153 Christopher                     80            70                    
        153 Christopher                     80            80                    
        153 Christopher                     80            90                    
        153 Christopher                     80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        153 Christopher                     80           110                    
        153 Christopher                     80           120                    
        153 Christopher                     80           130                    
        153 Christopher                     80           140                    
        153 Christopher                     80           150                    
        153 Christopher                     80           160                    
        153 Christopher                     80           170                    
        153 Christopher                     80           180                    
        153 Christopher                     80           190                    
        153 Christopher                     80           200                    
        153 Christopher                     80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        153 Christopher                     80           220                    
        153 Christopher                     80           230                    
        153 Christopher                     80           240                    
        153 Christopher                     80           250                    
        153 Christopher                     80           260                    
        153 Christopher                     80           270                    
        154 Nanette                         80            10                    
        154 Nanette                         80            20                    
        154 Nanette                         80            30                    
        154 Nanette                         80            40                    
        154 Nanette                         80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        154 Nanette                         80            60                    
        154 Nanette                         80            70                    
        154 Nanette                         80            80                    
        154 Nanette                         80            90                    
        154 Nanette                         80           100                    
        154 Nanette                         80           110                    
        154 Nanette                         80           120                    
        154 Nanette                         80           130                    
        154 Nanette                         80           140                    
        154 Nanette                         80           150                    
        154 Nanette                         80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        154 Nanette                         80           170                    
        154 Nanette                         80           180                    
        154 Nanette                         80           190                    
        154 Nanette                         80           200                    
        154 Nanette                         80           210                    
        154 Nanette                         80           220                    
        154 Nanette                         80           230                    
        154 Nanette                         80           240                    
        154 Nanette                         80           250                    
        154 Nanette                         80           260                    
        154 Nanette                         80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80            10                    
        155 Oliver                          80            20                    
        155 Oliver                          80            30                    
        155 Oliver                          80            40                    
        155 Oliver                          80            50                    
        155 Oliver                          80            60                    
        155 Oliver                          80            70                    
        155 Oliver                          80            80                    
        155 Oliver                          80            90                    
        155 Oliver                          80           100                    
        155 Oliver                          80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80           120                    
        155 Oliver                          80           130                    
        155 Oliver                          80           140                    
        155 Oliver                          80           150                    
        155 Oliver                          80           160                    
        155 Oliver                          80           170                    
        155 Oliver                          80           180                    
        155 Oliver                          80           190                    
        155 Oliver                          80           200                    
        155 Oliver                          80           210                    
        155 Oliver                          80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        155 Oliver                          80           230                    
        155 Oliver                          80           240                    
        155 Oliver                          80           250                    
        155 Oliver                          80           260                    
        155 Oliver                          80           270                    
        156 Janette                         80            10                    
        156 Janette                         80            20                    
        156 Janette                         80            30                    
        156 Janette                         80            40                    
        156 Janette                         80            50                    
        156 Janette                         80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        156 Janette                         80            70                    
        156 Janette                         80            80                    
        156 Janette                         80            90                    
        156 Janette                         80           100                    
        156 Janette                         80           110                    
        156 Janette                         80           120                    
        156 Janette                         80           130                    
        156 Janette                         80           140                    
        156 Janette                         80           150                    
        156 Janette                         80           160                    
        156 Janette                         80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        156 Janette                         80           180                    
        156 Janette                         80           190                    
        156 Janette                         80           200                    
        156 Janette                         80           210                    
        156 Janette                         80           220                    
        156 Janette                         80           230                    
        156 Janette                         80           240                    
        156 Janette                         80           250                    
        156 Janette                         80           260                    
        156 Janette                         80           270                    
        157 Patrick                         80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80            20                    
        157 Patrick                         80            30                    
        157 Patrick                         80            40                    
        157 Patrick                         80            50                    
        157 Patrick                         80            60                    
        157 Patrick                         80            70                    
        157 Patrick                         80            80                    
        157 Patrick                         80            90                    
        157 Patrick                         80           100                    
        157 Patrick                         80           110                    
        157 Patrick                         80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80           130                    
        157 Patrick                         80           140                    
        157 Patrick                         80           150                    
        157 Patrick                         80           160                    
        157 Patrick                         80           170                    
        157 Patrick                         80           180                    
        157 Patrick                         80           190                    
        157 Patrick                         80           200                    
        157 Patrick                         80           210                    
        157 Patrick                         80           220                    
        157 Patrick                         80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        157 Patrick                         80           240                    
        157 Patrick                         80           250                    
        157 Patrick                         80           260                    
        157 Patrick                         80           270                    
        158 Allan                           80            10                    
        158 Allan                           80            20                    
        158 Allan                           80            30                    
        158 Allan                           80            40                    
        158 Allan                           80            50                    
        158 Allan                           80            60                    
        158 Allan                           80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        158 Allan                           80            80                    
        158 Allan                           80            90                    
        158 Allan                           80           100                    
        158 Allan                           80           110                    
        158 Allan                           80           120                    
        158 Allan                           80           130                    
        158 Allan                           80           140                    
        158 Allan                           80           150                    
        158 Allan                           80           160                    
        158 Allan                           80           170                    
        158 Allan                           80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        158 Allan                           80           190                    
        158 Allan                           80           200                    
        158 Allan                           80           210                    
        158 Allan                           80           220                    
        158 Allan                           80           230                    
        158 Allan                           80           240                    
        158 Allan                           80           250                    
        158 Allan                           80           260                    
        158 Allan                           80           270                    
        159 Lindsey                         80            10                    
        159 Lindsey                         80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80            30                    
        159 Lindsey                         80            40                    
        159 Lindsey                         80            50                    
        159 Lindsey                         80            60                    
        159 Lindsey                         80            70                    
        159 Lindsey                         80            80                    
        159 Lindsey                         80            90                    
        159 Lindsey                         80           100                    
        159 Lindsey                         80           110                    
        159 Lindsey                         80           120                    
        159 Lindsey                         80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80           140                    
        159 Lindsey                         80           150                    
        159 Lindsey                         80           160                    
        159 Lindsey                         80           170                    
        159 Lindsey                         80           180                    
        159 Lindsey                         80           190                    
        159 Lindsey                         80           200                    
        159 Lindsey                         80           210                    
        159 Lindsey                         80           220                    
        159 Lindsey                         80           230                    
        159 Lindsey                         80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        159 Lindsey                         80           250                    
        159 Lindsey                         80           260                    
        159 Lindsey                         80           270                    
        160 Louise                          80            10                    
        160 Louise                          80            20                    
        160 Louise                          80            30                    
        160 Louise                          80            40                    
        160 Louise                          80            50                    
        160 Louise                          80            60                    
        160 Louise                          80            70                    
        160 Louise                          80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        160 Louise                          80            90                    
        160 Louise                          80           100                    
        160 Louise                          80           110                    
        160 Louise                          80           120                    
        160 Louise                          80           130                    
        160 Louise                          80           140                    
        160 Louise                          80           150                    
        160 Louise                          80           160                    
        160 Louise                          80           170                    
        160 Louise                          80           180                    
        160 Louise                          80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        160 Louise                          80           200                    
        160 Louise                          80           210                    
        160 Louise                          80           220                    
        160 Louise                          80           230                    
        160 Louise                          80           240                    
        160 Louise                          80           250                    
        160 Louise                          80           260                    
        160 Louise                          80           270                    
        161 Sarath                          80            10                    
        161 Sarath                          80            20                    
        161 Sarath                          80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80            40                    
        161 Sarath                          80            50                    
        161 Sarath                          80            60                    
        161 Sarath                          80            70                    
        161 Sarath                          80            80                    
        161 Sarath                          80            90                    
        161 Sarath                          80           100                    
        161 Sarath                          80           110                    
        161 Sarath                          80           120                    
        161 Sarath                          80           130                    
        161 Sarath                          80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80           150                    
        161 Sarath                          80           160                    
        161 Sarath                          80           170                    
        161 Sarath                          80           180                    
        161 Sarath                          80           190                    
        161 Sarath                          80           200                    
        161 Sarath                          80           210                    
        161 Sarath                          80           220                    
        161 Sarath                          80           230                    
        161 Sarath                          80           240                    
        161 Sarath                          80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        161 Sarath                          80           260                    
        161 Sarath                          80           270                    
        162 Clara                           80            10                    
        162 Clara                           80            20                    
        162 Clara                           80            30                    
        162 Clara                           80            40                    
        162 Clara                           80            50                    
        162 Clara                           80            60                    
        162 Clara                           80            70                    
        162 Clara                           80            80                    
        162 Clara                           80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        162 Clara                           80           100                    
        162 Clara                           80           110                    
        162 Clara                           80           120                    
        162 Clara                           80           130                    
        162 Clara                           80           140                    
        162 Clara                           80           150                    
        162 Clara                           80           160                    
        162 Clara                           80           170                    
        162 Clara                           80           180                    
        162 Clara                           80           190                    
        162 Clara                           80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        162 Clara                           80           210                    
        162 Clara                           80           220                    
        162 Clara                           80           230                    
        162 Clara                           80           240                    
        162 Clara                           80           250                    
        162 Clara                           80           260                    
        162 Clara                           80           270                    
        163 Danielle                        80            10                    
        163 Danielle                        80            20                    
        163 Danielle                        80            30                    
        163 Danielle                        80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80            50                    
        163 Danielle                        80            60                    
        163 Danielle                        80            70                    
        163 Danielle                        80            80                    
        163 Danielle                        80            90                    
        163 Danielle                        80           100                    
        163 Danielle                        80           110                    
        163 Danielle                        80           120                    
        163 Danielle                        80           130                    
        163 Danielle                        80           140                    
        163 Danielle                        80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80           160                    
        163 Danielle                        80           170                    
        163 Danielle                        80           180                    
        163 Danielle                        80           190                    
        163 Danielle                        80           200                    
        163 Danielle                        80           210                    
        163 Danielle                        80           220                    
        163 Danielle                        80           230                    
        163 Danielle                        80           240                    
        163 Danielle                        80           250                    
        163 Danielle                        80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        163 Danielle                        80           270                    
        164 Mattea                          80            10                    
        164 Mattea                          80            20                    
        164 Mattea                          80            30                    
        164 Mattea                          80            40                    
        164 Mattea                          80            50                    
        164 Mattea                          80            60                    
        164 Mattea                          80            70                    
        164 Mattea                          80            80                    
        164 Mattea                          80            90                    
        164 Mattea                          80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        164 Mattea                          80           110                    
        164 Mattea                          80           120                    
        164 Mattea                          80           130                    
        164 Mattea                          80           140                    
        164 Mattea                          80           150                    
        164 Mattea                          80           160                    
        164 Mattea                          80           170                    
        164 Mattea                          80           180                    
        164 Mattea                          80           190                    
        164 Mattea                          80           200                    
        164 Mattea                          80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        164 Mattea                          80           220                    
        164 Mattea                          80           230                    
        164 Mattea                          80           240                    
        164 Mattea                          80           250                    
        164 Mattea                          80           260                    
        164 Mattea                          80           270                    
        165 David                           80            10                    
        165 David                           80            20                    
        165 David                           80            30                    
        165 David                           80            40                    
        165 David                           80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        165 David                           80            60                    
        165 David                           80            70                    
        165 David                           80            80                    
        165 David                           80            90                    
        165 David                           80           100                    
        165 David                           80           110                    
        165 David                           80           120                    
        165 David                           80           130                    
        165 David                           80           140                    
        165 David                           80           150                    
        165 David                           80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        165 David                           80           170                    
        165 David                           80           180                    
        165 David                           80           190                    
        165 David                           80           200                    
        165 David                           80           210                    
        165 David                           80           220                    
        165 David                           80           230                    
        165 David                           80           240                    
        165 David                           80           250                    
        165 David                           80           260                    
        165 David                           80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80            10                    
        166 Sundar                          80            20                    
        166 Sundar                          80            30                    
        166 Sundar                          80            40                    
        166 Sundar                          80            50                    
        166 Sundar                          80            60                    
        166 Sundar                          80            70                    
        166 Sundar                          80            80                    
        166 Sundar                          80            90                    
        166 Sundar                          80           100                    
        166 Sundar                          80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80           120                    
        166 Sundar                          80           130                    
        166 Sundar                          80           140                    
        166 Sundar                          80           150                    
        166 Sundar                          80           160                    
        166 Sundar                          80           170                    
        166 Sundar                          80           180                    
        166 Sundar                          80           190                    
        166 Sundar                          80           200                    
        166 Sundar                          80           210                    
        166 Sundar                          80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        166 Sundar                          80           230                    
        166 Sundar                          80           240                    
        166 Sundar                          80           250                    
        166 Sundar                          80           260                    
        166 Sundar                          80           270                    
        167 Amit                            80            10                    
        167 Amit                            80            20                    
        167 Amit                            80            30                    
        167 Amit                            80            40                    
        167 Amit                            80            50                    
        167 Amit                            80            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        167 Amit                            80            70                    
        167 Amit                            80            80                    
        167 Amit                            80            90                    
        167 Amit                            80           100                    
        167 Amit                            80           110                    
        167 Amit                            80           120                    
        167 Amit                            80           130                    
        167 Amit                            80           140                    
        167 Amit                            80           150                    
        167 Amit                            80           160                    
        167 Amit                            80           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        167 Amit                            80           180                    
        167 Amit                            80           190                    
        167 Amit                            80           200                    
        167 Amit                            80           210                    
        167 Amit                            80           220                    
        167 Amit                            80           230                    
        167 Amit                            80           240                    
        167 Amit                            80           250                    
        167 Amit                            80           260                    
        167 Amit                            80           270                    
        168 Lisa                            80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80            20                    
        168 Lisa                            80            30                    
        168 Lisa                            80            40                    
        168 Lisa                            80            50                    
        168 Lisa                            80            60                    
        168 Lisa                            80            70                    
        168 Lisa                            80            80                    
        168 Lisa                            80            90                    
        168 Lisa                            80           100                    
        168 Lisa                            80           110                    
        168 Lisa                            80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80           130                    
        168 Lisa                            80           140                    
        168 Lisa                            80           150                    
        168 Lisa                            80           160                    
        168 Lisa                            80           170                    
        168 Lisa                            80           180                    
        168 Lisa                            80           190                    
        168 Lisa                            80           200                    
        168 Lisa                            80           210                    
        168 Lisa                            80           220                    
        168 Lisa                            80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        168 Lisa                            80           240                    
        168 Lisa                            80           250                    
        168 Lisa                            80           260                    
        168 Lisa                            80           270                    
        169 Harrison                        80            10                    
        169 Harrison                        80            20                    
        169 Harrison                        80            30                    
        169 Harrison                        80            40                    
        169 Harrison                        80            50                    
        169 Harrison                        80            60                    
        169 Harrison                        80            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        169 Harrison                        80            80                    
        169 Harrison                        80            90                    
        169 Harrison                        80           100                    
        169 Harrison                        80           110                    
        169 Harrison                        80           120                    
        169 Harrison                        80           130                    
        169 Harrison                        80           140                    
        169 Harrison                        80           150                    
        169 Harrison                        80           160                    
        169 Harrison                        80           170                    
        169 Harrison                        80           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        169 Harrison                        80           190                    
        169 Harrison                        80           200                    
        169 Harrison                        80           210                    
        169 Harrison                        80           220                    
        169 Harrison                        80           230                    
        169 Harrison                        80           240                    
        169 Harrison                        80           250                    
        169 Harrison                        80           260                    
        169 Harrison                        80           270                    
        170 Tayler                          80            10                    
        170 Tayler                          80            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80            30                    
        170 Tayler                          80            40                    
        170 Tayler                          80            50                    
        170 Tayler                          80            60                    
        170 Tayler                          80            70                    
        170 Tayler                          80            80                    
        170 Tayler                          80            90                    
        170 Tayler                          80           100                    
        170 Tayler                          80           110                    
        170 Tayler                          80           120                    
        170 Tayler                          80           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80           140                    
        170 Tayler                          80           150                    
        170 Tayler                          80           160                    
        170 Tayler                          80           170                    
        170 Tayler                          80           180                    
        170 Tayler                          80           190                    
        170 Tayler                          80           200                    
        170 Tayler                          80           210                    
        170 Tayler                          80           220                    
        170 Tayler                          80           230                    
        170 Tayler                          80           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        170 Tayler                          80           250                    
        170 Tayler                          80           260                    
        170 Tayler                          80           270                    
        171 William                         80            10                    
        171 William                         80            20                    
        171 William                         80            30                    
        171 William                         80            40                    
        171 William                         80            50                    
        171 William                         80            60                    
        171 William                         80            70                    
        171 William                         80            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        171 William                         80            90                    
        171 William                         80           100                    
        171 William                         80           110                    
        171 William                         80           120                    
        171 William                         80           130                    
        171 William                         80           140                    
        171 William                         80           150                    
        171 William                         80           160                    
        171 William                         80           170                    
        171 William                         80           180                    
        171 William                         80           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        171 William                         80           200                    
        171 William                         80           210                    
        171 William                         80           220                    
        171 William                         80           230                    
        171 William                         80           240                    
        171 William                         80           250                    
        171 William                         80           260                    
        171 William                         80           270                    
        172 Elizabeth                       80            10                    
        172 Elizabeth                       80            20                    
        172 Elizabeth                       80            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80            40                    
        172 Elizabeth                       80            50                    
        172 Elizabeth                       80            60                    
        172 Elizabeth                       80            70                    
        172 Elizabeth                       80            80                    
        172 Elizabeth                       80            90                    
        172 Elizabeth                       80           100                    
        172 Elizabeth                       80           110                    
        172 Elizabeth                       80           120                    
        172 Elizabeth                       80           130                    
        172 Elizabeth                       80           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80           150                    
        172 Elizabeth                       80           160                    
        172 Elizabeth                       80           170                    
        172 Elizabeth                       80           180                    
        172 Elizabeth                       80           190                    
        172 Elizabeth                       80           200                    
        172 Elizabeth                       80           210                    
        172 Elizabeth                       80           220                    
        172 Elizabeth                       80           230                    
        172 Elizabeth                       80           240                    
        172 Elizabeth                       80           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        172 Elizabeth                       80           260                    
        172 Elizabeth                       80           270                    
        173 Sundita                         80            10                    
        173 Sundita                         80            20                    
        173 Sundita                         80            30                    
        173 Sundita                         80            40                    
        173 Sundita                         80            50                    
        173 Sundita                         80            60                    
        173 Sundita                         80            70                    
        173 Sundita                         80            80                    
        173 Sundita                         80            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        173 Sundita                         80           100                    
        173 Sundita                         80           110                    
        173 Sundita                         80           120                    
        173 Sundita                         80           130                    
        173 Sundita                         80           140                    
        173 Sundita                         80           150                    
        173 Sundita                         80           160                    
        173 Sundita                         80           170                    
        173 Sundita                         80           180                    
        173 Sundita                         80           190                    
        173 Sundita                         80           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        173 Sundita                         80           210                    
        173 Sundita                         80           220                    
        173 Sundita                         80           230                    
        173 Sundita                         80           240                    
        173 Sundita                         80           250                    
        173 Sundita                         80           260                    
        173 Sundita                         80           270                    
        174 Ellen                           80            10                    
        174 Ellen                           80            20                    
        174 Ellen                           80            30                    
        174 Ellen                           80            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80            50                    
        174 Ellen                           80            60                    
        174 Ellen                           80            70                    
        174 Ellen                           80            80                    
        174 Ellen                           80            90                    
        174 Ellen                           80           100                    
        174 Ellen                           80           110                    
        174 Ellen                           80           120                    
        174 Ellen                           80           130                    
        174 Ellen                           80           140                    
        174 Ellen                           80           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80           160                    
        174 Ellen                           80           170                    
        174 Ellen                           80           180                    
        174 Ellen                           80           190                    
        174 Ellen                           80           200                    
        174 Ellen                           80           210                    
        174 Ellen                           80           220                    
        174 Ellen                           80           230                    
        174 Ellen                           80           240                    
        174 Ellen                           80           250                    
        174 Ellen                           80           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        174 Ellen                           80           270                    
        175 Alyssa                          80            10                    
        175 Alyssa                          80            20                    
        175 Alyssa                          80            30                    
        175 Alyssa                          80            40                    
        175 Alyssa                          80            50                    
        175 Alyssa                          80            60                    
        175 Alyssa                          80            70                    
        175 Alyssa                          80            80                    
        175 Alyssa                          80            90                    
        175 Alyssa                          80           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        175 Alyssa                          80           110                    
        175 Alyssa                          80           120                    
        175 Alyssa                          80           130                    
        175 Alyssa                          80           140                    
        175 Alyssa                          80           150                    
        175 Alyssa                          80           160                    
        175 Alyssa                          80           170                    
        175 Alyssa                          80           180                    
        175 Alyssa                          80           190                    
        175 Alyssa                          80           200                    
        175 Alyssa                          80           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        175 Alyssa                          80           220                    
        175 Alyssa                          80           230                    
        175 Alyssa                          80           240                    
        175 Alyssa                          80           250                    
        175 Alyssa                          80           260                    
        175 Alyssa                          80           270                    
        176 Jonathon                        80            10                    
        176 Jonathon                        80            20                    
        176 Jonathon                        80            30                    
        176 Jonathon                        80            40                    
        176 Jonathon                        80            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        176 Jonathon                        80            60                    
        176 Jonathon                        80            70                    
        176 Jonathon                        80            80                    
        176 Jonathon                        80            90                    
        176 Jonathon                        80           100                    
        176 Jonathon                        80           110                    
        176 Jonathon                        80           120                    
        176 Jonathon                        80           130                    
        176 Jonathon                        80           140                    
        176 Jonathon                        80           150                    
        176 Jonathon                        80           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        176 Jonathon                        80           170                    
        176 Jonathon                        80           180                    
        176 Jonathon                        80           190                    
        176 Jonathon                        80           200                    
        176 Jonathon                        80           210                    
        176 Jonathon                        80           220                    
        176 Jonathon                        80           230                    
        176 Jonathon                        80           240                    
        176 Jonathon                        80           250                    
        176 Jonathon                        80           260                    
        176 Jonathon                        80           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80            10                    
        177 Jack                            80            20                    
        177 Jack                            80            30                    
        177 Jack                            80            40                    
        177 Jack                            80            50                    
        177 Jack                            80            60                    
        177 Jack                            80            70                    
        177 Jack                            80            80                    
        177 Jack                            80            90                    
        177 Jack                            80           100                    
        177 Jack                            80           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80           120                    
        177 Jack                            80           130                    
        177 Jack                            80           140                    
        177 Jack                            80           150                    
        177 Jack                            80           160                    
        177 Jack                            80           170                    
        177 Jack                            80           180                    
        177 Jack                            80           190                    
        177 Jack                            80           200                    
        177 Jack                            80           210                    
        177 Jack                            80           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        177 Jack                            80           230                    
        177 Jack                            80           240                    
        177 Jack                            80           250                    
        177 Jack                            80           260                    
        177 Jack                            80           270                    
        178 Kimberely                                     10                    
        178 Kimberely                                     20                    
        178 Kimberely                                     30                    
        178 Kimberely                                     40                    
        178 Kimberely                                     50                    
        178 Kimberely                                     60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        178 Kimberely                                     70                    
        178 Kimberely                                     80                    
        178 Kimberely                                     90                    
        178 Kimberely                                    100                    
        178 Kimberely                                    110                    
        178 Kimberely                                    120                    
        178 Kimberely                                    130                    
        178 Kimberely                                    140                    
        178 Kimberely                                    150                    
        178 Kimberely                                    160                    
        178 Kimberely                                    170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        178 Kimberely                                    180                    
        178 Kimberely                                    190                    
        178 Kimberely                                    200                    
        178 Kimberely                                    210                    
        178 Kimberely                                    220                    
        178 Kimberely                                    230                    
        178 Kimberely                                    240                    
        178 Kimberely                                    250                    
        178 Kimberely                                    260                    
        178 Kimberely                                    270                    
        179 Charles                         80            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80            20                    
        179 Charles                         80            30                    
        179 Charles                         80            40                    
        179 Charles                         80            50                    
        179 Charles                         80            60                    
        179 Charles                         80            70                    
        179 Charles                         80            80                    
        179 Charles                         80            90                    
        179 Charles                         80           100                    
        179 Charles                         80           110                    
        179 Charles                         80           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80           130                    
        179 Charles                         80           140                    
        179 Charles                         80           150                    
        179 Charles                         80           160                    
        179 Charles                         80           170                    
        179 Charles                         80           180                    
        179 Charles                         80           190                    
        179 Charles                         80           200                    
        179 Charles                         80           210                    
        179 Charles                         80           220                    
        179 Charles                         80           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        179 Charles                         80           240                    
        179 Charles                         80           250                    
        179 Charles                         80           260                    
        179 Charles                         80           270                    
        180 Winston                         50            10                    
        180 Winston                         50            20                    
        180 Winston                         50            30                    
        180 Winston                         50            40                    
        180 Winston                         50            50                    
        180 Winston                         50            60                    
        180 Winston                         50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        180 Winston                         50            80                    
        180 Winston                         50            90                    
        180 Winston                         50           100                    
        180 Winston                         50           110                    
        180 Winston                         50           120                    
        180 Winston                         50           130                    
        180 Winston                         50           140                    
        180 Winston                         50           150                    
        180 Winston                         50           160                    
        180 Winston                         50           170                    
        180 Winston                         50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        180 Winston                         50           190                    
        180 Winston                         50           200                    
        180 Winston                         50           210                    
        180 Winston                         50           220                    
        180 Winston                         50           230                    
        180 Winston                         50           240                    
        180 Winston                         50           250                    
        180 Winston                         50           260                    
        180 Winston                         50           270                    
        181 Jean                            50            10                    
        181 Jean                            50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50            30                    
        181 Jean                            50            40                    
        181 Jean                            50            50                    
        181 Jean                            50            60                    
        181 Jean                            50            70                    
        181 Jean                            50            80                    
        181 Jean                            50            90                    
        181 Jean                            50           100                    
        181 Jean                            50           110                    
        181 Jean                            50           120                    
        181 Jean                            50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50           140                    
        181 Jean                            50           150                    
        181 Jean                            50           160                    
        181 Jean                            50           170                    
        181 Jean                            50           180                    
        181 Jean                            50           190                    
        181 Jean                            50           200                    
        181 Jean                            50           210                    
        181 Jean                            50           220                    
        181 Jean                            50           230                    
        181 Jean                            50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        181 Jean                            50           250                    
        181 Jean                            50           260                    
        181 Jean                            50           270                    
        182 Martha                          50            10                    
        182 Martha                          50            20                    
        182 Martha                          50            30                    
        182 Martha                          50            40                    
        182 Martha                          50            50                    
        182 Martha                          50            60                    
        182 Martha                          50            70                    
        182 Martha                          50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        182 Martha                          50            90                    
        182 Martha                          50           100                    
        182 Martha                          50           110                    
        182 Martha                          50           120                    
        182 Martha                          50           130                    
        182 Martha                          50           140                    
        182 Martha                          50           150                    
        182 Martha                          50           160                    
        182 Martha                          50           170                    
        182 Martha                          50           180                    
        182 Martha                          50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        182 Martha                          50           200                    
        182 Martha                          50           210                    
        182 Martha                          50           220                    
        182 Martha                          50           230                    
        182 Martha                          50           240                    
        182 Martha                          50           250                    
        182 Martha                          50           260                    
        182 Martha                          50           270                    
        183 Girard                          50            10                    
        183 Girard                          50            20                    
        183 Girard                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50            40                    
        183 Girard                          50            50                    
        183 Girard                          50            60                    
        183 Girard                          50            70                    
        183 Girard                          50            80                    
        183 Girard                          50            90                    
        183 Girard                          50           100                    
        183 Girard                          50           110                    
        183 Girard                          50           120                    
        183 Girard                          50           130                    
        183 Girard                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50           150                    
        183 Girard                          50           160                    
        183 Girard                          50           170                    
        183 Girard                          50           180                    
        183 Girard                          50           190                    
        183 Girard                          50           200                    
        183 Girard                          50           210                    
        183 Girard                          50           220                    
        183 Girard                          50           230                    
        183 Girard                          50           240                    
        183 Girard                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        183 Girard                          50           260                    
        183 Girard                          50           270                    
        184 Nandita                         50            10                    
        184 Nandita                         50            20                    
        184 Nandita                         50            30                    
        184 Nandita                         50            40                    
        184 Nandita                         50            50                    
        184 Nandita                         50            60                    
        184 Nandita                         50            70                    
        184 Nandita                         50            80                    
        184 Nandita                         50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        184 Nandita                         50           100                    
        184 Nandita                         50           110                    
        184 Nandita                         50           120                    
        184 Nandita                         50           130                    
        184 Nandita                         50           140                    
        184 Nandita                         50           150                    
        184 Nandita                         50           160                    
        184 Nandita                         50           170                    
        184 Nandita                         50           180                    
        184 Nandita                         50           190                    
        184 Nandita                         50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        184 Nandita                         50           210                    
        184 Nandita                         50           220                    
        184 Nandita                         50           230                    
        184 Nandita                         50           240                    
        184 Nandita                         50           250                    
        184 Nandita                         50           260                    
        184 Nandita                         50           270                    
        185 Alexis                          50            10                    
        185 Alexis                          50            20                    
        185 Alexis                          50            30                    
        185 Alexis                          50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50            50                    
        185 Alexis                          50            60                    
        185 Alexis                          50            70                    
        185 Alexis                          50            80                    
        185 Alexis                          50            90                    
        185 Alexis                          50           100                    
        185 Alexis                          50           110                    
        185 Alexis                          50           120                    
        185 Alexis                          50           130                    
        185 Alexis                          50           140                    
        185 Alexis                          50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50           160                    
        185 Alexis                          50           170                    
        185 Alexis                          50           180                    
        185 Alexis                          50           190                    
        185 Alexis                          50           200                    
        185 Alexis                          50           210                    
        185 Alexis                          50           220                    
        185 Alexis                          50           230                    
        185 Alexis                          50           240                    
        185 Alexis                          50           250                    
        185 Alexis                          50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        185 Alexis                          50           270                    
        186 Julia                           50            10                    
        186 Julia                           50            20                    
        186 Julia                           50            30                    
        186 Julia                           50            40                    
        186 Julia                           50            50                    
        186 Julia                           50            60                    
        186 Julia                           50            70                    
        186 Julia                           50            80                    
        186 Julia                           50            90                    
        186 Julia                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        186 Julia                           50           110                    
        186 Julia                           50           120                    
        186 Julia                           50           130                    
        186 Julia                           50           140                    
        186 Julia                           50           150                    
        186 Julia                           50           160                    
        186 Julia                           50           170                    
        186 Julia                           50           180                    
        186 Julia                           50           190                    
        186 Julia                           50           200                    
        186 Julia                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        186 Julia                           50           220                    
        186 Julia                           50           230                    
        186 Julia                           50           240                    
        186 Julia                           50           250                    
        186 Julia                           50           260                    
        186 Julia                           50           270                    
        187 Anthony                         50            10                    
        187 Anthony                         50            20                    
        187 Anthony                         50            30                    
        187 Anthony                         50            40                    
        187 Anthony                         50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        187 Anthony                         50            60                    
        187 Anthony                         50            70                    
        187 Anthony                         50            80                    
        187 Anthony                         50            90                    
        187 Anthony                         50           100                    
        187 Anthony                         50           110                    
        187 Anthony                         50           120                    
        187 Anthony                         50           130                    
        187 Anthony                         50           140                    
        187 Anthony                         50           150                    
        187 Anthony                         50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        187 Anthony                         50           170                    
        187 Anthony                         50           180                    
        187 Anthony                         50           190                    
        187 Anthony                         50           200                    
        187 Anthony                         50           210                    
        187 Anthony                         50           220                    
        187 Anthony                         50           230                    
        187 Anthony                         50           240                    
        187 Anthony                         50           250                    
        187 Anthony                         50           260                    
        187 Anthony                         50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50            10                    
        188 Kelly                           50            20                    
        188 Kelly                           50            30                    
        188 Kelly                           50            40                    
        188 Kelly                           50            50                    
        188 Kelly                           50            60                    
        188 Kelly                           50            70                    
        188 Kelly                           50            80                    
        188 Kelly                           50            90                    
        188 Kelly                           50           100                    
        188 Kelly                           50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50           120                    
        188 Kelly                           50           130                    
        188 Kelly                           50           140                    
        188 Kelly                           50           150                    
        188 Kelly                           50           160                    
        188 Kelly                           50           170                    
        188 Kelly                           50           180                    
        188 Kelly                           50           190                    
        188 Kelly                           50           200                    
        188 Kelly                           50           210                    
        188 Kelly                           50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        188 Kelly                           50           230                    
        188 Kelly                           50           240                    
        188 Kelly                           50           250                    
        188 Kelly                           50           260                    
        188 Kelly                           50           270                    
        189 Jennifer                        50            10                    
        189 Jennifer                        50            20                    
        189 Jennifer                        50            30                    
        189 Jennifer                        50            40                    
        189 Jennifer                        50            50                    
        189 Jennifer                        50            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        189 Jennifer                        50            70                    
        189 Jennifer                        50            80                    
        189 Jennifer                        50            90                    
        189 Jennifer                        50           100                    
        189 Jennifer                        50           110                    
        189 Jennifer                        50           120                    
        189 Jennifer                        50           130                    
        189 Jennifer                        50           140                    
        189 Jennifer                        50           150                    
        189 Jennifer                        50           160                    
        189 Jennifer                        50           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        189 Jennifer                        50           180                    
        189 Jennifer                        50           190                    
        189 Jennifer                        50           200                    
        189 Jennifer                        50           210                    
        189 Jennifer                        50           220                    
        189 Jennifer                        50           230                    
        189 Jennifer                        50           240                    
        189 Jennifer                        50           250                    
        189 Jennifer                        50           260                    
        189 Jennifer                        50           270                    
        190 Timothy                         50            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50            20                    
        190 Timothy                         50            30                    
        190 Timothy                         50            40                    
        190 Timothy                         50            50                    
        190 Timothy                         50            60                    
        190 Timothy                         50            70                    
        190 Timothy                         50            80                    
        190 Timothy                         50            90                    
        190 Timothy                         50           100                    
        190 Timothy                         50           110                    
        190 Timothy                         50           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50           130                    
        190 Timothy                         50           140                    
        190 Timothy                         50           150                    
        190 Timothy                         50           160                    
        190 Timothy                         50           170                    
        190 Timothy                         50           180                    
        190 Timothy                         50           190                    
        190 Timothy                         50           200                    
        190 Timothy                         50           210                    
        190 Timothy                         50           220                    
        190 Timothy                         50           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        190 Timothy                         50           240                    
        190 Timothy                         50           250                    
        190 Timothy                         50           260                    
        190 Timothy                         50           270                    
        191 Randall                         50            10                    
        191 Randall                         50            20                    
        191 Randall                         50            30                    
        191 Randall                         50            40                    
        191 Randall                         50            50                    
        191 Randall                         50            60                    
        191 Randall                         50            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        191 Randall                         50            80                    
        191 Randall                         50            90                    
        191 Randall                         50           100                    
        191 Randall                         50           110                    
        191 Randall                         50           120                    
        191 Randall                         50           130                    
        191 Randall                         50           140                    
        191 Randall                         50           150                    
        191 Randall                         50           160                    
        191 Randall                         50           170                    
        191 Randall                         50           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        191 Randall                         50           190                    
        191 Randall                         50           200                    
        191 Randall                         50           210                    
        191 Randall                         50           220                    
        191 Randall                         50           230                    
        191 Randall                         50           240                    
        191 Randall                         50           250                    
        191 Randall                         50           260                    
        191 Randall                         50           270                    
        192 Sarah                           50            10                    
        192 Sarah                           50            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50            30                    
        192 Sarah                           50            40                    
        192 Sarah                           50            50                    
        192 Sarah                           50            60                    
        192 Sarah                           50            70                    
        192 Sarah                           50            80                    
        192 Sarah                           50            90                    
        192 Sarah                           50           100                    
        192 Sarah                           50           110                    
        192 Sarah                           50           120                    
        192 Sarah                           50           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50           140                    
        192 Sarah                           50           150                    
        192 Sarah                           50           160                    
        192 Sarah                           50           170                    
        192 Sarah                           50           180                    
        192 Sarah                           50           190                    
        192 Sarah                           50           200                    
        192 Sarah                           50           210                    
        192 Sarah                           50           220                    
        192 Sarah                           50           230                    
        192 Sarah                           50           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        192 Sarah                           50           250                    
        192 Sarah                           50           260                    
        192 Sarah                           50           270                    
        193 Britney                         50            10                    
        193 Britney                         50            20                    
        193 Britney                         50            30                    
        193 Britney                         50            40                    
        193 Britney                         50            50                    
        193 Britney                         50            60                    
        193 Britney                         50            70                    
        193 Britney                         50            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        193 Britney                         50            90                    
        193 Britney                         50           100                    
        193 Britney                         50           110                    
        193 Britney                         50           120                    
        193 Britney                         50           130                    
        193 Britney                         50           140                    
        193 Britney                         50           150                    
        193 Britney                         50           160                    
        193 Britney                         50           170                    
        193 Britney                         50           180                    
        193 Britney                         50           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        193 Britney                         50           200                    
        193 Britney                         50           210                    
        193 Britney                         50           220                    
        193 Britney                         50           230                    
        193 Britney                         50           240                    
        193 Britney                         50           250                    
        193 Britney                         50           260                    
        193 Britney                         50           270                    
        194 Samuel                          50            10                    
        194 Samuel                          50            20                    
        194 Samuel                          50            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50            40                    
        194 Samuel                          50            50                    
        194 Samuel                          50            60                    
        194 Samuel                          50            70                    
        194 Samuel                          50            80                    
        194 Samuel                          50            90                    
        194 Samuel                          50           100                    
        194 Samuel                          50           110                    
        194 Samuel                          50           120                    
        194 Samuel                          50           130                    
        194 Samuel                          50           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50           150                    
        194 Samuel                          50           160                    
        194 Samuel                          50           170                    
        194 Samuel                          50           180                    
        194 Samuel                          50           190                    
        194 Samuel                          50           200                    
        194 Samuel                          50           210                    
        194 Samuel                          50           220                    
        194 Samuel                          50           230                    
        194 Samuel                          50           240                    
        194 Samuel                          50           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        194 Samuel                          50           260                    
        194 Samuel                          50           270                    
        195 Vance                           50            10                    
        195 Vance                           50            20                    
        195 Vance                           50            30                    
        195 Vance                           50            40                    
        195 Vance                           50            50                    
        195 Vance                           50            60                    
        195 Vance                           50            70                    
        195 Vance                           50            80                    
        195 Vance                           50            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        195 Vance                           50           100                    
        195 Vance                           50           110                    
        195 Vance                           50           120                    
        195 Vance                           50           130                    
        195 Vance                           50           140                    
        195 Vance                           50           150                    
        195 Vance                           50           160                    
        195 Vance                           50           170                    
        195 Vance                           50           180                    
        195 Vance                           50           190                    
        195 Vance                           50           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        195 Vance                           50           210                    
        195 Vance                           50           220                    
        195 Vance                           50           230                    
        195 Vance                           50           240                    
        195 Vance                           50           250                    
        195 Vance                           50           260                    
        195 Vance                           50           270                    
        196 Alana                           50            10                    
        196 Alana                           50            20                    
        196 Alana                           50            30                    
        196 Alana                           50            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50            50                    
        196 Alana                           50            60                    
        196 Alana                           50            70                    
        196 Alana                           50            80                    
        196 Alana                           50            90                    
        196 Alana                           50           100                    
        196 Alana                           50           110                    
        196 Alana                           50           120                    
        196 Alana                           50           130                    
        196 Alana                           50           140                    
        196 Alana                           50           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50           160                    
        196 Alana                           50           170                    
        196 Alana                           50           180                    
        196 Alana                           50           190                    
        196 Alana                           50           200                    
        196 Alana                           50           210                    
        196 Alana                           50           220                    
        196 Alana                           50           230                    
        196 Alana                           50           240                    
        196 Alana                           50           250                    
        196 Alana                           50           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        196 Alana                           50           270                    
        197 Kevin                           50            10                    
        197 Kevin                           50            20                    
        197 Kevin                           50            30                    
        197 Kevin                           50            40                    
        197 Kevin                           50            50                    
        197 Kevin                           50            60                    
        197 Kevin                           50            70                    
        197 Kevin                           50            80                    
        197 Kevin                           50            90                    
        197 Kevin                           50           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        197 Kevin                           50           110                    
        197 Kevin                           50           120                    
        197 Kevin                           50           130                    
        197 Kevin                           50           140                    
        197 Kevin                           50           150                    
        197 Kevin                           50           160                    
        197 Kevin                           50           170                    
        197 Kevin                           50           180                    
        197 Kevin                           50           190                    
        197 Kevin                           50           200                    
        197 Kevin                           50           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        197 Kevin                           50           220                    
        197 Kevin                           50           230                    
        197 Kevin                           50           240                    
        197 Kevin                           50           250                    
        197 Kevin                           50           260                    
        197 Kevin                           50           270                    
        198 Donald                          50            10                    
        198 Donald                          50            20                    
        198 Donald                          50            30                    
        198 Donald                          50            40                    
        198 Donald                          50            50                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        198 Donald                          50            60                    
        198 Donald                          50            70                    
        198 Donald                          50            80                    
        198 Donald                          50            90                    
        198 Donald                          50           100                    
        198 Donald                          50           110                    
        198 Donald                          50           120                    
        198 Donald                          50           130                    
        198 Donald                          50           140                    
        198 Donald                          50           150                    
        198 Donald                          50           160                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        198 Donald                          50           170                    
        198 Donald                          50           180                    
        198 Donald                          50           190                    
        198 Donald                          50           200                    
        198 Donald                          50           210                    
        198 Donald                          50           220                    
        198 Donald                          50           230                    
        198 Donald                          50           240                    
        198 Donald                          50           250                    
        198 Donald                          50           260                    
        198 Donald                          50           270                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50            10                    
        199 Douglas                         50            20                    
        199 Douglas                         50            30                    
        199 Douglas                         50            40                    
        199 Douglas                         50            50                    
        199 Douglas                         50            60                    
        199 Douglas                         50            70                    
        199 Douglas                         50            80                    
        199 Douglas                         50            90                    
        199 Douglas                         50           100                    
        199 Douglas                         50           110                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50           120                    
        199 Douglas                         50           130                    
        199 Douglas                         50           140                    
        199 Douglas                         50           150                    
        199 Douglas                         50           160                    
        199 Douglas                         50           170                    
        199 Douglas                         50           180                    
        199 Douglas                         50           190                    
        199 Douglas                         50           200                    
        199 Douglas                         50           210                    
        199 Douglas                         50           220                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        199 Douglas                         50           230                    
        199 Douglas                         50           240                    
        199 Douglas                         50           250                    
        199 Douglas                         50           260                    
        199 Douglas                         50           270                    
        200 Jennifer                        10            10                    
        200 Jennifer                        10            20                    
        200 Jennifer                        10            30                    
        200 Jennifer                        10            40                    
        200 Jennifer                        10            50                    
        200 Jennifer                        10            60                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        200 Jennifer                        10            70                    
        200 Jennifer                        10            80                    
        200 Jennifer                        10            90                    
        200 Jennifer                        10           100                    
        200 Jennifer                        10           110                    
        200 Jennifer                        10           120                    
        200 Jennifer                        10           130                    
        200 Jennifer                        10           140                    
        200 Jennifer                        10           150                    
        200 Jennifer                        10           160                    
        200 Jennifer                        10           170                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        200 Jennifer                        10           180                    
        200 Jennifer                        10           190                    
        200 Jennifer                        10           200                    
        200 Jennifer                        10           210                    
        200 Jennifer                        10           220                    
        200 Jennifer                        10           230                    
        200 Jennifer                        10           240                    
        200 Jennifer                        10           250                    
        200 Jennifer                        10           260                    
        200 Jennifer                        10           270                    
        201 Michael                         20            10                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20            20                    
        201 Michael                         20            30                    
        201 Michael                         20            40                    
        201 Michael                         20            50                    
        201 Michael                         20            60                    
        201 Michael                         20            70                    
        201 Michael                         20            80                    
        201 Michael                         20            90                    
        201 Michael                         20           100                    
        201 Michael                         20           110                    
        201 Michael                         20           120                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20           130                    
        201 Michael                         20           140                    
        201 Michael                         20           150                    
        201 Michael                         20           160                    
        201 Michael                         20           170                    
        201 Michael                         20           180                    
        201 Michael                         20           190                    
        201 Michael                         20           200                    
        201 Michael                         20           210                    
        201 Michael                         20           220                    
        201 Michael                         20           230                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        201 Michael                         20           240                    
        201 Michael                         20           250                    
        201 Michael                         20           260                    
        201 Michael                         20           270                    
        202 Pat                             20            10                    
        202 Pat                             20            20                    
        202 Pat                             20            30                    
        202 Pat                             20            40                    
        202 Pat                             20            50                    
        202 Pat                             20            60                    
        202 Pat                             20            70                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        202 Pat                             20            80                    
        202 Pat                             20            90                    
        202 Pat                             20           100                    
        202 Pat                             20           110                    
        202 Pat                             20           120                    
        202 Pat                             20           130                    
        202 Pat                             20           140                    
        202 Pat                             20           150                    
        202 Pat                             20           160                    
        202 Pat                             20           170                    
        202 Pat                             20           180                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        202 Pat                             20           190                    
        202 Pat                             20           200                    
        202 Pat                             20           210                    
        202 Pat                             20           220                    
        202 Pat                             20           230                    
        202 Pat                             20           240                    
        202 Pat                             20           250                    
        202 Pat                             20           260                    
        202 Pat                             20           270                    
        203 Susan                           40            10                    
        203 Susan                           40            20                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40            30                    
        203 Susan                           40            40                    
        203 Susan                           40            50                    
        203 Susan                           40            60                    
        203 Susan                           40            70                    
        203 Susan                           40            80                    
        203 Susan                           40            90                    
        203 Susan                           40           100                    
        203 Susan                           40           110                    
        203 Susan                           40           120                    
        203 Susan                           40           130                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40           140                    
        203 Susan                           40           150                    
        203 Susan                           40           160                    
        203 Susan                           40           170                    
        203 Susan                           40           180                    
        203 Susan                           40           190                    
        203 Susan                           40           200                    
        203 Susan                           40           210                    
        203 Susan                           40           220                    
        203 Susan                           40           230                    
        203 Susan                           40           240                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        203 Susan                           40           250                    
        203 Susan                           40           260                    
        203 Susan                           40           270                    
        204 Hermann                         70            10                    
        204 Hermann                         70            20                    
        204 Hermann                         70            30                    
        204 Hermann                         70            40                    
        204 Hermann                         70            50                    
        204 Hermann                         70            60                    
        204 Hermann                         70            70                    
        204 Hermann                         70            80                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        204 Hermann                         70            90                    
        204 Hermann                         70           100                    
        204 Hermann                         70           110                    
        204 Hermann                         70           120                    
        204 Hermann                         70           130                    
        204 Hermann                         70           140                    
        204 Hermann                         70           150                    
        204 Hermann                         70           160                    
        204 Hermann                         70           170                    
        204 Hermann                         70           180                    
        204 Hermann                         70           190                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        204 Hermann                         70           200                    
        204 Hermann                         70           210                    
        204 Hermann                         70           220                    
        204 Hermann                         70           230                    
        204 Hermann                         70           240                    
        204 Hermann                         70           250                    
        204 Hermann                         70           260                    
        204 Hermann                         70           270                    
        205 Shelley                        110            10                    
        205 Shelley                        110            20                    
        205 Shelley                        110            30                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110            40                    
        205 Shelley                        110            50                    
        205 Shelley                        110            60                    
        205 Shelley                        110            70                    
        205 Shelley                        110            80                    
        205 Shelley                        110            90                    
        205 Shelley                        110           100                    
        205 Shelley                        110           110                    
        205 Shelley                        110           120                    
        205 Shelley                        110           130                    
        205 Shelley                        110           140                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110           150                    
        205 Shelley                        110           160                    
        205 Shelley                        110           170                    
        205 Shelley                        110           180                    
        205 Shelley                        110           190                    
        205 Shelley                        110           200                    
        205 Shelley                        110           210                    
        205 Shelley                        110           220                    
        205 Shelley                        110           230                    
        205 Shelley                        110           240                    
        205 Shelley                        110           250                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        205 Shelley                        110           260                    
        205 Shelley                        110           270                    
        206 William                        110            10                    
        206 William                        110            20                    
        206 William                        110            30                    
        206 William                        110            40                    
        206 William                        110            50                    
        206 William                        110            60                    
        206 William                        110            70                    
        206 William                        110            80                    
        206 William                        110            90                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        206 William                        110           100                    
        206 William                        110           110                    
        206 William                        110           120                    
        206 William                        110           130                    
        206 William                        110           140                    
        206 William                        110           150                    
        206 William                        110           160                    
        206 William                        110           170                    
        206 William                        110           180                    
        206 William                        110           190                    
        206 William                        110           200                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        206 William                        110           210                    
        206 William                        110           220                    
        206 William                        110           230                    
        206 William                        110           240                    
        206 William                        110           250                    
        206 William                        110           260                    
        206 William                        110           270                    
        207 Jack                            10            10                    
        207 Jack                            10            20                    
        207 Jack                            10            30                    
        207 Jack                            10            40                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10            50                    
        207 Jack                            10            60                    
        207 Jack                            10            70                    
        207 Jack                            10            80                    
        207 Jack                            10            90                    
        207 Jack                            10           100                    
        207 Jack                            10           110                    
        207 Jack                            10           120                    
        207 Jack                            10           130                    
        207 Jack                            10           140                    
        207 Jack                            10           150                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10           160                    
        207 Jack                            10           170                    
        207 Jack                            10           180                    
        207 Jack                            10           190                    
        207 Jack                            10           200                    
        207 Jack                            10           210                    
        207 Jack                            10           220                    
        207 Jack                            10           230                    
        207 Jack                            10           240                    
        207 Jack                            10           250                    
        207 Jack                            10           260                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        207 Jack                            10           270                    
        208 Ana                             20            10                    
        208 Ana                             20            20                    
        208 Ana                             20            30                    
        208 Ana                             20            40                    
        208 Ana                             20            50                    
        208 Ana                             20            60                    
        208 Ana                             20            70                    
        208 Ana                             20            80                    
        208 Ana                             20            90                    
        208 Ana                             20           100                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        208 Ana                             20           110                    
        208 Ana                             20           120                    
        208 Ana                             20           130                    
        208 Ana                             20           140                    
        208 Ana                             20           150                    
        208 Ana                             20           160                    
        208 Ana                             20           170                    
        208 Ana                             20           180                    
        208 Ana                             20           190                    
        208 Ana                             20           200                    
        208 Ana                             20           210                    

EMPLOYEE_ID FIRST_NAME           DEPARTMENT_ID DEPARTMENT_ID                    
----------- -------------------- ------------- -------------                    
        208 Ana                             20           220                    
        208 Ana                             20           230                    
        208 Ana                             20           240                    
        208 Ana                             20           250                    
        208 Ana                             20           260                    
        208 Ana                             20           270                    

2943 rows selected.

SQL> select employee_id,first_name,manager_id from employees;

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        100 Steven                                                              
        101 Neena                       100                                     
        102 Lex                         100                                     
        103 Alexander                   102                                     
        104 Bruce                       103                                     
        105 David                       103                                     
        106 Valli                       103                                     
        107 Diana                       103                                     
        108 Nancy                       101                                     
        109 Daniel                      108                                     
        110 John                        108                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        111 Ismael                      108                                     
        112 Jose Manuel                 108                                     
        113 Luis                        108                                     
        114 Den                         100                                     
        115 Alexander                   114                                     
        116 Shelli                      114                                     
        117 Sigal                       114                                     
        118 Guy                         114                                     
        119 Karen                       114                                     
        120 Matthew                     100                                     
        121 Adam                        100                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        122 Payam                       100                                     
        123 Shanta                      100                                     
        124 Kevin                       100                                     
        125 Julia                       120                                     
        126 Irene                       120                                     
        127 James                       120                                     
        128 Steven                      120                                     
        129 Laura                       121                                     
        130 Mozhe                       121                                     
        131 James                       121                                     
        132 TJ                          121                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        133 Jason                       122                                     
        134 Michael                     122                                     
        135 Ki                          122                                     
        136 Hazel                       122                                     
        137 Renske                      123                                     
        138 Stephen                     123                                     
        139 John                        123                                     
        140 Joshua                      123                                     
        141 Trenna                      124                                     
        142 Curtis                      124                                     
        143 Randall                     124                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        144 Peter                       124                                     
        145 John                        100                                     
        146 Karen                       100                                     
        147 Alberto                     100                                     
        148 Gerald                      100                                     
        149 Eleni                       100                                     
        150 Sean                        145                                     
        151 David                       145                                     
        152 Peter                       145                                     
        153 Christopher                 145                                     
        154 Nanette                     145                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        155 Oliver                      145                                     
        156 Janette                     146                                     
        157 Patrick                     146                                     
        158 Allan                       146                                     
        159 Lindsey                     146                                     
        160 Louise                      146                                     
        161 Sarath                      146                                     
        162 Clara                       147                                     
        163 Danielle                    147                                     
        164 Mattea                      147                                     
        165 David                       147                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        166 Sundar                      147                                     
        167 Amit                        147                                     
        168 Lisa                        148                                     
        169 Harrison                    148                                     
        170 Tayler                      148                                     
        171 William                     148                                     
        172 Elizabeth                   148                                     
        173 Sundita                     148                                     
        174 Ellen                       149                                     
        175 Alyssa                      149                                     
        176 Jonathon                    149                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        177 Jack                        149                                     
        178 Kimberely                   149                                     
        179 Charles                     149                                     
        180 Winston                     120                                     
        181 Jean                        120                                     
        182 Martha                      120                                     
        183 Girard                      120                                     
        184 Nandita                     121                                     
        185 Alexis                      121                                     
        186 Julia                       121                                     
        187 Anthony                     121                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        188 Kelly                       122                                     
        189 Jennifer                    122                                     
        190 Timothy                     122                                     
        191 Randall                     122                                     
        192 Sarah                       123                                     
        193 Britney                     123                                     
        194 Samuel                      123                                     
        195 Vance                       123                                     
        196 Alana                       124                                     
        197 Kevin                       124                                     
        198 Donald                      124                                     

EMPLOYEE_ID FIRST_NAME           MANAGER_ID                                     
----------- -------------------- ----------                                     
        199 Douglas                     124                                     
        200 Jennifer                    101                                     
        201 Michael                     100                                     
        202 Pat                         201                                     
        203 Susan                       101                                     
        204 Hermann                     101                                     
        205 Shelley                     101                                     
        206 William                     205                                     
        207 Jack                                                                
        208 Ana                                                                 

109 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select emp.employee_id,emp.first_name,emp.manager_id,mgr.first_name
  2  from employees emp,employees  mgr
  3* where emp.manager_id= mgr.employee_id
SQL> /

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        168 Lisa                        148 Gerald                              
        169 Harrison                    148 Gerald                              
        170 Tayler                      148 Gerald                              
        171 William                     148 Gerald                              
        172 Elizabeth                   148 Gerald                              
        173 Sundita                     148 Gerald                              
        162 Clara                       147 Alberto                             
        163 Danielle                    147 Alberto                             
        164 Mattea                      147 Alberto                             
        165 David                       147 Alberto                             
        166 Sundar                      147 Alberto                             

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        167 Amit                        147 Alberto                             
        129 Laura                       121 Adam                                
        130 Mozhe                       121 Adam                                
        131 James                       121 Adam                                
        132 TJ                          121 Adam                                
        184 Nandita                     121 Adam                                
        185 Alexis                      121 Adam                                
        186 Julia                       121 Adam                                
        187 Anthony                     121 Adam                                
        103 Alexander                   102 Lex                                 
        109 Daniel                      108 Nancy                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        110 John                        108 Nancy                               
        111 Ismael                      108 Nancy                               
        112 Jose Manuel                 108 Nancy                               
        113 Luis                        108 Nancy                               
        206 William                     205 Shelley                             
        104 Bruce                       103 Alexander                           
        105 David                       103 Alexander                           
        106 Valli                       103 Alexander                           
        107 Diana                       103 Alexander                           
        133 Jason                       122 Payam                               
        134 Michael                     122 Payam                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        135 Ki                          122 Payam                               
        136 Hazel                       122 Payam                               
        188 Kelly                       122 Payam                               
        189 Jennifer                    122 Payam                               
        190 Timothy                     122 Payam                               
        191 Randall                     122 Payam                               
        101 Neena                       100 Steven                              
        102 Lex                         100 Steven                              
        114 Den                         100 Steven                              
        120 Matthew                     100 Steven                              
        121 Adam                        100 Steven                              

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        122 Payam                       100 Steven                              
        123 Shanta                      100 Steven                              
        124 Kevin                       100 Steven                              
        145 John                        100 Steven                              
        146 Karen                       100 Steven                              
        147 Alberto                     100 Steven                              
        148 Gerald                      100 Steven                              
        149 Eleni                       100 Steven                              
        201 Michael                     100 Steven                              
        115 Alexander                   114 Den                                 
        116 Shelli                      114 Den                                 

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        117 Sigal                       114 Den                                 
        118 Guy                         114 Den                                 
        119 Karen                       114 Den                                 
        202 Pat                         201 Michael                             
        141 Trenna                      124 Kevin                               
        142 Curtis                      124 Kevin                               
        143 Randall                     124 Kevin                               
        144 Peter                       124 Kevin                               
        196 Alana                       124 Kevin                               
        197 Kevin                       124 Kevin                               
        198 Donald                      124 Kevin                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        199 Douglas                     124 Kevin                               
        156 Janette                     146 Karen                               
        157 Patrick                     146 Karen                               
        158 Allan                       146 Karen                               
        159 Lindsey                     146 Karen                               
        160 Louise                      146 Karen                               
        161 Sarath                      146 Karen                               
        150 Sean                        145 John                                
        151 David                       145 John                                
        152 Peter                       145 John                                
        153 Christopher                 145 John                                

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        154 Nanette                     145 John                                
        155 Oliver                      145 John                                
        137 Renske                      123 Shanta                              
        138 Stephen                     123 Shanta                              
        139 John                        123 Shanta                              
        140 Joshua                      123 Shanta                              
        192 Sarah                       123 Shanta                              
        193 Britney                     123 Shanta                              
        194 Samuel                      123 Shanta                              
        195 Vance                       123 Shanta                              
        125 Julia                       120 Matthew                             

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        126 Irene                       120 Matthew                             
        127 James                       120 Matthew                             
        128 Steven                      120 Matthew                             
        180 Winston                     120 Matthew                             
        181 Jean                        120 Matthew                             
        182 Martha                      120 Matthew                             
        183 Girard                      120 Matthew                             
        108 Nancy                       101 Neena                               
        200 Jennifer                    101 Neena                               
        203 Susan                       101 Neena                               
        204 Hermann                     101 Neena                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        205 Shelley                     101 Neena                               
        174 Ellen                       149 Eleni                               
        175 Alyssa                      149 Eleni                               
        176 Jonathon                    149 Eleni                               
        177 Jack                        149 Eleni                               
        178 Kimberely                   149 Eleni                               
        179 Charles                     149 Eleni                               

106 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select emp.employee_id,emp.first_name,emp.manager_id,mgr.first_name
  2  from employees emp,employees  mgr
  3  where emp.manager_id= mgr.employee_id
  4* order by emp.employee_id
SQL> /

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        101 Neena                       100 Steven                              
        102 Lex                         100 Steven                              
        103 Alexander                   102 Lex                                 
        104 Bruce                       103 Alexander                           
        105 David                       103 Alexander                           
        106 Valli                       103 Alexander                           
        107 Diana                       103 Alexander                           
        108 Nancy                       101 Neena                               
        109 Daniel                      108 Nancy                               
        110 John                        108 Nancy                               
        111 Ismael                      108 Nancy                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        112 Jose Manuel                 108 Nancy                               
        113 Luis                        108 Nancy                               
        114 Den                         100 Steven                              
        115 Alexander                   114 Den                                 
        116 Shelli                      114 Den                                 
        117 Sigal                       114 Den                                 
        118 Guy                         114 Den                                 
        119 Karen                       114 Den                                 
        120 Matthew                     100 Steven                              
        121 Adam                        100 Steven                              
        122 Payam                       100 Steven                              

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        123 Shanta                      100 Steven                              
        124 Kevin                       100 Steven                              
        125 Julia                       120 Matthew                             
        126 Irene                       120 Matthew                             
        127 James                       120 Matthew                             
        128 Steven                      120 Matthew                             
        129 Laura                       121 Adam                                
        130 Mozhe                       121 Adam                                
        131 James                       121 Adam                                
        132 TJ                          121 Adam                                
        133 Jason                       122 Payam                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        134 Michael                     122 Payam                               
        135 Ki                          122 Payam                               
        136 Hazel                       122 Payam                               
        137 Renske                      123 Shanta                              
        138 Stephen                     123 Shanta                              
        139 John                        123 Shanta                              
        140 Joshua                      123 Shanta                              
        141 Trenna                      124 Kevin                               
        142 Curtis                      124 Kevin                               
        143 Randall                     124 Kevin                               
        144 Peter                       124 Kevin                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        145 John                        100 Steven                              
        146 Karen                       100 Steven                              
        147 Alberto                     100 Steven                              
        148 Gerald                      100 Steven                              
        149 Eleni                       100 Steven                              
        150 Sean                        145 John                                
        151 David                       145 John                                
        152 Peter                       145 John                                
        153 Christopher                 145 John                                
        154 Nanette                     145 John                                
        155 Oliver                      145 John                                

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        156 Janette                     146 Karen                               
        157 Patrick                     146 Karen                               
        158 Allan                       146 Karen                               
        159 Lindsey                     146 Karen                               
        160 Louise                      146 Karen                               
        161 Sarath                      146 Karen                               
        162 Clara                       147 Alberto                             
        163 Danielle                    147 Alberto                             
        164 Mattea                      147 Alberto                             
        165 David                       147 Alberto                             
        166 Sundar                      147 Alberto                             

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        167 Amit                        147 Alberto                             
        168 Lisa                        148 Gerald                              
        169 Harrison                    148 Gerald                              
        170 Tayler                      148 Gerald                              
        171 William                     148 Gerald                              
        172 Elizabeth                   148 Gerald                              
        173 Sundita                     148 Gerald                              
        174 Ellen                       149 Eleni                               
        175 Alyssa                      149 Eleni                               
        176 Jonathon                    149 Eleni                               
        177 Jack                        149 Eleni                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        178 Kimberely                   149 Eleni                               
        179 Charles                     149 Eleni                               
        180 Winston                     120 Matthew                             
        181 Jean                        120 Matthew                             
        182 Martha                      120 Matthew                             
        183 Girard                      120 Matthew                             
        184 Nandita                     121 Adam                                
        185 Alexis                      121 Adam                                
        186 Julia                       121 Adam                                
        187 Anthony                     121 Adam                                
        188 Kelly                       122 Payam                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        189 Jennifer                    122 Payam                               
        190 Timothy                     122 Payam                               
        191 Randall                     122 Payam                               
        192 Sarah                       123 Shanta                              
        193 Britney                     123 Shanta                              
        194 Samuel                      123 Shanta                              
        195 Vance                       123 Shanta                              
        196 Alana                       124 Kevin                               
        197 Kevin                       124 Kevin                               
        198 Donald                      124 Kevin                               
        199 Douglas                     124 Kevin                               

EMPLOYEE_ID FIRST_NAME           MANAGER_ID FIRST_NAME                          
----------- -------------------- ---------- --------------------                
        200 Jennifer                    101 Neena                               
        201 Michael                     100 Steven                              
        202 Pat                         201 Michael                             
        203 Susan                       101 Neena                               
        204 Hermann                     101 Neena                               
        205 Shelley                     101 Neena                               
        206 William                     205 Shelley                             

106 rows selected.

SQL> 
SQL> create table EMP_J
  2  (empno number(2) primary key,
  3  ename varchar2(20),
  4  deptno
  5  .
SQL> ed
Wrote file afiedt.buf

  1  create table DEPT_J
  2  (
  3  deptno number(2) primary key,
  4  dname varchar2(20),
  5  loc varchar2(20)
  6* )
  7  /

Table created.

SQL> ed
Wrote file afiedt.buf

  1  create table EMP_J
  2  (empno number(2) primary key,
  3  ename varchar2(20),
  4* deptno number(2) references DEPT_J(deptno))
SQL> /

Table created.

SQL> insert all into dept values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore');
insert all into dept values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore')
                                                  *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all into dept values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore')
  2* select * from dept
SQL> /
insert all into dept values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore')
                                                  *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all into dept_j values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore')
  2* select * from dept
SQL> /
insert all into dept_j values(10,'Logistics','Pune'), (20,'Purchase','Mumbai'),(30,'Sales','Bhopal'),(40,'HR','Bangalore')
                                                    *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all into dept_j values(10,'Logistics','Pune'),
  2  into dept_j(20,'Purchase','Mumbai'),
  3  into dept_j(30,'Sales','Bhopal'),
  4  into dept_j(40,'HR','Bangalore')
  5* select * from dual
SQL> /
insert all into dept_j values(10,'Logistics','Pune'),
                                                    *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all into dept_j values(10,'Logistics','Pune')
  2  into dept_j(20,'Purchase','Mumbai')
  3  into dept_j(30,'Sales','Bhopal')
  4  into dept_j(40,'HR','Bangalore')
  5* select * from dual
SQL> /
into dept_j(20,'Purchase','Mumbai')
            *
ERROR at line 2:
ORA-01747: invalid user.table.column, table.column, or column specification 


SQL> ed
Wrote file afiedt.buf

  1  insert all into dept_j(deptno,dname,loc) values(10,'Logistics','Pune')
  2  into dept_j(deptno,dname,loc) values (20,'Purchase','Mumbai')
  3  into dept_j (deptno,dname,loc) values (30,'Sales','Bhopal')
  4  into dept_j(deptno,dname,loc)  values (40,'HR','Bangalore')
  5* select * from dual
SQL> /

4 rows created.

SQL> insert all into emp_j
  2  .
SQL> ed
Wrote file afiedt.buf

  1  insert all into emp_j(empno,ename,deptno) values(1,'Anil',10)
  2  emp_j(empno,ename,deptno) values(2,'Sunil',20)
  3  emp_j(empno,ename,deptno) values(3,'Akash',10)
  4  emp_j(empno,ename,deptno) values(4,'Suresh',30)
  5  emp_j(empno,ename,deptno) values(5,'Ramesh',30)
  6  emp_j(empno,ename,deptno) values(6,'Reema',20)
  7  emp_j(empno,ename,deptno) values(7,'Seema',20)
  8  emp_j(empno,ename,deptno) values(8,'Parul',10)
  9* select * from dual
SQL> /
emp_j(empno,ename,deptno) values(2,'Sunil',20)
*
ERROR at line 2:
ORA-00928: missing SELECT keyword 


SQL> ed
Wrote file afiedt.buf

  1  insert all into emp_j(empno,ename,deptno) values(1,'Anil',10)
  2  into emp_j(empno,ename,deptno) values(2,'Sunil',20)
  3  into emp_j(empno,ename,deptno) values(3,'Akash',10)
  4  into emp_j(empno,ename,deptno) values(4,'Suresh',30)
  5  into emp_j(empno,ename,deptno) values(5,'Ramesh',30)
  6  into emp_j(empno,ename,deptno) values(6,'Reema',20)
  7  into emp_j(empno,ename,deptno) values(7,'Seema',20)
  8  into emp_j(empno,ename,deptno) values(8,'Parul',10)
  9* select * from dual
SQL> /

8 rows created.

SQL> select * from emp_j;

     EMPNO ENAME                    DEPTNO                                      
---------- -------------------- ----------                                      
         1 Anil                         10                                      
         2 Sunil                        20                                      
         3 Akash                        10                                      
         4 Suresh                       30                                      
         5 Ramesh                       30                                      
         6 Reema                        20                                      
         7 Seema                        20                                      
         8 Parul                        10                                      

8 rows selected.

SQL> select * from dept_j;

    DEPTNO DNAME                LOC                                             
---------- -------------------- --------------------                            
        10 Logistics            Pune                                            
        20 Purchase             Mumbai                                          
        30 Sales                Bhopal                                          
        40 HR                   Bangalore                                       

SQL> select empno,ename,e.deptno from emp_j e
  2  .ed
  3  .
SQL> ed
Wrote file afiedt.buf

  1  select empno,ename,e.deptno,d.deptno,dname 
  2  from emp_j e left outer join dept_j d
  3* on e.deptno=d.deptno
  4  /

     EMPNO ENAME                    DEPTNO     DEPTNO DNAME                     
---------- -------------------- ---------- ---------- --------------------      
         1 Anil                         10         10 Logistics                 
         3 Akash                        10         10 Logistics                 
         8 Parul                        10         10 Logistics                 
         2 Sunil                        20         20 Purchase                  
         6 Reema                        20         20 Purchase                  
         7 Seema                        20         20 Purchase                  
         4 Suresh                       30         30 Sales                     
         5 Ramesh                       30         30 Sales                     

8 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select empno,ename,e.deptno,d.deptno,dname 
  2  from emp_j e right outer join dept_j d
  3* on e.deptno=d.deptno
SQL> /

     EMPNO ENAME                    DEPTNO     DEPTNO DNAME                     
---------- -------------------- ---------- ---------- --------------------      
         1 Anil                         10         10 Logistics                 
         2 Sunil                        20         20 Purchase                  
         3 Akash                        10         10 Logistics                 
         4 Suresh                       30         30 Sales                     
         5 Ramesh                       30         30 Sales                     
         6 Reema                        20         20 Purchase                  
         7 Seema                        20         20 Purchase                  
         8 Parul                        10         10 Logistics                 
                                                   40 HR                        

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* insert into emp_j(empno,ename) values (9,'Gauri')
SQL> /

1 row created.

SQL> into
SP2-0042: unknown command "into" - rest of line ignored.
SQL> select empno,ename,e.deptno,d.deptno,dname
  2    2  from emp_j e left outer join dept_j d
  3    3* on e.deptno=d.deptno
  4  .
SQL> ed
Wrote file afiedt.buf

  1  select empno,ename,e.deptno,d.deptno,dname
  2     from emp_j e left outer join dept_j d
  3*   on e.deptno=d.deptno
SQL> /

     EMPNO ENAME                    DEPTNO     DEPTNO DNAME                     
---------- -------------------- ---------- ---------- --------------------      
         1 Anil                         10         10 Logistics                 
         3 Akash                        10         10 Logistics                 
         8 Parul                        10         10 Logistics                 
         2 Sunil                        20         20 Purchase                  
         6 Reema                        20         20 Purchase                  
         7 Seema                        20         20 Purchase                  
         4 Suresh                       30         30 Sales                     
         5 Ramesh                       30         30 Sales                     
         9 Gauri                                                                

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select empno,ename,e.deptno,d.deptno,dname
  2     from emp_j e right outer join dept_j d
  3*   on e.deptno=d.deptno
SQL> /

     EMPNO ENAME                    DEPTNO     DEPTNO DNAME                     
---------- -------------------- ---------- ---------- --------------------      
         1 Anil                         10         10 Logistics                 
         2 Sunil                        20         20 Purchase                  
         3 Akash                        10         10 Logistics                 
         4 Suresh                       30         30 Sales                     
         5 Ramesh                       30         30 Sales                     
         6 Reema                        20         20 Purchase                  
         7 Seema                        20         20 Purchase                  
         8 Parul                        10         10 Logistics                 
                                                   40 HR                        

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select empno,ename,e.deptno,d.deptno,dname
  2     from emp_j e full outer join dept_j d
  3*   on e.deptno=d.deptno
SQL> /

     EMPNO ENAME                    DEPTNO     DEPTNO DNAME                     
---------- -------------------- ---------- ---------- --------------------      
         1 Anil                         10         10 Logistics                 
         2 Sunil                        20         20 Purchase                  
         3 Akash                        10         10 Logistics                 
         4 Suresh                       30         30 Sales                     
         5 Ramesh                       30         30 Sales                     
         6 Reema                        20         20 Purchase                  
         7 Seema                        20         20 Purchase                  
         8 Parul                        10         10 Logistics                 
         9 Gauri                                                                
                                                   40 HR                        

10 rows selected.

SQL> spool off
