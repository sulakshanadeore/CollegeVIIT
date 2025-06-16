SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
           10 Administration                        200        1700             
           20 Marketing                             201        1800             
           30 Purchasing                            114        1700             
           40 Human Resources                       203        2400             
           50 Shipping                              121        1500             
           60 IT                                    103        1400             
           70 Public Relations                      204        2700             
           80 Sales                                 145        2500             
           90 Executive                             100        1700             
          100 Finance                               108        1700             
          110 Accounting                            205        1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          120 Treasury                                         1700             
          130 Corporate Tax                                    1700             
          140 Control And Credit                               1700             
          150 Shareholder Services                             1700             
          160 Benefits                                         1700             
          170 Manufacturing                                    1700             
          180 Construction                                     1700             
          190 Contracting                                      1700             
          200 Operations                                       1700             
          210 IT Support                                       1700             
          220 NOC                                              1700             

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID             
------------- ------------------------------ ---------- -----------             
          230 IT Helpdesk                                      1700             
          240 Government Sales                                 1700             
          250 Retail Sales                                     1700             
          260 Recruiting                                       1700             
          270 Payroll                                          1700             

27 rows selected.

SQL> select department_id,location_id from departments;

DEPARTMENT_ID LOCATION_ID                                                       
------------- -----------                                                       
           10        1700                                                       
           20        1800                                                       
           30        1700                                                       
           40        2400                                                       
           50        1500                                                       
           60        1400                                                       
           70        2700                                                       
           80        2500                                                       
           90        1700                                                       
          100        1700                                                       
          110        1700                                                       

DEPARTMENT_ID LOCATION_ID                                                       
------------- -----------                                                       
          120        1700                                                       
          130        1700                                                       
          140        1700                                                       
          150        1700                                                       
          160        1700                                                       
          170        1700                                                       
          180        1700                                                       
          190        1700                                                       
          200        1700                                                       
          210        1700                                                       
          220        1700                                                       

DEPARTMENT_ID LOCATION_ID                                                       
------------- -----------                                                       
          230        1700                                                       
          240        1700                                                       
          250        1700                                                       
          260        1700                                                       
          270        1700                                                       

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select department_id,location_id,department_name from departments
SQL> /

DEPARTMENT_ID LOCATION_ID DEPARTMENT_NAME                                       
------------- ----------- ------------------------------                        
           10        1700 Administration                                        
           20        1800 Marketing                                             
           30        1700 Purchasing                                            
           40        2400 Human Resources                                       
           50        1500 Shipping                                              
           60        1400 IT                                                    
           70        2700 Public Relations                                      
           80        2500 Sales                                                 
           90        1700 Executive                                             
          100        1700 Finance                                               
          110        1700 Accounting                                            

DEPARTMENT_ID LOCATION_ID DEPARTMENT_NAME                                       
------------- ----------- ------------------------------                        
          120        1700 Treasury                                              
          130        1700 Corporate Tax                                         
          140        1700 Control And Credit                                    
          150        1700 Shareholder Services                                  
          160        1700 Benefits                                              
          170        1700 Manufacturing                                         
          180        1700 Construction                                          
          190        1700 Contracting                                           
          200        1700 Operations                                            
          210        1700 IT Support                                            
          220        1700 NOC                                                   

DEPARTMENT_ID LOCATION_ID DEPARTMENT_NAME                                       
------------- ----------- ------------------------------                        
          230        1700 IT Helpdesk                                           
          240        1700 Government Sales                                      
          250        1700 Retail Sales                                          
          260        1700 Recruiting                                            
          270        1700 Payroll                                               

27 rows selected.

SQL> select department_name from departments
  2  order by department_name;

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Accounting                                                                      
Administration                                                                  
Benefits                                                                        
Construction                                                                    
Contracting                                                                     
Control And Credit                                                              
Corporate Tax                                                                   
Executive                                                                       
Finance                                                                         
Government Sales                                                                
Human Resources                                                                 

DEPARTMENT_NAME                                                                 
------------------------------                                                  
IT                                                                              
IT Helpdesk                                                                     
IT Support                                                                      
Manufacturing                                                                   
Marketing                                                                       
NOC                                                                             
Operations                                                                      
Payroll                                                                         
Public Relations                                                                
Purchasing                                                                      
Recruiting                                                                      

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Retail Sales                                                                    
Sales                                                                           
Shareholder Services                                                            
Shipping                                                                        
Treasury                                                                        

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_name from departments
  2* order by department_name desc
SQL> /

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Treasury                                                                        
Shipping                                                                        
Shareholder Services                                                            
Sales                                                                           
Retail Sales                                                                    
Recruiting                                                                      
Purchasing                                                                      
Public Relations                                                                
Payroll                                                                         
Operations                                                                      
NOC                                                                             

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Marketing                                                                       
Manufacturing                                                                   
IT Support                                                                      
IT Helpdesk                                                                     
IT                                                                              
Human Resources                                                                 
Government Sales                                                                
Finance                                                                         
Executive                                                                       
Corporate Tax                                                                   
Control And Credit                                                              

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Contracting                                                                     
Construction                                                                    
Benefits                                                                        
Administration                                                                  
Accounting                                                                      

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_name from departments
  2* order by 1 desc
SQL> /

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Treasury                                                                        
Shipping                                                                        
Shareholder Services                                                            
Sales                                                                           
Retail Sales                                                                    
Recruiting                                                                      
Purchasing                                                                      
Public Relations                                                                
Payroll                                                                         
Operations                                                                      
NOC                                                                             

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Marketing                                                                       
Manufacturing                                                                   
IT Support                                                                      
IT Helpdesk                                                                     
IT                                                                              
Human Resources                                                                 
Government Sales                                                                
Finance                                                                         
Executive                                                                       
Corporate Tax                                                                   
Control And Credit                                                              

DEPARTMENT_NAME                                                                 
------------------------------                                                  
Contracting                                                                     
Construction                                                                    
Benefits                                                                        
Administration                                                                  
Accounting                                                                      

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,department_name from departments
  2* order by 1 desc
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                                                   
------------- ------------------------------                                    
          270 Payroll                                                           
          260 Recruiting                                                        
          250 Retail Sales                                                      
          240 Government Sales                                                  
          230 IT Helpdesk                                                       
          220 NOC                                                               
          210 IT Support                                                        
          200 Operations                                                        
          190 Contracting                                                       
          180 Construction                                                      
          170 Manufacturing                                                     

DEPARTMENT_ID DEPARTMENT_NAME                                                   
------------- ------------------------------                                    
          160 Benefits                                                          
          150 Shareholder Services                                              
          140 Control And Credit                                                
          130 Corporate Tax                                                     
          120 Treasury                                                          
          110 Accounting                                                        
          100 Finance                                                           
           90 Executive                                                         
           80 Sales                                                             
           70 Public Relations                                                  
           60 IT                                                                

DEPARTMENT_ID DEPARTMENT_NAME                                                   
------------- ------------------------------                                    
           50 Shipping                                                          
           40 Human Resources                                                   
           30 Purchasing                                                        
           20 Marketing                                                         
           10 Administration                                                    

27 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,manager_id,department_name from departments
  2* order by department_id desc,department_name asc
SQL> /

DEPARTMENT_ID MANAGER_ID DEPARTMENT_NAME                                        
------------- ---------- ------------------------------                         
          270            Payroll                                                
          260            Recruiting                                             
          250            Retail Sales                                           
          240            Government Sales                                       
          230            IT Helpdesk                                            
          220            NOC                                                    
          210            IT Support                                             
          200            Operations                                             
          190            Contracting                                            
          180            Construction                                           
          170            Manufacturing                                          

DEPARTMENT_ID MANAGER_ID DEPARTMENT_NAME                                        
------------- ---------- ------------------------------                         
          160            Benefits                                               
          150            Shareholder Services                                   
          140            Control And Credit                                     
          130            Corporate Tax                                          
          120            Treasury                                               
          110        205 Accounting                                             
          100        108 Finance                                                
           90        100 Executive                                              
           80        145 Sales                                                  
           70        204 Public Relations                                       
           60        103 IT                                                     

DEPARTMENT_ID MANAGER_ID DEPARTMENT_NAME                                        
------------- ---------- ------------------------------                         
           50        121 Shipping                                               
           40        203 Human Resources                                        
           30        114 Purchasing                                             
           20        201 Marketing                                              
           10        200 Administration                                         

27 rows selected.

SQL> 
SQL> select * from locations;

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       1000 1297 Via Cola di Rie                     00989                      
Roma                                                     IT                     
                                                                                
       1100 93091 Calle della Testa                  10934                      
Venice                                                   IT                     
                                                                                
       1200 2017 Shinjuku-ku                         1689                       
Tokyo                          Tokyo Prefecture          JP                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       1300 9450 Kamiya-cho                          6823                       
Hiroshima                                                JP                     
                                                                                
       1400 2014 Jabberwocky Rd                      26192                      
Southlake                      Texas                     US                     
                                                                                
       1500 2011 Interiors Blvd                      99236                      
South San Francisco            California                US                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       1600 2007 Zagora St                           50090                      
South Brunswick                New Jersey                US                     
                                                                                
       1700 2004 Charade Rd                          98199                      
Seattle                        Washington                US                     
                                                                                
       1800 147 Spadina Ave                          M5V 2L7                    
Toronto                        Ontario                   CA                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       1900 6092 Boxwood St                          YSW 9T2                    
Whitehorse                     Yukon                     CA                     
                                                                                
       2000 40-5-12 Laogianggen                      190518                     
Beijing                                                  CN                     
                                                                                
       2100 1298 Vileparle (E)                       490231                     
Bombay                         Maharashtra               IN                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       2200 12-98 Victoria Street                    2901                       
Sydney                         New South Wales           AU                     
                                                                                
       2300 198 Clementi North                       540198                     
Singapore                                                SG                     
                                                                                
       2400 8204 Arthur St                                                      
London                                                   GB                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       2500 Magdalen Centre, The Oxford Science Park OX9 9ZB                    
Oxford                         Oxford                    GB                     
                                                                                
       2600 9702 Chester Road                        09629850293                
Stretford                      Manchester                GB                     
                                                                                
       2700 Schwanthalerstr. 7031                    80925                      
Munich                         Bavaria                   DE                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       2800 Rua Frei Caneca 1360                     01307-002                  
Sao Paulo                      Sao Paulo                 BR                     
                                                                                
       2900 20 Rue des Corps-Saints                  1730                       
Geneva                         Geneve                    CH                     
                                                                                
       3000 Murtenstrasse 921                        3095                       
Bern                           BE                        CH                     
                                                                                

LOCATION_ID STREET_ADDRESS                           POSTAL_CODE                
----------- ---------------------------------------- ------------               
CITY                           STATE_PROVINCE            CO                     
------------------------------ ------------------------- --                     
       3100 Pieter Breughelstraat 837                3029SK                     
Utrecht                        Utrecht                   NL                     
                                                                                
       3200 Mariano Escobedo 9991                    11932                      
Mexico City                    Distrito Federal          MX                     
                                                                                

23 rows selected.

SQL> select city from locations;

CITY                                                                            
------------------------------                                                  
Beijing                                                                         
Bern                                                                            
Bombay                                                                          
Geneva                                                                          
Hiroshima                                                                       
London                                                                          
Mexico City                                                                     
Munich                                                                          
Oxford                                                                          
Roma                                                                            
Sao Paulo                                                                       

CITY                                                                            
------------------------------                                                  
Seattle                                                                         
Singapore                                                                       
South Brunswick                                                                 
South San Francisco                                                             
Southlake                                                                       
Stretford                                                                       
Sydney                                                                          
Tokyo                                                                           
Toronto                                                                         
Utrecht                                                                         
Venice                                                                          

CITY                                                                            
------------------------------                                                  
Whitehorse                                                                      

23 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select city from locations
  2* order by city asc
SQL> /

CITY                                                                            
------------------------------                                                  
Beijing                                                                         
Bern                                                                            
Bombay                                                                          
Geneva                                                                          
Hiroshima                                                                       
London                                                                          
Mexico City                                                                     
Munich                                                                          
Oxford                                                                          
Roma                                                                            
Sao Paulo                                                                       

CITY                                                                            
------------------------------                                                  
Seattle                                                                         
Singapore                                                                       
South Brunswick                                                                 
South San Francisco                                                             
Southlake                                                                       
Stretford                                                                       
Sydney                                                                          
Tokyo                                                                           
Toronto                                                                         
Utrecht                                                                         
Venice                                                                          

CITY                                                                            
------------------------------                                                  
Whitehorse                                                                      

23 rows selected.

SQL> desc locations;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

SQL> select * from countries;

CO COUNTRY_NAME                                                  REGION_ID      
-- ------------------------------------------------------------ ----------      
AR Argentina                                                            20      
AU Australia                                                            40      
BE Belgium                                                              10      
BR Brazil                                                               20      
CA Canada                                                               20      
CH Switzerland                                                          10      
CN China                                                                30      
DE Germany                                                              10      
DK Denmark                                                              10      
EG Egypt                                                                50      
FR France                                                               10      

CO COUNTRY_NAME                                                  REGION_ID      
-- ------------------------------------------------------------ ----------      
GB United Kingdom of Great Britain and Northern Ireland                 10      
IL Israel                                                               30      
IN India                                                                30      
IT Italy                                                                10      
JP Japan                                                                30      
KW Kuwait                                                               30      
ML Malaysia                                                             30      
MX Mexico                                                               20      
NG Nigeria                                                              50      
NL Netherlands                                                          10      
SG Singapore                                                            30      

CO COUNTRY_NAME                                                  REGION_ID      
-- ------------------------------------------------------------ ----------      
US United States of America                                             20      
ZM Zambia                                                               50      
ZW Zimbabwe                                                             50      

25 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* insert into locations values (3300,'Same Peth','411011','Pune','Maharashtra','IN')
SQL> 
SQL> /

1 row created.

SQL> select street_name from locations
  2  order by street_name;
select street_name from locations
       *
ERROR at line 1:
ORA-00904: "STREET_NAME": invalid identifier 


SQL> 
SQL> desc locations;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

SQL> select street_address from locations
  2  order by street_address;

STREET_ADDRESS                                                                  
----------------------------------------                                        
12-98 Victoria Street                                                           
1297 Via Cola di Rie                                                            
1298 Vileparle (E)                                                              
147 Spadina Ave                                                                 
198 Clementi North                                                              
20 Rue des Corps-Saints                                                         
2004 Charade Rd                                                                 
2007 Zagora St                                                                  
2011 Interiors Blvd                                                             
2014 Jabberwocky Rd                                                             
2017 Shinjuku-ku                                                                

STREET_ADDRESS                                                                  
----------------------------------------                                        
40-5-12 Laogianggen                                                             
6092 Boxwood St                                                                 
8204 Arthur St                                                                  
93091 Calle della Testa                                                         
9450 Kamiya-cho                                                                 
9702 Chester Road                                                               
Magdalen Centre, The Oxford Science Park                                        
Mariano Escobedo 9991                                                           
Murtenstrasse 921                                                               
Pieter Breughelstraat 837                                                       
Rua Frei Caneca 1360                                                            

STREET_ADDRESS                                                                  
----------------------------------------                                        
Same Peth                                                                       
Schwanthalerstr. 7031                                                           

24 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select street_address from locations
  2* order by street_address desc
SQL> /

STREET_ADDRESS                                                                  
----------------------------------------                                        
Schwanthalerstr. 7031                                                           
Same Peth                                                                       
Rua Frei Caneca 1360                                                            
Pieter Breughelstraat 837                                                       
Murtenstrasse 921                                                               
Mariano Escobedo 9991                                                           
Magdalen Centre, The Oxford Science Park                                        
9702 Chester Road                                                               
9450 Kamiya-cho                                                                 
93091 Calle della Testa                                                         
8204 Arthur St                                                                  

STREET_ADDRESS                                                                  
----------------------------------------                                        
6092 Boxwood St                                                                 
40-5-12 Laogianggen                                                             
2017 Shinjuku-ku                                                                
2014 Jabberwocky Rd                                                             
2011 Interiors Blvd                                                             
2007 Zagora St                                                                  
2004 Charade Rd                                                                 
20 Rue des Corps-Saints                                                         
198 Clementi North                                                              
147 Spadina Ave                                                                 
1298 Vileparle (E)                                                              

STREET_ADDRESS                                                                  
----------------------------------------                                        
1297 Via Cola di Rie                                                            
12-98 Victoria Street                                                           

24 rows selected.

SQL> 
SQL> desc locations;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

SQL> select street_address,city from locations;

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
1297 Via Cola di Rie                     Roma                                   
93091 Calle della Testa                  Venice                                 
2017 Shinjuku-ku                         Tokyo                                  
9450 Kamiya-cho                          Hiroshima                              
2014 Jabberwocky Rd                      Southlake                              
2011 Interiors Blvd                      South San Francisco                    
2007 Zagora St                           South Brunswick                        
2004 Charade Rd                          Seattle                                
147 Spadina Ave                          Toronto                                
6092 Boxwood St                          Whitehorse                             
40-5-12 Laogianggen                      Beijing                                

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
1298 Vileparle (E)                       Bombay                                 
12-98 Victoria Street                    Sydney                                 
198 Clementi North                       Singapore                              
8204 Arthur St                           London                                 
Magdalen Centre, The Oxford Science Park Oxford                                 
9702 Chester Road                        Stretford                              
Schwanthalerstr. 7031                    Munich                                 
Rua Frei Caneca 1360                     Sao Paulo                              
20 Rue des Corps-Saints                  Geneva                                 
Murtenstrasse 921                        Bern                                   
Pieter Breughelstraat 837                Utrecht                                

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
Mariano Escobedo 9991                    Mexico City                            
Same Peth                                Pune                                   

24 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select street_address,city from locations
  2* order by street_address asc, city desc
SQL> /

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
12-98 Victoria Street                    Sydney                                 
1297 Via Cola di Rie                     Roma                                   
1298 Vileparle (E)                       Bombay                                 
147 Spadina Ave                          Toronto                                
198 Clementi North                       Singapore                              
20 Rue des Corps-Saints                  Geneva                                 
2004 Charade Rd                          Seattle                                
2007 Zagora St                           South Brunswick                        
2011 Interiors Blvd                      South San Francisco                    
2014 Jabberwocky Rd                      Southlake                              
2017 Shinjuku-ku                         Tokyo                                  

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
40-5-12 Laogianggen                      Beijing                                
6092 Boxwood St                          Whitehorse                             
8204 Arthur St                           London                                 
93091 Calle della Testa                  Venice                                 
9450 Kamiya-cho                          Hiroshima                              
9702 Chester Road                        Stretford                              
Magdalen Centre, The Oxford Science Park Oxford                                 
Mariano Escobedo 9991                    Mexico City                            
Murtenstrasse 921                        Bern                                   
Pieter Breughelstraat 837                Utrecht                                
Rua Frei Caneca 1360                     Sao Paulo                              

STREET_ADDRESS                           CITY                                   
---------------------------------------- ------------------------------         
Same Peth                                Pune                                   
Schwanthalerstr. 7031                    Munich                                 

24 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2* order by 1 asc, city desc
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
BE                        Bern                                                  
Bavaria                   Munich                                                
California                South San Francisco                                   
Distrito Federal          Mexico City                                           
Geneve                    Geneva                                                
Maharashtra               Pune                                                  
Maharashtra               Bombay                                                
Manchester                Stretford                                             
New Jersey                South Brunswick                                       
New South Wales           Sydney                                                
Ontario                   Toronto                                               

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
Oxford                    Oxford                                                
Sao Paulo                 Sao Paulo                                             
Texas                     Southlake                                             
Tokyo Prefecture          Tokyo                                                 
Utrecht                   Utrecht                                               
Washington                Seattle                                               
Yukon                     Whitehorse                                            
                          Venice                                                
                          Singapore                                             
                          Roma                                                  
                          London                                                

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
                          Hiroshima                                             
                          Beijing                                               

24 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2* order by 1 asc
SQL> 
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
BE                        Bern                                                  
Bavaria                   Munich                                                
California                South San Francisco                                   
Distrito Federal          Mexico City                                           
Geneve                    Geneva                                                
Maharashtra               Bombay                                                
Maharashtra               Pune                                                  
Manchester                Stretford                                             
New Jersey                South Brunswick                                       
New South Wales           Sydney                                                
Ontario                   Toronto                                               

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
Oxford                    Oxford                                                
Sao Paulo                 Sao Paulo                                             
Texas                     Southlake                                             
Tokyo Prefecture          Tokyo                                                 
Utrecht                   Utrecht                                               
Washington                Seattle                                               
Yukon                     Whitehorse                                            
                          Venice                                                
                          Beijing                                               
                          London                                                
                          Singapore                                             

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
                          Roma                                                  
                          Hiroshima                                             

24 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province !=null
  3* order by 1 asc
SQL> /

no rows selected

SQL> desc locations
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province is not null
  3* order by 1 asc
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
BE                        Bern                                                  
Bavaria                   Munich                                                
California                South San Francisco                                   
Distrito Federal          Mexico City                                           
Geneve                    Geneva                                                
Maharashtra               Bombay                                                
Maharashtra               Pune                                                  
Manchester                Stretford                                             
New Jersey                South Brunswick                                       
New South Wales           Sydney                                                
Ontario                   Toronto                                               

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
Oxford                    Oxford                                                
Sao Paulo                 Sao Paulo                                             
Texas                     Southlake                                             
Tokyo Prefecture          Tokyo                                                 
Utrecht                   Utrecht                                               
Washington                Seattle                                               
Yukon                     Whitehorse                                            

18 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province is  null
  3* order by 1 asc
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
                          Roma                                                  
                          Venice                                                
                          London                                                
                          Beijing                                               
                          Singapore                                             
                          Hiroshima                                             

6 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province = 'Maharashtra'/
  3* order by 1 asc
SQL> /
order by 1 asc
*
ERROR at line 3:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province = 'Maharashtra'
  3* order by 1 asc
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
Maharashtra               Bombay                                                
Maharashtra               Pune                                                  

SQL> ed
Wrote file afiedt.buf

  1  select state_province,city from locations
  2  where state_province  like 'Maharashtra'
  3* order by 1 asc
SQL> /

STATE_PROVINCE            CITY                                                  
------------------------- ------------------------------                        
Maharashtra               Bombay                                                
Maharashtra               Pune                                                  

SQL> desc locations
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 LOCATION_ID                               NOT NULL NUMBER(4)
 STREET_ADDRESS                                     VARCHAR2(40)
 POSTAL_CODE                                        VARCHAR2(12)
 CITY                                      NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                     VARCHAR2(25)
 COUNTRY_ID                                         CHAR(2)

SQL> select postal_code from locations;

POSTAL_CODE                                                                     
------------                                                                    
00989                                                                           
10934                                                                           
1689                                                                            
6823                                                                            
26192                                                                           
99236                                                                           
50090                                                                           
98199                                                                           
M5V 2L7                                                                         
YSW 9T2                                                                         
190518                                                                          

POSTAL_CODE                                                                     
------------                                                                    
490231                                                                          
2901                                                                            
540198                                                                          
                                                                                
OX9 9ZB                                                                         
09629850293                                                                     
80925                                                                           
01307-002                                                                       
1730                                                                            
3095                                                                            
3029SK                                                                          

POSTAL_CODE                                                                     
------------                                                                    
11932                                                                           
411011                                                                          

24 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select postal_code from locations
  2* where postal_code='411011'
SQL> /

POSTAL_CODE                                                                     
------------                                                                    
411011                                                                          

SQL> ed
Wrote file afiedt.buf

  1  select postal_code from locations
  2* where postal_codelike '411011'
SQL> /
where postal_codelike '411011'
                      *
ERROR at line 2:
ORA-00920: invalid relational operator 


SQL> ed
Wrote file afiedt.buf

  1  select postal_code from locations
  2* where postal_code like '411011'
SQL> 
SQL> /

POSTAL_CODE                                                                     
------------                                                                    
411011                                                                          

SQL> ed
Wrote file afiedt.buf

  1  select postal_code from locations
  2* where postal_code = 411011'
SQL> /
ERROR:
ORA-01756: quoted string not properly terminated 


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

SQL> select hire_date from employees;

HIRE_DATE                                                                       
---------                                                                       
17-JUN-13                                                                       
21-SEP-15                                                                       
13-JAN-11                                                                       
03-JAN-16                                                                       
21-MAY-17                                                                       
25-JUN-15                                                                       
05-FEB-16                                                                       
07-FEB-17                                                                       
17-AUG-12                                                                       
16-AUG-12                                                                       
28-SEP-15                                                                       

HIRE_DATE                                                                       
---------                                                                       
30-SEP-15                                                                       
07-MAR-16                                                                       
07-DEC-17                                                                       
07-DEC-12                                                                       
18-MAY-13                                                                       
24-DEC-15                                                                       
24-JUL-15                                                                       
15-NOV-16                                                                       
10-AUG-17                                                                       
18-JUL-14                                                                       
10-APR-15                                                                       

HIRE_DATE                                                                       
---------                                                                       
01-MAY-13                                                                       
10-OCT-15                                                                       
16-NOV-17                                                                       
16-JUL-15                                                                       
28-SEP-16                                                                       
14-JAN-17                                                                       
08-MAR-18                                                                       
20-AUG-15                                                                       
30-OCT-15                                                                       
16-FEB-15                                                                       
10-APR-17                                                                       

HIRE_DATE                                                                       
---------                                                                       
14-JUN-14                                                                       
26-AUG-16                                                                       
12-DEC-17                                                                       
06-FEB-18                                                                       
14-JUL-13                                                                       
26-OCT-15                                                                       
12-FEB-16                                                                       
06-APR-16                                                                       
17-OCT-13                                                                       
29-JAN-15                                                                       
15-MAR-16                                                                       

HIRE_DATE                                                                       
---------                                                                       
09-JUL-16                                                                       
01-OCT-14                                                                       
05-JAN-15                                                                       
10-MAR-15                                                                       
15-OCT-17                                                                       
29-JAN-18                                                                       
30-JAN-15                                                                       
24-MAR-15                                                                       
20-AUG-15                                                                       
30-MAR-16                                                                       
09-DEC-16                                                                       

HIRE_DATE                                                                       
---------                                                                       
23-NOV-17                                                                       
30-JAN-14                                                                       
04-MAR-14                                                                       
01-AUG-14                                                                       
10-MAR-15                                                                       
15-DEC-15                                                                       
03-NOV-16                                                                       
11-NOV-15                                                                       
19-MAR-17                                                                       
24-JAN-18                                                                       
23-FEB-18                                                                       

HIRE_DATE                                                                       
---------                                                                       
24-MAR-18                                                                       
21-APR-18                                                                       
11-MAR-15                                                                       
23-MAR-16                                                                       
24-JAN-16                                                                       
23-FEB-17                                                                       
24-MAR-17                                                                       
21-APR-18                                                                       
11-MAY-14                                                                       
19-MAR-15                                                                       
24-MAR-16                                                                       

HIRE_DATE                                                                       
---------                                                                       
23-APR-16                                                                       
24-MAY-17                                                                       
04-JAN-18                                                                       
24-JAN-16                                                                       
23-FEB-16                                                                       
21-JUN-17                                                                       
03-FEB-18                                                                       
27-JAN-14                                                                       
20-FEB-15                                                                       
24-JUN-16                                                                       
07-FEB-17                                                                       

HIRE_DATE                                                                       
---------                                                                       
14-JUN-15                                                                       
13-AUG-15                                                                       
11-JUL-16                                                                       
19-DEC-17                                                                       
04-FEB-14                                                                       
03-MAR-15                                                                       
01-JUL-16                                                                       
17-MAR-17                                                                       
24-APR-16                                                                       
23-MAY-16                                                                       
21-JUN-17                                                                       

HIRE_DATE                                                                       
---------                                                                       
13-JAN-18                                                                       
17-SEP-13                                                                       
17-FEB-14                                                                       
17-AUG-15                                                                       
07-JUN-12                                                                       
07-JUN-12                                                                       
07-JUN-12                                                                       
07-JUN-12                                                                       

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select hire_date from employees
  2* where hire_date ='13-Jan-18'
SQL> /

HIRE_DATE                                                                       
---------                                                                       
13-JAN-18                                                                       

SQL> ed
Wrote file afiedt.buf

  1  select hire_date from employees
  2* where hire_date like '13-Jan-18'
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select hire_date from employees
  2* where hire_date like '13-JAN-18'
SQL> /

HIRE_DATE                                                                       
---------                                                                       
13-JAN-18                                                                       

SQL> ed
Wrote file afiedt.buf

  1* select hire_date, to_char(hire_date,'dd/mm/yy') from employees
  2  /

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
17-JUN-13 17/06/13                                                              
21-SEP-15 21/09/15                                                              
13-JAN-11 13/01/11                                                              
03-JAN-16 03/01/16                                                              
21-MAY-17 21/05/17                                                              
25-JUN-15 25/06/15                                                              
05-FEB-16 05/02/16                                                              
07-FEB-17 07/02/17                                                              
17-AUG-12 17/08/12                                                              
16-AUG-12 16/08/12                                                              
28-SEP-15 28/09/15                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
30-SEP-15 30/09/15                                                              
07-MAR-16 07/03/16                                                              
07-DEC-17 07/12/17                                                              
07-DEC-12 07/12/12                                                              
18-MAY-13 18/05/13                                                              
24-DEC-15 24/12/15                                                              
24-JUL-15 24/07/15                                                              
15-NOV-16 15/11/16                                                              
10-AUG-17 10/08/17                                                              
18-JUL-14 18/07/14                                                              
10-APR-15 10/04/15                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
01-MAY-13 01/05/13                                                              
10-OCT-15 10/10/15                                                              
16-NOV-17 16/11/17                                                              
16-JUL-15 16/07/15                                                              
28-SEP-16 28/09/16                                                              
14-JAN-17 14/01/17                                                              
08-MAR-18 08/03/18                                                              
20-AUG-15 20/08/15                                                              
30-OCT-15 30/10/15                                                              
16-FEB-15 16/02/15                                                              
10-APR-17 10/04/17                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
14-JUN-14 14/06/14                                                              
26-AUG-16 26/08/16                                                              
12-DEC-17 12/12/17                                                              
06-FEB-18 06/02/18                                                              
14-JUL-13 14/07/13                                                              
26-OCT-15 26/10/15                                                              
12-FEB-16 12/02/16                                                              
06-APR-16 06/04/16                                                              
17-OCT-13 17/10/13                                                              
29-JAN-15 29/01/15                                                              
15-MAR-16 15/03/16                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
09-JUL-16 09/07/16                                                              
01-OCT-14 01/10/14                                                              
05-JAN-15 05/01/15                                                              
10-MAR-15 10/03/15                                                              
15-OCT-17 15/10/17                                                              
29-JAN-18 29/01/18                                                              
30-JAN-15 30/01/15                                                              
24-MAR-15 24/03/15                                                              
20-AUG-15 20/08/15                                                              
30-MAR-16 30/03/16                                                              
09-DEC-16 09/12/16                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
23-NOV-17 23/11/17                                                              
30-JAN-14 30/01/14                                                              
04-MAR-14 04/03/14                                                              
01-AUG-14 01/08/14                                                              
10-MAR-15 10/03/15                                                              
15-DEC-15 15/12/15                                                              
03-NOV-16 03/11/16                                                              
11-NOV-15 11/11/15                                                              
19-MAR-17 19/03/17                                                              
24-JAN-18 24/01/18                                                              
23-FEB-18 23/02/18                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
24-MAR-18 24/03/18                                                              
21-APR-18 21/04/18                                                              
11-MAR-15 11/03/15                                                              
23-MAR-16 23/03/16                                                              
24-JAN-16 24/01/16                                                              
23-FEB-17 23/02/17                                                              
24-MAR-17 24/03/17                                                              
21-APR-18 21/04/18                                                              
11-MAY-14 11/05/14                                                              
19-MAR-15 19/03/15                                                              
24-MAR-16 24/03/16                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
23-APR-16 23/04/16                                                              
24-MAY-17 24/05/17                                                              
04-JAN-18 04/01/18                                                              
24-JAN-16 24/01/16                                                              
23-FEB-16 23/02/16                                                              
21-JUN-17 21/06/17                                                              
03-FEB-18 03/02/18                                                              
27-JAN-14 27/01/14                                                              
20-FEB-15 20/02/15                                                              
24-JUN-16 24/06/16                                                              
07-FEB-17 07/02/17                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
14-JUN-15 14/06/15                                                              
13-AUG-15 13/08/15                                                              
11-JUL-16 11/07/16                                                              
19-DEC-17 19/12/17                                                              
04-FEB-14 04/02/14                                                              
03-MAR-15 03/03/15                                                              
01-JUL-16 01/07/16                                                              
17-MAR-17 17/03/17                                                              
24-APR-16 24/04/16                                                              
23-MAY-16 23/05/16                                                              
21-JUN-17 21/06/17                                                              

HIRE_DATE TO_CHAR(                                                              
--------- --------                                                              
13-JAN-18 13/01/18                                                              
17-SEP-13 17/09/13                                                              
17-FEB-14 17/02/14                                                              
17-AUG-15 17/08/15                                                              
07-JUN-12 07/06/12                                                              
07-JUN-12 07/06/12                                                              
07-JUN-12 07/06/12                                                              
07-JUN-12 07/06/12                                                              

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select hire_date, to_char(hire_date,'dd/month/yy') from employees
SQL> /

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
17-JUN-13 17/june     /13                                                       
21-SEP-15 21/september/15                                                       
13-JAN-11 13/january  /11                                                       
03-JAN-16 03/january  /16                                                       
21-MAY-17 21/may      /17                                                       
25-JUN-15 25/june     /15                                                       
05-FEB-16 05/february /16                                                       
07-FEB-17 07/february /17                                                       
17-AUG-12 17/august   /12                                                       
16-AUG-12 16/august   /12                                                       
28-SEP-15 28/september/15                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
30-SEP-15 30/september/15                                                       
07-MAR-16 07/march    /16                                                       
07-DEC-17 07/december /17                                                       
07-DEC-12 07/december /12                                                       
18-MAY-13 18/may      /13                                                       
24-DEC-15 24/december /15                                                       
24-JUL-15 24/july     /15                                                       
15-NOV-16 15/november /16                                                       
10-AUG-17 10/august   /17                                                       
18-JUL-14 18/july     /14                                                       
10-APR-15 10/april    /15                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
01-MAY-13 01/may      /13                                                       
10-OCT-15 10/october  /15                                                       
16-NOV-17 16/november /17                                                       
16-JUL-15 16/july     /15                                                       
28-SEP-16 28/september/16                                                       
14-JAN-17 14/january  /17                                                       
08-MAR-18 08/march    /18                                                       
20-AUG-15 20/august   /15                                                       
30-OCT-15 30/october  /15                                                       
16-FEB-15 16/february /15                                                       
10-APR-17 10/april    /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
14-JUN-14 14/june     /14                                                       
26-AUG-16 26/august   /16                                                       
12-DEC-17 12/december /17                                                       
06-FEB-18 06/february /18                                                       
14-JUL-13 14/july     /13                                                       
26-OCT-15 26/october  /15                                                       
12-FEB-16 12/february /16                                                       
06-APR-16 06/april    /16                                                       
17-OCT-13 17/october  /13                                                       
29-JAN-15 29/january  /15                                                       
15-MAR-16 15/march    /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
09-JUL-16 09/july     /16                                                       
01-OCT-14 01/october  /14                                                       
05-JAN-15 05/january  /15                                                       
10-MAR-15 10/march    /15                                                       
15-OCT-17 15/october  /17                                                       
29-JAN-18 29/january  /18                                                       
30-JAN-15 30/january  /15                                                       
24-MAR-15 24/march    /15                                                       
20-AUG-15 20/august   /15                                                       
30-MAR-16 30/march    /16                                                       
09-DEC-16 09/december /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
23-NOV-17 23/november /17                                                       
30-JAN-14 30/january  /14                                                       
04-MAR-14 04/march    /14                                                       
01-AUG-14 01/august   /14                                                       
10-MAR-15 10/march    /15                                                       
15-DEC-15 15/december /15                                                       
03-NOV-16 03/november /16                                                       
11-NOV-15 11/november /15                                                       
19-MAR-17 19/march    /17                                                       
24-JAN-18 24/january  /18                                                       
23-FEB-18 23/february /18                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
24-MAR-18 24/march    /18                                                       
21-APR-18 21/april    /18                                                       
11-MAR-15 11/march    /15                                                       
23-MAR-16 23/march    /16                                                       
24-JAN-16 24/january  /16                                                       
23-FEB-17 23/february /17                                                       
24-MAR-17 24/march    /17                                                       
21-APR-18 21/april    /18                                                       
11-MAY-14 11/may      /14                                                       
19-MAR-15 19/march    /15                                                       
24-MAR-16 24/march    /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
23-APR-16 23/april    /16                                                       
24-MAY-17 24/may      /17                                                       
04-JAN-18 04/january  /18                                                       
24-JAN-16 24/january  /16                                                       
23-FEB-16 23/february /16                                                       
21-JUN-17 21/june     /17                                                       
03-FEB-18 03/february /18                                                       
27-JAN-14 27/january  /14                                                       
20-FEB-15 20/february /15                                                       
24-JUN-16 24/june     /16                                                       
07-FEB-17 07/february /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
14-JUN-15 14/june     /15                                                       
13-AUG-15 13/august   /15                                                       
11-JUL-16 11/july     /16                                                       
19-DEC-17 19/december /17                                                       
04-FEB-14 04/february /14                                                       
03-MAR-15 03/march    /15                                                       
01-JUL-16 01/july     /16                                                       
17-MAR-17 17/march    /17                                                       
24-APR-16 24/april    /16                                                       
23-MAY-16 23/may      /16                                                       
21-JUN-17 21/june     /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
13-JAN-18 13/january  /18                                                       
17-SEP-13 17/september/13                                                       
17-FEB-14 17/february /14                                                       
17-AUG-15 17/august   /15                                                       
07-JUN-12 07/june     /12                                                       
07-JUN-12 07/june     /12                                                       
07-JUN-12 07/june     /12                                                       
07-JUN-12 07/june     /12                                                       

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select hire_date, to_char(hire_date,'dd/Month/yy') from employees
SQL> /

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
17-JUN-13 17/June     /13                                                       
21-SEP-15 21/September/15                                                       
13-JAN-11 13/January  /11                                                       
03-JAN-16 03/January  /16                                                       
21-MAY-17 21/May      /17                                                       
25-JUN-15 25/June     /15                                                       
05-FEB-16 05/February /16                                                       
07-FEB-17 07/February /17                                                       
17-AUG-12 17/August   /12                                                       
16-AUG-12 16/August   /12                                                       
28-SEP-15 28/September/15                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
30-SEP-15 30/September/15                                                       
07-MAR-16 07/March    /16                                                       
07-DEC-17 07/December /17                                                       
07-DEC-12 07/December /12                                                       
18-MAY-13 18/May      /13                                                       
24-DEC-15 24/December /15                                                       
24-JUL-15 24/July     /15                                                       
15-NOV-16 15/November /16                                                       
10-AUG-17 10/August   /17                                                       
18-JUL-14 18/July     /14                                                       
10-APR-15 10/April    /15                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
01-MAY-13 01/May      /13                                                       
10-OCT-15 10/October  /15                                                       
16-NOV-17 16/November /17                                                       
16-JUL-15 16/July     /15                                                       
28-SEP-16 28/September/16                                                       
14-JAN-17 14/January  /17                                                       
08-MAR-18 08/March    /18                                                       
20-AUG-15 20/August   /15                                                       
30-OCT-15 30/October  /15                                                       
16-FEB-15 16/February /15                                                       
10-APR-17 10/April    /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
14-JUN-14 14/June     /14                                                       
26-AUG-16 26/August   /16                                                       
12-DEC-17 12/December /17                                                       
06-FEB-18 06/February /18                                                       
14-JUL-13 14/July     /13                                                       
26-OCT-15 26/October  /15                                                       
12-FEB-16 12/February /16                                                       
06-APR-16 06/April    /16                                                       
17-OCT-13 17/October  /13                                                       
29-JAN-15 29/January  /15                                                       
15-MAR-16 15/March    /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
09-JUL-16 09/July     /16                                                       
01-OCT-14 01/October  /14                                                       
05-JAN-15 05/January  /15                                                       
10-MAR-15 10/March    /15                                                       
15-OCT-17 15/October  /17                                                       
29-JAN-18 29/January  /18                                                       
30-JAN-15 30/January  /15                                                       
24-MAR-15 24/March    /15                                                       
20-AUG-15 20/August   /15                                                       
30-MAR-16 30/March    /16                                                       
09-DEC-16 09/December /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
23-NOV-17 23/November /17                                                       
30-JAN-14 30/January  /14                                                       
04-MAR-14 04/March    /14                                                       
01-AUG-14 01/August   /14                                                       
10-MAR-15 10/March    /15                                                       
15-DEC-15 15/December /15                                                       
03-NOV-16 03/November /16                                                       
11-NOV-15 11/November /15                                                       
19-MAR-17 19/March    /17                                                       
24-JAN-18 24/January  /18                                                       
23-FEB-18 23/February /18                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
24-MAR-18 24/March    /18                                                       
21-APR-18 21/April    /18                                                       
11-MAR-15 11/March    /15                                                       
23-MAR-16 23/March    /16                                                       
24-JAN-16 24/January  /16                                                       
23-FEB-17 23/February /17                                                       
24-MAR-17 24/March    /17                                                       
21-APR-18 21/April    /18                                                       
11-MAY-14 11/May      /14                                                       
19-MAR-15 19/March    /15                                                       
24-MAR-16 24/March    /16                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
23-APR-16 23/April    /16                                                       
24-MAY-17 24/May      /17                                                       
04-JAN-18 04/January  /18                                                       
24-JAN-16 24/January  /16                                                       
23-FEB-16 23/February /16                                                       
21-JUN-17 21/June     /17                                                       
03-FEB-18 03/February /18                                                       
27-JAN-14 27/January  /14                                                       
20-FEB-15 20/February /15                                                       
24-JUN-16 24/June     /16                                                       
07-FEB-17 07/February /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
14-JUN-15 14/June     /15                                                       
13-AUG-15 13/August   /15                                                       
11-JUL-16 11/July     /16                                                       
19-DEC-17 19/December /17                                                       
04-FEB-14 04/February /14                                                       
03-MAR-15 03/March    /15                                                       
01-JUL-16 01/July     /16                                                       
17-MAR-17 17/March    /17                                                       
24-APR-16 24/April    /16                                                       
23-MAY-16 23/May      /16                                                       
21-JUN-17 21/June     /17                                                       

HIRE_DATE TO_CHAR(HIRE_DATE,'DD/MONTH/YY')                                      
--------- ------------------------------------------                            
13-JAN-18 13/January  /18                                                       
17-SEP-13 17/September/13                                                       
17-FEB-14 17/February /14                                                       
17-AUG-15 17/August   /15                                                       
07-JUN-12 07/June     /12                                                       
07-JUN-12 07/June     /12                                                       
07-JUN-12 07/June     /12                                                       
07-JUN-12 07/June     /12                                                       

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select hire_date, to_char(hire_date,'dd-Month-yyyy') from employees
SQL> /

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
17-JUN-13 17-June     -2013                                                     
21-SEP-15 21-September-2015                                                     
13-JAN-11 13-January  -2011                                                     
03-JAN-16 03-January  -2016                                                     
21-MAY-17 21-May      -2017                                                     
25-JUN-15 25-June     -2015                                                     
05-FEB-16 05-February -2016                                                     
07-FEB-17 07-February -2017                                                     
17-AUG-12 17-August   -2012                                                     
16-AUG-12 16-August   -2012                                                     
28-SEP-15 28-September-2015                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
30-SEP-15 30-September-2015                                                     
07-MAR-16 07-March    -2016                                                     
07-DEC-17 07-December -2017                                                     
07-DEC-12 07-December -2012                                                     
18-MAY-13 18-May      -2013                                                     
24-DEC-15 24-December -2015                                                     
24-JUL-15 24-July     -2015                                                     
15-NOV-16 15-November -2016                                                     
10-AUG-17 10-August   -2017                                                     
18-JUL-14 18-July     -2014                                                     
10-APR-15 10-April    -2015                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
01-MAY-13 01-May      -2013                                                     
10-OCT-15 10-October  -2015                                                     
16-NOV-17 16-November -2017                                                     
16-JUL-15 16-July     -2015                                                     
28-SEP-16 28-September-2016                                                     
14-JAN-17 14-January  -2017                                                     
08-MAR-18 08-March    -2018                                                     
20-AUG-15 20-August   -2015                                                     
30-OCT-15 30-October  -2015                                                     
16-FEB-15 16-February -2015                                                     
10-APR-17 10-April    -2017                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
14-JUN-14 14-June     -2014                                                     
26-AUG-16 26-August   -2016                                                     
12-DEC-17 12-December -2017                                                     
06-FEB-18 06-February -2018                                                     
14-JUL-13 14-July     -2013                                                     
26-OCT-15 26-October  -2015                                                     
12-FEB-16 12-February -2016                                                     
06-APR-16 06-April    -2016                                                     
17-OCT-13 17-October  -2013                                                     
29-JAN-15 29-January  -2015                                                     
15-MAR-16 15-March    -2016                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
09-JUL-16 09-July     -2016                                                     
01-OCT-14 01-October  -2014                                                     
05-JAN-15 05-January  -2015                                                     
10-MAR-15 10-March    -2015                                                     
15-OCT-17 15-October  -2017                                                     
29-JAN-18 29-January  -2018                                                     
30-JAN-15 30-January  -2015                                                     
24-MAR-15 24-March    -2015                                                     
20-AUG-15 20-August   -2015                                                     
30-MAR-16 30-March    -2016                                                     
09-DEC-16 09-December -2016                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
23-NOV-17 23-November -2017                                                     
30-JAN-14 30-January  -2014                                                     
04-MAR-14 04-March    -2014                                                     
01-AUG-14 01-August   -2014                                                     
10-MAR-15 10-March    -2015                                                     
15-DEC-15 15-December -2015                                                     
03-NOV-16 03-November -2016                                                     
11-NOV-15 11-November -2015                                                     
19-MAR-17 19-March    -2017                                                     
24-JAN-18 24-January  -2018                                                     
23-FEB-18 23-February -2018                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
24-MAR-18 24-March    -2018                                                     
21-APR-18 21-April    -2018                                                     
11-MAR-15 11-March    -2015                                                     
23-MAR-16 23-March    -2016                                                     
24-JAN-16 24-January  -2016                                                     
23-FEB-17 23-February -2017                                                     
24-MAR-17 24-March    -2017                                                     
21-APR-18 21-April    -2018                                                     
11-MAY-14 11-May      -2014                                                     
19-MAR-15 19-March    -2015                                                     
24-MAR-16 24-March    -2016                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
23-APR-16 23-April    -2016                                                     
24-MAY-17 24-May      -2017                                                     
04-JAN-18 04-January  -2018                                                     
24-JAN-16 24-January  -2016                                                     
23-FEB-16 23-February -2016                                                     
21-JUN-17 21-June     -2017                                                     
03-FEB-18 03-February -2018                                                     
27-JAN-14 27-January  -2014                                                     
20-FEB-15 20-February -2015                                                     
24-JUN-16 24-June     -2016                                                     
07-FEB-17 07-February -2017                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
14-JUN-15 14-June     -2015                                                     
13-AUG-15 13-August   -2015                                                     
11-JUL-16 11-July     -2016                                                     
19-DEC-17 19-December -2017                                                     
04-FEB-14 04-February -2014                                                     
03-MAR-15 03-March    -2015                                                     
01-JUL-16 01-July     -2016                                                     
17-MAR-17 17-March    -2017                                                     
24-APR-16 24-April    -2016                                                     
23-MAY-16 23-May      -2016                                                     
21-JUN-17 21-June     -2017                                                     

HIRE_DATE TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                                    
--------- --------------------------------------------                          
13-JAN-18 13-January  -2018                                                     
17-SEP-13 17-September-2013                                                     
17-FEB-14 17-February -2014                                                     
17-AUG-15 17-August   -2015                                                     
07-JUN-12 07-June     -2012                                                     
07-JUN-12 07-June     -2012                                                     
07-JUN-12 07-June     -2012                                                     
07-JUN-12 07-June     -2012                                                     

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select hire_date,first_name, to_char(hire_date,'dd-Month-yyyy') from employees
  2* where to_char(hiredate,'dd/mm/yy') ='13/01/18'
  3  /
where to_char(hiredate,'dd/mm/yy') ='13/01/18'
              *
ERROR at line 2:
ORA-00904: "HIREDATE": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select hire_date,first_name, to_char(hire_date,'dd-Month-yyyy') from employees
  2* where to_char(hire_date,'dd/mm/yy') ='13/01/18'
SQL> /

HIRE_DATE FIRST_NAME           TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')               
--------- -------------------- --------------------------------------------     
13-JAN-18 Douglas              13-January  -2018                                

SQL> ed
Wrote file afiedt.buf

  1  select first_name, to_char(hire_date,'dd-Month-yyyy') from employees
  2* where to_char(hire_date,'dd/mm/yy') ='13/01/18'
SQL> /

FIRST_NAME           TO_CHAR(HIRE_DATE,'DD-MONTH-YYYY')                         
-------------------- --------------------------------------------               
Douglas              13-January  -2018                                          

SQL> ed
Wrote file afiedt.buf

  1  select first_name, to_char(hire_date,'dd-Month') from employees
  2* where to_char(hire_date,'dd/mm/yy') ='13/01/18'
SQL> /

FIRST_NAME           TO_CHAR(HIRE_DATE,'DD-MONTH')                              
-------------------- ---------------------------------------                    
Douglas              13-January                                                 

SQL> ed
Wrote file afiedt.buf

  1  select first_name, to_char(hire_date,'dd-Month') from employees
  2* where to_char(hire_date,'dd/mm/yy')  like '13/01/18'
SQL> /

FIRST_NAME           TO_CHAR(HIRE_DATE,'DD-MONTH')                              
-------------------- ---------------------------------------                    
Douglas              13-January                                                 

SQL> ed
Wrote file afiedt.buf

  1  select first_name, to_char(hire_date,'dd-Month') from employees
  2* where to_char(hire_date,'dd/mm/yy')  like '13/01/18' and job_id='SH_CLERK'
SQL> /

FIRST_NAME           TO_CHAR(HIRE_DATE,'DD-MONTH')                              
-------------------- ---------------------------------------                    
Douglas              13-January                                                 

SQL> select job_id from employees
  2  where first_name like 'Douglas';

JOB_ID                                                                          
----------                                                                      
SH_CLERK                                                                        

SQL> ed
Wrote file afiedt.buf

  1  select first_name,job_id from employees
  2* where job_id ='SH_CLERK' or job_id='ST_CLERK' or job_id = 'SA_REP' 
SQL> /

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Sean                 SA_REP                                                     
David                SA_REP                                                     
Peter                SA_REP                                                     
Christopher          SA_REP                                                     
Nanette              SA_REP                                                     
Oliver               SA_REP                                                     
Janette              SA_REP                                                     
Patrick              SA_REP                                                     
Allan                SA_REP                                                     
Lindsey              SA_REP                                                     
Louise               SA_REP                                                     

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Sarath               SA_REP                                                     
Clara                SA_REP                                                     
Danielle             SA_REP                                                     
Mattea               SA_REP                                                     
David                SA_REP                                                     
Sundar               SA_REP                                                     
Amit                 SA_REP                                                     
Lisa                 SA_REP                                                     
Harrison             SA_REP                                                     
Tayler               SA_REP                                                     
William              SA_REP                                                     

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Elizabeth            SA_REP                                                     
Sundita              SA_REP                                                     
Ellen                SA_REP                                                     
Alyssa               SA_REP                                                     
Jonathon             SA_REP                                                     
Jack                 SA_REP                                                     
Kimberely            SA_REP                                                     
Charles              SA_REP                                                     
Winston              SH_CLERK                                                   
Jean                 SH_CLERK                                                   
Martha               SH_CLERK                                                   

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Girard               SH_CLERK                                                   
Nandita              SH_CLERK                                                   
Alexis               SH_CLERK                                                   
Julia                SH_CLERK                                                   
Anthony              SH_CLERK                                                   
Kelly                SH_CLERK                                                   
Jennifer             SH_CLERK                                                   
Timothy              SH_CLERK                                                   
Randall              SH_CLERK                                                   
Sarah                SH_CLERK                                                   
Britney              SH_CLERK                                                   

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Samuel               SH_CLERK                                                   
Vance                SH_CLERK                                                   
Alana                SH_CLERK                                                   
Kevin                SH_CLERK                                                   
Donald               SH_CLERK                                                   
Douglas              SH_CLERK                                                   
Julia                ST_CLERK                                                   
Irene                ST_CLERK                                                   
James                ST_CLERK                                                   
Steven               ST_CLERK                                                   
Laura                ST_CLERK                                                   

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Mozhe                ST_CLERK                                                   
James                ST_CLERK                                                   
TJ                   ST_CLERK                                                   
Jason                ST_CLERK                                                   
Michael              ST_CLERK                                                   
Ki                   ST_CLERK                                                   
Hazel                ST_CLERK                                                   
Renske               ST_CLERK                                                   
Stephen              ST_CLERK                                                   
John                 ST_CLERK                                                   
Joshua               ST_CLERK                                                   

FIRST_NAME           JOB_ID                                                     
-------------------- ----------                                                 
Trenna               ST_CLERK                                                   
Curtis               ST_CLERK                                                   
Randall              ST_CLERK                                                   
Peter                ST_CLERK                                                   

70 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name,job_id from employees
  2* where job_id ='SH_CLERK' or job_id='ST_CLERK' or job_id = 'SA_REP' 
SQL> ed
Wrote file afiedt.buf

  1  select first_name,job_id from employees
  2* where (job_id ='SH_CLERK' or job_id='ST_CLERK' or job_id = 'SA_REP') and manager_id is null 
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select first_name,job_id,manager_id from employees
  2* where (job_id ='SH_CLERK' or job_id='ST_CLERK' or job_id = 'SA_REP') and manager_id is not null 
SQL> /

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Sean                 SA_REP            145                                      
David                SA_REP            145                                      
Peter                SA_REP            145                                      
Christopher          SA_REP            145                                      
Nanette              SA_REP            145                                      
Oliver               SA_REP            145                                      
Janette              SA_REP            146                                      
Patrick              SA_REP            146                                      
Allan                SA_REP            146                                      
Lindsey              SA_REP            146                                      
Louise               SA_REP            146                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Sarath               SA_REP            146                                      
Clara                SA_REP            147                                      
Danielle             SA_REP            147                                      
Mattea               SA_REP            147                                      
David                SA_REP            147                                      
Sundar               SA_REP            147                                      
Amit                 SA_REP            147                                      
Lisa                 SA_REP            148                                      
Harrison             SA_REP            148                                      
Tayler               SA_REP            148                                      
William              SA_REP            148                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Elizabeth            SA_REP            148                                      
Sundita              SA_REP            148                                      
Ellen                SA_REP            149                                      
Alyssa               SA_REP            149                                      
Jonathon             SA_REP            149                                      
Jack                 SA_REP            149                                      
Kimberely            SA_REP            149                                      
Charles              SA_REP            149                                      
Winston              SH_CLERK          120                                      
Jean                 SH_CLERK          120                                      
Martha               SH_CLERK          120                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Girard               SH_CLERK          120                                      
Nandita              SH_CLERK          121                                      
Alexis               SH_CLERK          121                                      
Julia                SH_CLERK          121                                      
Anthony              SH_CLERK          121                                      
Kelly                SH_CLERK          122                                      
Jennifer             SH_CLERK          122                                      
Timothy              SH_CLERK          122                                      
Randall              SH_CLERK          122                                      
Sarah                SH_CLERK          123                                      
Britney              SH_CLERK          123                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Samuel               SH_CLERK          123                                      
Vance                SH_CLERK          123                                      
Alana                SH_CLERK          124                                      
Kevin                SH_CLERK          124                                      
Donald               SH_CLERK          124                                      
Douglas              SH_CLERK          124                                      
Julia                ST_CLERK          120                                      
Irene                ST_CLERK          120                                      
James                ST_CLERK          120                                      
Steven               ST_CLERK          120                                      
Laura                ST_CLERK          121                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Mozhe                ST_CLERK          121                                      
James                ST_CLERK          121                                      
TJ                   ST_CLERK          121                                      
Jason                ST_CLERK          122                                      
Michael              ST_CLERK          122                                      
Ki                   ST_CLERK          122                                      
Hazel                ST_CLERK          122                                      
Renske               ST_CLERK          123                                      
Stephen              ST_CLERK          123                                      
John                 ST_CLERK          123                                      
Joshua               ST_CLERK          123                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Trenna               ST_CLERK          124                                      
Curtis               ST_CLERK          124                                      
Randall              ST_CLERK          124                                      
Peter                ST_CLERK          124                                      

70 rows selected.

SQL> 
SQL> select first_name,job_id,manager_id from employees;

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Steven               AD_PRES                                                    
Neena                AD_VP             100                                      
Lex                  AD_VP             100                                      
Alexander            IT_PROG           102                                      
Bruce                IT_PROG           103                                      
David                IT_PROG           103                                      
Valli                IT_PROG           103                                      
Diana                IT_PROG           103                                      
Nancy                FI_MGR            101                                      
Daniel               FI_ACCOUNT        108                                      
John                 FI_ACCOUNT        108                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Ismael               FI_ACCOUNT        108                                      
Jose Manuel          FI_ACCOUNT        108                                      
Luis                 FI_ACCOUNT        108                                      
Den                  PU_MAN            100                                      
Alexander            PU_CLERK          114                                      
Shelli               PU_CLERK          114                                      
Sigal                PU_CLERK          114                                      
Guy                  PU_CLERK          114                                      
Karen                PU_CLERK          114                                      
Matthew              ST_MAN            100                                      
Adam                 ST_MAN            100                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Payam                ST_MAN            100                                      
Shanta               ST_MAN            100                                      
Kevin                ST_MAN            100                                      
Julia                ST_CLERK          120                                      
Irene                ST_CLERK          120                                      
James                ST_CLERK          120                                      
Steven               ST_CLERK          120                                      
Laura                ST_CLERK          121                                      
Mozhe                ST_CLERK          121                                      
James                ST_CLERK          121                                      
TJ                   ST_CLERK          121                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Jason                ST_CLERK          122                                      
Michael              ST_CLERK          122                                      
Ki                   ST_CLERK          122                                      
Hazel                ST_CLERK          122                                      
Renske               ST_CLERK          123                                      
Stephen              ST_CLERK          123                                      
John                 ST_CLERK          123                                      
Joshua               ST_CLERK          123                                      
Trenna               ST_CLERK          124                                      
Curtis               ST_CLERK          124                                      
Randall              ST_CLERK          124                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Peter                ST_CLERK          124                                      
John                 SA_MAN            100                                      
Karen                SA_MAN            100                                      
Alberto              SA_MAN            100                                      
Gerald               SA_MAN            100                                      
Eleni                SA_MAN            100                                      
Sean                 SA_REP            145                                      
David                SA_REP            145                                      
Peter                SA_REP            145                                      
Christopher          SA_REP            145                                      
Nanette              SA_REP            145                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Oliver               SA_REP            145                                      
Janette              SA_REP            146                                      
Patrick              SA_REP            146                                      
Allan                SA_REP            146                                      
Lindsey              SA_REP            146                                      
Louise               SA_REP            146                                      
Sarath               SA_REP            146                                      
Clara                SA_REP            147                                      
Danielle             SA_REP            147                                      
Mattea               SA_REP            147                                      
David                SA_REP            147                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Sundar               SA_REP            147                                      
Amit                 SA_REP            147                                      
Lisa                 SA_REP            148                                      
Harrison             SA_REP            148                                      
Tayler               SA_REP            148                                      
William              SA_REP            148                                      
Elizabeth            SA_REP            148                                      
Sundita              SA_REP            148                                      
Ellen                SA_REP            149                                      
Alyssa               SA_REP            149                                      
Jonathon             SA_REP            149                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Jack                 SA_REP            149                                      
Kimberely            SA_REP            149                                      
Charles              SA_REP            149                                      
Winston              SH_CLERK          120                                      
Jean                 SH_CLERK          120                                      
Martha               SH_CLERK          120                                      
Girard               SH_CLERK          120                                      
Nandita              SH_CLERK          121                                      
Alexis               SH_CLERK          121                                      
Julia                SH_CLERK          121                                      
Anthony              SH_CLERK          121                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Kelly                SH_CLERK          122                                      
Jennifer             SH_CLERK          122                                      
Timothy              SH_CLERK          122                                      
Randall              SH_CLERK          122                                      
Sarah                SH_CLERK          123                                      
Britney              SH_CLERK          123                                      
Samuel               SH_CLERK          123                                      
Vance                SH_CLERK          123                                      
Alana                SH_CLERK          124                                      
Kevin                SH_CLERK          124                                      
Donald               SH_CLERK          124                                      

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Douglas              SH_CLERK          124                                      
Jennifer             AD_ASST           101                                      
Michael              MK_MAN            100                                      
Pat                  MK_REP            201                                      
Susan                HR_REP            101                                      
Hermann              PR_REP            101                                      
Shelley              AC_MGR            101                                      
William              AC_ACCOUNT        205                                      

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name,job_id,manager_id from employees
  2* where  manager_id is null
SQL> /

FIRST_NAME           JOB_ID     MANAGER_ID                                      
-------------------- ---------- ----------                                      
Steven               AD_PRES                                                    

SQL> spool off
