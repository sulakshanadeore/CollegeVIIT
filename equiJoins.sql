SQL> clear scr

SQL> desc employees
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 EMPLOYEE_ID                                                       NOT NULL NUMBER(6)
 FIRST_NAME                                                                 VARCHAR2(20)
 LAST_NAME                                                         NOT NULL VARCHAR2(25)
 EMAIL                                                             NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                                               VARCHAR2(20)
 HIRE_DATE                                                         NOT NULL DATE
 JOB_ID                                                            NOT NULL VARCHAR2(10)
 SALARY                                                                     NUMBER(8,2)
 COMMISSION_PCT                                                             NUMBER(2,2)
 MANAGER_ID                                                                 NUMBER(6)
 DEPARTMENT_ID                                                              NUMBER(4)

SQL> desc departments
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 DEPARTMENT_ID                                                     NOT NULL NUMBER(4)
 DEPARTMENT_NAME                                                   NOT NULL VARCHAR2(30)
 MANAGER_ID                                                                 NUMBER(6)
 LOCATION_ID                                                                NUMBER(4)

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

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),d.department_id,
  2  department_name
  3* from  employees e  natural join departments d
SQL> /
select employee_id,concat(first_name,last_name),d.department_id,
                                                *
ERROR at line 1:
ORA-25155: column used in NATURAL join cannot have qualifier 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),department_id,
  2  department_name
  3  from  employees e  natural join departments d
  4* on department_id
SQL> /
on department_id
*
ERROR at line 4:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),department_id,
  2  department_name
  3* from  employees   natural join departments 
  4  /

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        101 NeenaYang                                                90 Executive                                       
        102 LexGarcia                                                90 Executive                                       
        104 BruceMiller                                              60 IT                                              
        105 DavidWilliams                                            60 IT                                              
        106 ValliJackson                                             60 IT                                              
        107 DianaNguyen                                              60 IT                                              
        109 DanielFaviet                                            100 Finance                                         
        110 JohnChen                                                100 Finance                                         
        111 IsmaelSciarra                                           100 Finance                                         
        112 Jose ManuelUrman                                        100 Finance                                         
        113 LuisPopp                                                100 Finance                                         

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        115 AlexanderKhoo                                            30 Purchasing                                      
        116 ShelliBaida                                              30 Purchasing                                      
        117 SigalTobias                                              30 Purchasing                                      
        118 GuyHimuro                                                30 Purchasing                                      
        119 KarenColmenares                                          30 Purchasing                                      
        129 LauraBissot                                              50 Shipping                                        
        130 MozheAtkinson                                            50 Shipping                                        
        131 JamesMarlow                                              50 Shipping                                        
        132 TJOlson                                                  50 Shipping                                        
        150 SeanTucker                                               80 Sales                                           
        151 DavidBernstein                                           80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        152 PeterHall                                                80 Sales                                           
        153 ChristopherOlsen                                         80 Sales                                           
        154 NanetteCambrault                                         80 Sales                                           
        155 OliverTuvault                                            80 Sales                                           
        184 NanditaSarchand                                          50 Shipping                                        
        185 AlexisBull                                               50 Shipping                                        
        186 JuliaDellinger                                           50 Shipping                                        
        187 AnthonyCabrio                                            50 Shipping                                        
        202 PatDavis                                                 20 Marketing                                       
        206 WilliamGietz                                            110 Accounting                                      

32 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),
  2  e.department_id,
  3  department_name
  4  from  employees e, departments d 
  5* where e.department_id=d.department_id
SQL> /

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        200 JenniferWhalen                                           10 Administration                                  
        207 JackJill                                                 10 Administration                                  
        201 MichaelMartinez                                          20 Marketing                                       
        202 PatDavis                                                 20 Marketing                                       
        208 AnaGill                                                  20 Marketing                                       
        118 GuyHimuro                                                30 Purchasing                                      
        119 KarenColmenares                                          30 Purchasing                                      
        117 SigalTobias                                              30 Purchasing                                      
        114 DenLi                                                    30 Purchasing                                      
        115 AlexanderKhoo                                            30 Purchasing                                      
        116 ShelliBaida                                              30 Purchasing                                      

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        203 SusanJacobs                                              40 Human Resources                                 
        132 TJOlson                                                  50 Shipping                                        
        133 JasonMallin                                              50 Shipping                                        
        134 MichaelRogers                                            50 Shipping                                        
        135 KiGee                                                    50 Shipping                                        
        136 HazelPhiltanker                                          50 Shipping                                        
        137 RenskeLadwig                                             50 Shipping                                        
        138 StephenStiles                                            50 Shipping                                        
        139 JohnSeo                                                  50 Shipping                                        
        141 TrennaRajs                                               50 Shipping                                        
        142 CurtisDavies                                             50 Shipping                                        

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        143 RandallMatos                                             50 Shipping                                        
        144 PeterVargas                                              50 Shipping                                        
        180 WinstonTaylor                                            50 Shipping                                        
        181 JeanFleaur                                               50 Shipping                                        
        182 MarthaSullivan                                           50 Shipping                                        
        183 GirardGeoni                                              50 Shipping                                        
        184 NanditaSarchand                                          50 Shipping                                        
        185 AlexisBull                                               50 Shipping                                        
        186 JuliaDellinger                                           50 Shipping                                        
        187 AnthonyCabrio                                            50 Shipping                                        
        188 KellyChung                                               50 Shipping                                        

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        189 JenniferDilly                                            50 Shipping                                        
        190 TimothyVenzl                                             50 Shipping                                        
        191 RandallPerkins                                           50 Shipping                                        
        192 SarahBell                                                50 Shipping                                        
        193 BritneyEverett                                           50 Shipping                                        
        194 SamuelMcLeod                                             50 Shipping                                        
        195 VanceJones                                               50 Shipping                                        
        196 AlanaWalsh                                               50 Shipping                                        
        197 KevinFeeney                                              50 Shipping                                        
        198 DonaldOConnell                                           50 Shipping                                        
        199 DouglasGrant                                             50 Shipping                                        

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        131 JamesMarlow                                              50 Shipping                                        
        130 MozheAtkinson                                            50 Shipping                                        
        129 LauraBissot                                              50 Shipping                                        
        128 StevenMarkle                                             50 Shipping                                        
        127 JamesLandry                                              50 Shipping                                        
        126 IreneMikkilineni                                         50 Shipping                                        
        125 JuliaNayer                                               50 Shipping                                        
        124 KevinMourgos                                             50 Shipping                                        
        123 ShantaVollman                                            50 Shipping                                        
        122 PayamKaufling                                            50 Shipping                                        
        121 AdamFripp                                                50 Shipping                                        

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        120 MatthewWeiss                                             50 Shipping                                        
        140 JoshuaPatel                                              50 Shipping                                        
        106 ValliJackson                                             60 IT                                              
        105 DavidWilliams                                            60 IT                                              
        104 BruceMiller                                              60 IT                                              
        103 AlexanderJames                                           60 IT                                              
        107 DianaNguyen                                              60 IT                                              
        204 HermannBrown                                             70 Public Relations                                
        145 JohnSingh                                                80 Sales                                           
        146 KarenPartners                                            80 Sales                                           
        147 AlbertoErrazuriz                                         80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        148 GeraldCambrault                                          80 Sales                                           
        149 EleniZlotkey                                             80 Sales                                           
        150 SeanTucker                                               80 Sales                                           
        151 DavidBernstein                                           80 Sales                                           
        152 PeterHall                                                80 Sales                                           
        153 ChristopherOlsen                                         80 Sales                                           
        154 NanetteCambrault                                         80 Sales                                           
        155 OliverTuvault                                            80 Sales                                           
        156 JanetteKing                                              80 Sales                                           
        157 PatrickSully                                             80 Sales                                           
        158 AllanMcEwen                                              80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        159 LindseySmith                                             80 Sales                                           
        160 LouiseDoran                                              80 Sales                                           
        161 SarathSewall                                             80 Sales                                           
        162 ClaraVishney                                             80 Sales                                           
        163 DanielleGreene                                           80 Sales                                           
        164 MatteaMarvins                                            80 Sales                                           
        165 DavidLee                                                 80 Sales                                           
        166 SundarAnde                                               80 Sales                                           
        167 AmitBanda                                                80 Sales                                           
        168 LisaOzer                                                 80 Sales                                           
        169 HarrisonBloom                                            80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        170 TaylerFox                                                80 Sales                                           
        171 WilliamSmith                                             80 Sales                                           
        172 ElizabethBates                                           80 Sales                                           
        173 SunditaKumar                                             80 Sales                                           
        174 EllenAbel                                                80 Sales                                           
        175 AlyssaHutton                                             80 Sales                                           
        176 JonathonTaylor                                           80 Sales                                           
        177 JackLivingston                                           80 Sales                                           
        179 CharlesJohnson                                           80 Sales                                           
        101 NeenaYang                                                90 Executive                                       
        100 StevenKing                                               90 Executive                                       

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        102 LexGarcia                                                90 Executive                                       
        109 DanielFaviet                                            100 Finance                                         
        108 NancyGruenberg                                          100 Finance                                         
        110 JohnChen                                                100 Finance                                         
        113 LuisPopp                                                100 Finance                                         
        112 Jose ManuelUrman                                        100 Finance                                         
        111 IsmaelSciarra                                           100 Finance                                         
        205 ShelleyHiggins                                          110 Accounting                                      
        206 WilliamGietz                                            110 Accounting                                      

108 rows selected.

SQL> set pages 100
SQL> /

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        200 JenniferWhalen                                           10 Administration                                  
        207 JackJill                                                 10 Administration                                  
        201 MichaelMartinez                                          20 Marketing                                       
        202 PatDavis                                                 20 Marketing                                       
        208 AnaGill                                                  20 Marketing                                       
        118 GuyHimuro                                                30 Purchasing                                      
        119 KarenColmenares                                          30 Purchasing                                      
        117 SigalTobias                                              30 Purchasing                                      
        114 DenLi                                                    30 Purchasing                                      
        115 AlexanderKhoo                                            30 Purchasing                                      
        116 ShelliBaida                                              30 Purchasing                                      
        203 SusanJacobs                                              40 Human Resources                                 
        132 TJOlson                                                  50 Shipping                                        
        133 JasonMallin                                              50 Shipping                                        
        134 MichaelRogers                                            50 Shipping                                        
        135 KiGee                                                    50 Shipping                                        
        136 HazelPhiltanker                                          50 Shipping                                        
        137 RenskeLadwig                                             50 Shipping                                        
        138 StephenStiles                                            50 Shipping                                        
        139 JohnSeo                                                  50 Shipping                                        
        141 TrennaRajs                                               50 Shipping                                        
        142 CurtisDavies                                             50 Shipping                                        
        143 RandallMatos                                             50 Shipping                                        
        144 PeterVargas                                              50 Shipping                                        
        180 WinstonTaylor                                            50 Shipping                                        
        181 JeanFleaur                                               50 Shipping                                        
        182 MarthaSullivan                                           50 Shipping                                        
        183 GirardGeoni                                              50 Shipping                                        
        184 NanditaSarchand                                          50 Shipping                                        
        185 AlexisBull                                               50 Shipping                                        
        186 JuliaDellinger                                           50 Shipping                                        
        187 AnthonyCabrio                                            50 Shipping                                        
        188 KellyChung                                               50 Shipping                                        
        189 JenniferDilly                                            50 Shipping                                        
        190 TimothyVenzl                                             50 Shipping                                        
        191 RandallPerkins                                           50 Shipping                                        
        192 SarahBell                                                50 Shipping                                        
        193 BritneyEverett                                           50 Shipping                                        
        194 SamuelMcLeod                                             50 Shipping                                        
        195 VanceJones                                               50 Shipping                                        
        196 AlanaWalsh                                               50 Shipping                                        
        197 KevinFeeney                                              50 Shipping                                        
        198 DonaldOConnell                                           50 Shipping                                        
        199 DouglasGrant                                             50 Shipping                                        
        131 JamesMarlow                                              50 Shipping                                        
        130 MozheAtkinson                                            50 Shipping                                        
        129 LauraBissot                                              50 Shipping                                        
        128 StevenMarkle                                             50 Shipping                                        
        127 JamesLandry                                              50 Shipping                                        
        126 IreneMikkilineni                                         50 Shipping                                        
        125 JuliaNayer                                               50 Shipping                                        
        124 KevinMourgos                                             50 Shipping                                        
        123 ShantaVollman                                            50 Shipping                                        
        122 PayamKaufling                                            50 Shipping                                        
        121 AdamFripp                                                50 Shipping                                        
        120 MatthewWeiss                                             50 Shipping                                        
        140 JoshuaPatel                                              50 Shipping                                        
        106 ValliJackson                                             60 IT                                              
        105 DavidWilliams                                            60 IT                                              
        104 BruceMiller                                              60 IT                                              
        103 AlexanderJames                                           60 IT                                              
        107 DianaNguyen                                              60 IT                                              
        204 HermannBrown                                             70 Public Relations                                
        145 JohnSingh                                                80 Sales                                           
        146 KarenPartners                                            80 Sales                                           
        147 AlbertoErrazuriz                                         80 Sales                                           
        148 GeraldCambrault                                          80 Sales                                           
        149 EleniZlotkey                                             80 Sales                                           
        150 SeanTucker                                               80 Sales                                           
        151 DavidBernstein                                           80 Sales                                           
        152 PeterHall                                                80 Sales                                           
        153 ChristopherOlsen                                         80 Sales                                           
        154 NanetteCambrault                                         80 Sales                                           
        155 OliverTuvault                                            80 Sales                                           
        156 JanetteKing                                              80 Sales                                           
        157 PatrickSully                                             80 Sales                                           
        158 AllanMcEwen                                              80 Sales                                           
        159 LindseySmith                                             80 Sales                                           
        160 LouiseDoran                                              80 Sales                                           
        161 SarathSewall                                             80 Sales                                           
        162 ClaraVishney                                             80 Sales                                           
        163 DanielleGreene                                           80 Sales                                           
        164 MatteaMarvins                                            80 Sales                                           
        165 DavidLee                                                 80 Sales                                           
        166 SundarAnde                                               80 Sales                                           
        167 AmitBanda                                                80 Sales                                           
        168 LisaOzer                                                 80 Sales                                           
        169 HarrisonBloom                                            80 Sales                                           
        170 TaylerFox                                                80 Sales                                           
        171 WilliamSmith                                             80 Sales                                           
        172 ElizabethBates                                           80 Sales                                           
        173 SunditaKumar                                             80 Sales                                           
        174 EllenAbel                                                80 Sales                                           
        175 AlyssaHutton                                             80 Sales                                           
        176 JonathonTaylor                                           80 Sales                                           
        177 JackLivingston                                           80 Sales                                           
        179 CharlesJohnson                                           80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        101 NeenaYang                                                90 Executive                                       
        100 StevenKing                                               90 Executive                                       
        102 LexGarcia                                                90 Executive                                       
        109 DanielFaviet                                            100 Finance                                         
        108 NancyGruenberg                                          100 Finance                                         
        110 JohnChen                                                100 Finance                                         
        113 LuisPopp                                                100 Finance                                         
        112 Jose ManuelUrman                                        100 Finance                                         
        111 IsmaelSciarra                                           100 Finance                                         
        205 ShelleyHiggins                                          110 Accounting                                      
        206 WilliamGietz                                            110 Accounting                                      

108 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),
  2  e.department_id,
  3  department_name
  4  from  employees e  inner join departments d 
  5* on e.department_id=d.department_id
SQL> /

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        200 JenniferWhalen                                           10 Administration                                  
        207 JackJill                                                 10 Administration                                  
        201 MichaelMartinez                                          20 Marketing                                       
        202 PatDavis                                                 20 Marketing                                       
        208 AnaGill                                                  20 Marketing                                       
        118 GuyHimuro                                                30 Purchasing                                      
        119 KarenColmenares                                          30 Purchasing                                      
        117 SigalTobias                                              30 Purchasing                                      
        114 DenLi                                                    30 Purchasing                                      
        115 AlexanderKhoo                                            30 Purchasing                                      
        116 ShelliBaida                                              30 Purchasing                                      
        203 SusanJacobs                                              40 Human Resources                                 
        132 TJOlson                                                  50 Shipping                                        
        133 JasonMallin                                              50 Shipping                                        
        134 MichaelRogers                                            50 Shipping                                        
        135 KiGee                                                    50 Shipping                                        
        136 HazelPhiltanker                                          50 Shipping                                        
        137 RenskeLadwig                                             50 Shipping                                        
        138 StephenStiles                                            50 Shipping                                        
        139 JohnSeo                                                  50 Shipping                                        
        141 TrennaRajs                                               50 Shipping                                        
        142 CurtisDavies                                             50 Shipping                                        
        143 RandallMatos                                             50 Shipping                                        
        144 PeterVargas                                              50 Shipping                                        
        180 WinstonTaylor                                            50 Shipping                                        
        181 JeanFleaur                                               50 Shipping                                        
        182 MarthaSullivan                                           50 Shipping                                        
        183 GirardGeoni                                              50 Shipping                                        
        184 NanditaSarchand                                          50 Shipping                                        
        185 AlexisBull                                               50 Shipping                                        
        186 JuliaDellinger                                           50 Shipping                                        
        187 AnthonyCabrio                                            50 Shipping                                        
        188 KellyChung                                               50 Shipping                                        
        189 JenniferDilly                                            50 Shipping                                        
        190 TimothyVenzl                                             50 Shipping                                        
        191 RandallPerkins                                           50 Shipping                                        
        192 SarahBell                                                50 Shipping                                        
        193 BritneyEverett                                           50 Shipping                                        
        194 SamuelMcLeod                                             50 Shipping                                        
        195 VanceJones                                               50 Shipping                                        
        196 AlanaWalsh                                               50 Shipping                                        
        197 KevinFeeney                                              50 Shipping                                        
        198 DonaldOConnell                                           50 Shipping                                        
        199 DouglasGrant                                             50 Shipping                                        
        131 JamesMarlow                                              50 Shipping                                        
        130 MozheAtkinson                                            50 Shipping                                        
        129 LauraBissot                                              50 Shipping                                        
        128 StevenMarkle                                             50 Shipping                                        
        127 JamesLandry                                              50 Shipping                                        
        126 IreneMikkilineni                                         50 Shipping                                        
        125 JuliaNayer                                               50 Shipping                                        
        124 KevinMourgos                                             50 Shipping                                        
        123 ShantaVollman                                            50 Shipping                                        
        122 PayamKaufling                                            50 Shipping                                        
        121 AdamFripp                                                50 Shipping                                        
        120 MatthewWeiss                                             50 Shipping                                        
        140 JoshuaPatel                                              50 Shipping                                        
        106 ValliJackson                                             60 IT                                              
        105 DavidWilliams                                            60 IT                                              
        104 BruceMiller                                              60 IT                                              
        103 AlexanderJames                                           60 IT                                              
        107 DianaNguyen                                              60 IT                                              
        204 HermannBrown                                             70 Public Relations                                
        145 JohnSingh                                                80 Sales                                           
        146 KarenPartners                                            80 Sales                                           
        147 AlbertoErrazuriz                                         80 Sales                                           
        148 GeraldCambrault                                          80 Sales                                           
        149 EleniZlotkey                                             80 Sales                                           
        150 SeanTucker                                               80 Sales                                           
        151 DavidBernstein                                           80 Sales                                           
        152 PeterHall                                                80 Sales                                           
        153 ChristopherOlsen                                         80 Sales                                           
        154 NanetteCambrault                                         80 Sales                                           
        155 OliverTuvault                                            80 Sales                                           
        156 JanetteKing                                              80 Sales                                           
        157 PatrickSully                                             80 Sales                                           
        158 AllanMcEwen                                              80 Sales                                           
        159 LindseySmith                                             80 Sales                                           
        160 LouiseDoran                                              80 Sales                                           
        161 SarathSewall                                             80 Sales                                           
        162 ClaraVishney                                             80 Sales                                           
        163 DanielleGreene                                           80 Sales                                           
        164 MatteaMarvins                                            80 Sales                                           
        165 DavidLee                                                 80 Sales                                           
        166 SundarAnde                                               80 Sales                                           
        167 AmitBanda                                                80 Sales                                           
        168 LisaOzer                                                 80 Sales                                           
        169 HarrisonBloom                                            80 Sales                                           
        170 TaylerFox                                                80 Sales                                           
        171 WilliamSmith                                             80 Sales                                           
        172 ElizabethBates                                           80 Sales                                           
        173 SunditaKumar                                             80 Sales                                           
        174 EllenAbel                                                80 Sales                                           
        175 AlyssaHutton                                             80 Sales                                           
        176 JonathonTaylor                                           80 Sales                                           
        177 JackLivingston                                           80 Sales                                           
        179 CharlesJohnson                                           80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        101 NeenaYang                                                90 Executive                                       
        100 StevenKing                                               90 Executive                                       
        102 LexGarcia                                                90 Executive                                       
        109 DanielFaviet                                            100 Finance                                         
        108 NancyGruenberg                                          100 Finance                                         
        110 JohnChen                                                100 Finance                                         
        113 LuisPopp                                                100 Finance                                         
        112 Jose ManuelUrman                                        100 Finance                                         
        111 IsmaelSciarra                                           100 Finance                                         
        205 ShelleyHiggins                                          110 Accounting                                      
        206 WilliamGietz                                            110 Accounting                                      

108 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),
  2  e.department_id,
  3  department_name
  4  from  employees e  inner join departments d 
  5  on e.department_id=d.department_id
  6* order by e.departmentid
  7  /
order by e.departmentid
         *
ERROR at line 6:
ORA-00904: "E"."DEPARTMENTID": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,concat(first_name,last_name),
  2  e.department_id,
  3  department_name
  4  from  employees e  inner join departments d 
  5  on e.department_id=d.department_id
  6* order by e.department_id
SQL> /

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        200 JenniferWhalen                                           10 Administration                                  
        207 JackJill                                                 10 Administration                                  
        201 MichaelMartinez                                          20 Marketing                                       
        202 PatDavis                                                 20 Marketing                                       
        208 AnaGill                                                  20 Marketing                                       
        118 GuyHimuro                                                30 Purchasing                                      
        119 KarenColmenares                                          30 Purchasing                                      
        117 SigalTobias                                              30 Purchasing                                      
        114 DenLi                                                    30 Purchasing                                      
        115 AlexanderKhoo                                            30 Purchasing                                      
        116 ShelliBaida                                              30 Purchasing                                      
        203 SusanJacobs                                              40 Human Resources                                 
        132 TJOlson                                                  50 Shipping                                        
        133 JasonMallin                                              50 Shipping                                        
        134 MichaelRogers                                            50 Shipping                                        
        135 KiGee                                                    50 Shipping                                        
        136 HazelPhiltanker                                          50 Shipping                                        
        137 RenskeLadwig                                             50 Shipping                                        
        138 StephenStiles                                            50 Shipping                                        
        139 JohnSeo                                                  50 Shipping                                        
        141 TrennaRajs                                               50 Shipping                                        
        142 CurtisDavies                                             50 Shipping                                        
        143 RandallMatos                                             50 Shipping                                        
        144 PeterVargas                                              50 Shipping                                        
        180 WinstonTaylor                                            50 Shipping                                        
        181 JeanFleaur                                               50 Shipping                                        
        182 MarthaSullivan                                           50 Shipping                                        
        183 GirardGeoni                                              50 Shipping                                        
        184 NanditaSarchand                                          50 Shipping                                        
        185 AlexisBull                                               50 Shipping                                        
        186 JuliaDellinger                                           50 Shipping                                        
        187 AnthonyCabrio                                            50 Shipping                                        
        188 KellyChung                                               50 Shipping                                        
        189 JenniferDilly                                            50 Shipping                                        
        190 TimothyVenzl                                             50 Shipping                                        
        191 RandallPerkins                                           50 Shipping                                        
        192 SarahBell                                                50 Shipping                                        
        193 BritneyEverett                                           50 Shipping                                        
        194 SamuelMcLeod                                             50 Shipping                                        
        195 VanceJones                                               50 Shipping                                        
        196 AlanaWalsh                                               50 Shipping                                        
        197 KevinFeeney                                              50 Shipping                                        
        198 DonaldOConnell                                           50 Shipping                                        
        199 DouglasGrant                                             50 Shipping                                        
        131 JamesMarlow                                              50 Shipping                                        
        130 MozheAtkinson                                            50 Shipping                                        
        129 LauraBissot                                              50 Shipping                                        
        128 StevenMarkle                                             50 Shipping                                        
        127 JamesLandry                                              50 Shipping                                        
        126 IreneMikkilineni                                         50 Shipping                                        
        125 JuliaNayer                                               50 Shipping                                        
        124 KevinMourgos                                             50 Shipping                                        
        123 ShantaVollman                                            50 Shipping                                        
        122 PayamKaufling                                            50 Shipping                                        
        121 AdamFripp                                                50 Shipping                                        
        120 MatthewWeiss                                             50 Shipping                                        
        140 JoshuaPatel                                              50 Shipping                                        
        106 ValliJackson                                             60 IT                                              
        105 DavidWilliams                                            60 IT                                              
        104 BruceMiller                                              60 IT                                              
        103 AlexanderJames                                           60 IT                                              
        107 DianaNguyen                                              60 IT                                              
        204 HermannBrown                                             70 Public Relations                                
        145 JohnSingh                                                80 Sales                                           
        146 KarenPartners                                            80 Sales                                           
        147 AlbertoErrazuriz                                         80 Sales                                           
        148 GeraldCambrault                                          80 Sales                                           
        149 EleniZlotkey                                             80 Sales                                           
        150 SeanTucker                                               80 Sales                                           
        151 DavidBernstein                                           80 Sales                                           
        152 PeterHall                                                80 Sales                                           
        153 ChristopherOlsen                                         80 Sales                                           
        154 NanetteCambrault                                         80 Sales                                           
        155 OliverTuvault                                            80 Sales                                           
        156 JanetteKing                                              80 Sales                                           
        157 PatrickSully                                             80 Sales                                           
        158 AllanMcEwen                                              80 Sales                                           
        159 LindseySmith                                             80 Sales                                           
        160 LouiseDoran                                              80 Sales                                           
        161 SarathSewall                                             80 Sales                                           
        162 ClaraVishney                                             80 Sales                                           
        163 DanielleGreene                                           80 Sales                                           
        164 MatteaMarvins                                            80 Sales                                           
        165 DavidLee                                                 80 Sales                                           
        166 SundarAnde                                               80 Sales                                           
        167 AmitBanda                                                80 Sales                                           
        168 LisaOzer                                                 80 Sales                                           
        169 HarrisonBloom                                            80 Sales                                           
        170 TaylerFox                                                80 Sales                                           
        171 WilliamSmith                                             80 Sales                                           
        172 ElizabethBates                                           80 Sales                                           
        173 SunditaKumar                                             80 Sales                                           
        174 EllenAbel                                                80 Sales                                           
        175 AlyssaHutton                                             80 Sales                                           
        176 JonathonTaylor                                           80 Sales                                           
        177 JackLivingston                                           80 Sales                                           
        179 CharlesJohnson                                           80 Sales                                           

EMPLOYEE_ID CONCAT(FIRST_NAME,LAST_NAME)                  DEPARTMENT_ID DEPARTMENT_NAME                                 
----------- --------------------------------------------- ------------- ------------------------------                  
        101 NeenaYang                                                90 Executive                                       
        100 StevenKing                                               90 Executive                                       
        102 LexGarcia                                                90 Executive                                       
        109 DanielFaviet                                            100 Finance                                         
        108 NancyGruenberg                                          100 Finance                                         
        110 JohnChen                                                100 Finance                                         
        113 LuisPopp                                                100 Finance                                         
        112 Jose ManuelUrman                                        100 Finance                                         
        111 IsmaelSciarra                                           100 Finance                                         
        205 ShelleyHiggins                                          110 Accounting                                      
        206 WilliamGietz                                            110 Accounting                                      

108 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select e.department_id,count(e.department_id)
  2  from  employees e  inner join departments d 
  3  on e.department_id=d.department_id
  4  group by  rollup(e.department_id)
  5* order by e.department_id
SQL> /

DEPARTMENT_ID COUNT(E.DEPARTMENT_ID)                                                                                    
------------- ----------------------                                                                                    
           10                      2                                                                                    
           20                      3                                                                                    
           30                      6                                                                                    
           40                      1                                                                                    
           50                     45                                                                                    
           60                      5                                                                                    
           70                      1                                                                                    
           80                     34                                                                                    
           90                      3                                                                                    
          100                      6                                                                                    
          110                      2                                                                                    
                                 108                                                                                    

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select e.department_id,department_name,count(e.department_id)
  2  from  employees e  inner join departments d 
  3  on e.department_id=d.department_id
  4  group by  rollup(e.department_id)
  5* order by e.department_id
SQL> /
select e.department_id,department_name,count(e.department_id)
                       *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> ed
Wrote file afiedt.buf

  1  select e.department_id,department_name,count(e.department_id)
  2  from  employees e  inner join departments d 
  3  on e.department_id=d.department_id
  4  group by department_name,  rollup(e.department_id)
  5* order by e.department_id
SQL> /

DEPARTMENT_ID DEPARTMENT_NAME                COUNT(E.DEPARTMENT_ID)                                                     
------------- ------------------------------ ----------------------                                                     
           10 Administration                                      2                                                     
           20 Marketing                                           3                                                     
           30 Purchasing                                          6                                                     
           40 Human Resources                                     1                                                     
           50 Shipping                                           45                                                     
           60 IT                                                  5                                                     
           70 Public Relations                                    1                                                     
           80 Sales                                              34                                                     
           90 Executive                                           3                                                     
          100 Finance                                             6                                                     
          110 Accounting                                          2                                                     
              Finance                                             6                                                     
              Purchasing                                          6                                                     
              Administration                                      2                                                     
              IT                                                  5                                                     
              Human Resources                                     1                                                     
              Public Relations                                    1                                                     
              Accounting                                          2                                                     
              Marketing                                           3                                                     
              Executive                                           3                                                     
              Shipping                                           45                                                     
              Sales                                              34                                                     

22 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select e.department_id,department_name dname,count(e.department_id) 
  2  from  employees e  inner join departments d 
  3  on e.department_id=d.department_id
  4  group by department_name,  rollup(e.department_id)
  5* order by e.department_id
SQL> /

DEPARTMENT_ID DNAME                          COUNT(E.DEPARTMENT_ID)                                                     
------------- ------------------------------ ----------------------                                                     
           10 Administration                                      2                                                     
           20 Marketing                                           3                                                     
           30 Purchasing                                          6                                                     
           40 Human Resources                                     1                                                     
           50 Shipping                                           45                                                     
           60 IT                                                  5                                                     
           70 Public Relations                                    1                                                     
           80 Sales                                              34                                                     
           90 Executive                                           3                                                     
          100 Finance                                             6                                                     
          110 Accounting                                          2                                                     
              Finance                                             6                                                     
              Purchasing                                          6                                                     
              Administration                                      2                                                     
              IT                                                  5                                                     
              Human Resources                                     1                                                     
              Public Relations                                    1                                                     
              Accounting                                          2                                                     
              Marketing                                           3                                                     
              Executive                                           3                                                     
              Shipping                                           45                                                     
              Sales                                              34                                                     

22 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select e.department_id,department_name dname,count(e.department_id) 
  2  from  employees e  inner join departments d 
  3  on e.department_id=d.department_id
  4  group by department_name,  rollup(e.department_id)
  5* order by e.department_id
SQL> select * from tab;

TNAME                                                                                                                   
------------------------------------------------------------------------------------------------------------------------
TABTYPE        CLUSTERID                                                                                                
------------- ----------                                                                                                
CATEGORIES                                                                                                              
TABLE                                                                                                                   
                                                                                                                        
BIN$7rNB1wV0SQG7xPxsq+o30Q==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
BIN$v9fpapFHQqSS1R4Yf7kSeA==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
COUNTRIES                                                                                                               
TABLE                                                                                                                   
                                                                                                                        
BIN$Vy2bR1sVRSOgizy4iZtRLQ==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
BIN$qkHKTp+oTBasXOpMElHCkA==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
BIN$hXlA2U7rR2uIcvc7xOi4KQ==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
BIN$sPj8D713SXS0T2hjsMmnNg==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
REGIONS                                                                                                                 
TABLE                                                                                                                   
                                                                                                                        
LOCATIONS                                                                                                               
TABLE                                                                                                                   
                                                                                                                        
DEPARTMENTS                                                                                                             
TABLE                                                                                                                   
                                                                                                                        
JOBS                                                                                                                    
TABLE                                                                                                                   
                                                                                                                        
EMPLOYEES                                                                                                               
TABLE                                                                                                                   
                                                                                                                        
JOB_HISTORY                                                                                                             
TABLE                                                                                                                   
                                                                                                                        
PRODUCTS                                                                                                                
TABLE                                                                                                                   
                                                                                                                        
SUPPLIERS                                                                                                               
TABLE                                                                                                                   
                                                                                                                        
ORDERS                                                                                                                  
TABLE                                                                                                                   
                                                                                                                        
ORDER_DETAILS                                                                                                           
TABLE                                                                                                                   
                                                                                                                        
EMP                                                                                                                     
TABLE                                                                                                                   
                                                                                                                        
VW_MGRVIEWEMP                                                                                                           
VIEW                                                                                                                    
                                                                                                                        
BIN$5VGGxyU1SROEPyHYPOB+gg==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
PROJECTS                                                                                                                
TABLE                                                                                                                   
                                                                                                                        
VW_EMPVIEW                                                                                                              
VIEW                                                                                                                    
                                                                                                                        
VW_SECOND                                                                                                               
VIEW                                                                                                                    
                                                                                                                        
VW_SAL_ROLLUP                                                                                                           
VIEW                                                                                                                    
                                                                                                                        
VW_CHECKVIEWEMPLOYEES                                                                                                   
VIEW                                                                                                                    
                                                                                                                        
V2_CHEKEMP                                                                                                              
SYNONYM                                                                                                                 
                                                                                                                        
EMP1                                                                                                                    
SYNONYM                                                                                                                 
                                                                                                                        
BIN$FEhkKYvzSduEj8aChgbBww==$0                                                                                          
TABLE                                                                                                                   
                                                                                                                        
MOVIES                                                                                                                  
TABLE                                                                                                                   
                                                                                                                        

30 rows selected.

SQL> 
SQL> 
SQL> select * from jobs
  2  ;

JOB_ID     JOB_TITLE                           MIN_SALARY MAX_SALARY                                                    
---------- ----------------------------------- ---------- ----------                                                    
AD_PRES    President                                20080      40000                                                    
AD_VP      Administration Vice President            15000      30000                                                    
AD_ASST    Administration Assistant                  3000       6000                                                    
FI_MGR     Finance Manager                           8200      16000                                                    
FI_ACCOUNT Accountant                                4200       9000                                                    
AC_MGR     Accounting Manager                        8200      16000                                                    
AC_ACCOUNT Public Accountant                         4200       9000                                                    
SA_MAN     Sales Manager                            10000      20080                                                    
SA_REP     Sales Representative                      6000      12008                                                    
PU_MAN     Purchasing Manager                        8000      15000                                                    
PU_CLERK   Purchasing Clerk                          2500       5500                                                    
ST_MAN     Stock Manager                             5500       8500                                                    
ST_CLERK   Stock Clerk                               2008       5000                                                    
SH_CLERK   Shipping Clerk                            2500       5500                                                    
IT_PROG    Programmer                                4000      10000                                                    
MK_MAN     Marketing Manager                         9000      15000                                                    
MK_REP     Marketing Representative                  4000       9000                                                    
HR_REP     Human Resources Representative            4000       9000                                                    
PR_REP     Public Relations Representative           4500      10500                                                    

19 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name + '  ' + last_name,e.job_id,job_title,e.department_id,department_name,count(e.department_id)
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6*    order by e.department_id
SQL> /
select employee_id,first_name + '  ' + last_name,e.job_id,job_title,e.department_id,department_name,count(e.department_id)
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name + '  ' + last_name,e.job_id,job_title,e.department_id,department_name
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6*    order by e.department_id
SQL> /
select employee_id,first_name + '  ' + last_name,e.job_id,job_title,e.department_id,department_name
                   *
ERROR at line 1:
ORA-01722: invalid number 


SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name   ||'   '||  last_name,e.job_id,job_title,e.department_id,department_name
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6*    order by e.department_id
SQL> /

EMPLOYEE_ID FIRST_NAME||''||LAST_NAME                        JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
        200 Jennifer   Whalen                                AD_ASST    Administration Assistant                        
           10 Administration                                                                                            
                                                                                                                        
        207 Jack   Jill                                      PU_CLERK   Purchasing Clerk                                
           10 Administration                                                                                            
                                                                                                                        
        201 Michael   Martinez                               MK_MAN     Marketing Manager                               
           20 Marketing                                                                                                 
                                                                                                                        
        202 Pat   Davis                                      MK_REP     Marketing Representative                        
           20 Marketing                                                                                                 
                                                                                                                        
        208 Ana   Gill                                       PU_CLERK   Purchasing Clerk                                
           20 Marketing                                                                                                 
                                                                                                                        
        115 Alexander   Khoo                                 PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        116 Shelli   Baida                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        117 Sigal   Tobias                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        118 Guy   Himuro                                     PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        119 Karen   Colmenares                               PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        114 Den   Li                                         PU_MAN     Purchasing Manager                              
           30 Purchasing                                                                                                
                                                                                                                        
        203 Susan   Jacobs                                   HR_REP     Human Resources Representative                  
           40 Human Resources                                                                                           
                                                                                                                        
        184 Nandita   Sarchand                               SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        185 Alexis   Bull                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        186 Julia   Dellinger                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        187 Anthony   Cabrio                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        188 Kelly   Chung                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        189 Jennifer   Dilly                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        190 Timothy   Venzl                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        191 Randall   Perkins                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        192 Sarah   Bell                                     SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        193 Britney   Everett                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        194 Samuel   McLeod                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        195 Vance   Jones                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        196 Alana   Walsh                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        197 Kevin   Feeney                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        198 Donald   OConnell                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        199 Douglas   Grant                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        180 Winston   Taylor                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        181 Jean   Fleaur                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        182 Martha   Sullivan                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        183 Girard   Geoni                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  

EMPLOYEE_ID FIRST_NAME||''||LAST_NAME                        JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
                                                                                                                        
        132 TJ   Olson                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        143 Randall   Matos                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        142 Curtis   Davies                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        141 Trenna   Rajs                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        140 Joshua   Patel                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        125 Julia   Nayer                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        126 Irene   Mikkilineni                              ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        127 James   Landry                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        128 Steven   Markle                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        129 Laura   Bissot                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        130 Mozhe   Atkinson                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        131 James   Marlow                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        144 Peter   Vargas                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        133 Jason   Mallin                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        134 Michael   Rogers                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        135 Ki   Gee                                         ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        136 Hazel   Philtanker                               ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        137 Renske   Ladwig                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        138 Stephen   Stiles                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        139 John   Seo                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        124 Kevin   Mourgos                                  ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        123 Shanta   Vollman                                 ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        122 Payam   Kaufling                                 ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        121 Adam   Fripp                                     ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        120 Matthew   Weiss                                  ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        104 Bruce   Miller                                   IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        103 Alexander   James                                IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        107 Diana   Nguyen                                   IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        106 Valli   Jackson                                  IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        105 David   Williams                                 IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        204 Hermann   Brown                                  PR_REP     Public Relations Representative                 
           70 Public Relations                                                                                          
                                                                                                                        
        156 Janette   King                                   SA_REP     Sales Representative                            

EMPLOYEE_ID FIRST_NAME||''||LAST_NAME                        JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
           80 Sales                                                                                                     
                                                                                                                        
        157 Patrick   Sully                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        158 Allan   McEwen                                   SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        159 Lindsey   Smith                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        160 Louise   Doran                                   SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        161 Sarath   Sewall                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        179 Charles   Johnson                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        163 Danielle   Greene                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        164 Mattea   Marvins                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        165 David   Lee                                      SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        166 Sundar   Ande                                    SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        167 Amit   Banda                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        168 Lisa   Ozer                                      SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        155 Oliver   Tuvault                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        149 Eleni   Zlotkey                                  SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        145 John   Singh                                     SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        146 Karen   Partners                                 SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        147 Alberto   Errazuriz                              SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        148 Gerald   Cambrault                               SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        169 Harrison   Bloom                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        162 Clara   Vishney                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        150 Sean   Tucker                                    SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        151 David   Bernstein                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        152 Peter   Hall                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        153 Christopher   Olsen                              SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        154 Nanette   Cambrault                              SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        177 Jack   Livingston                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        176 Jonathon   Taylor                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        175 Alyssa   Hutton                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        174 Ellen   Abel                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        170 Tayler   Fox                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        171 William   Smith                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        

EMPLOYEE_ID FIRST_NAME||''||LAST_NAME                        JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
        172 Elizabeth   Bates                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        173 Sundita   Kumar                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        100 Steven   King                                    AD_PRES    President                                       
           90 Executive                                                                                                 
                                                                                                                        
        102 Lex   Garcia                                     AD_VP      Administration Vice President                   
           90 Executive                                                                                                 
                                                                                                                        
        101 Neena   Yang                                     AD_VP      Administration Vice President                   
           90 Executive                                                                                                 
                                                                                                                        
        112 Jose Manuel   Urman                              FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        111 Ismael   Sciarra                                 FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        108 Nancy   Gruenberg                                FI_MGR     Finance Manager                                 
          100 Finance                                                                                                   
                                                                                                                        
        113 Luis   Popp                                      FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        109 Daniel   Faviet                                  FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        110 John   Chen                                      FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        205 Shelley   Higgins                                AC_MGR     Accounting Manager                              
          110 Accounting                                                                                                
                                                                                                                        
        206 William   Gietz                                  AC_ACCOUNT Public Accountant                               
          110 Accounting                                                                                                
                                                                                                                        

108 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name   ||'   '||  last_name as fullname,e.job_id,job_title,e.department_id,department_name
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6*    order by e.department_id
SQL> /

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
        200 Jennifer   Whalen                                AD_ASST    Administration Assistant                        
           10 Administration                                                                                            
                                                                                                                        
        207 Jack   Jill                                      PU_CLERK   Purchasing Clerk                                
           10 Administration                                                                                            
                                                                                                                        
        201 Michael   Martinez                               MK_MAN     Marketing Manager                               
           20 Marketing                                                                                                 
                                                                                                                        
        202 Pat   Davis                                      MK_REP     Marketing Representative                        
           20 Marketing                                                                                                 
                                                                                                                        
        208 Ana   Gill                                       PU_CLERK   Purchasing Clerk                                
           20 Marketing                                                                                                 
                                                                                                                        
        115 Alexander   Khoo                                 PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        116 Shelli   Baida                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        117 Sigal   Tobias                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        118 Guy   Himuro                                     PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        119 Karen   Colmenares                               PU_CLERK   Purchasing Clerk                                
           30 Purchasing                                                                                                
                                                                                                                        
        114 Den   Li                                         PU_MAN     Purchasing Manager                              
           30 Purchasing                                                                                                
                                                                                                                        
        203 Susan   Jacobs                                   HR_REP     Human Resources Representative                  
           40 Human Resources                                                                                           
                                                                                                                        
        184 Nandita   Sarchand                               SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        185 Alexis   Bull                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        186 Julia   Dellinger                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        187 Anthony   Cabrio                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        188 Kelly   Chung                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        189 Jennifer   Dilly                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        190 Timothy   Venzl                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        191 Randall   Perkins                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        192 Sarah   Bell                                     SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        193 Britney   Everett                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        194 Samuel   McLeod                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        195 Vance   Jones                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        196 Alana   Walsh                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        197 Kevin   Feeney                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        198 Donald   OConnell                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        199 Douglas   Grant                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        180 Winston   Taylor                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        181 Jean   Fleaur                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        182 Martha   Sullivan                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  
                                                                                                                        
        183 Girard   Geoni                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                                                                                                  

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
                                                                                                                        
        132 TJ   Olson                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        143 Randall   Matos                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        142 Curtis   Davies                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        141 Trenna   Rajs                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        140 Joshua   Patel                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        125 Julia   Nayer                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        126 Irene   Mikkilineni                              ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        127 James   Landry                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        128 Steven   Markle                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        129 Laura   Bissot                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        130 Mozhe   Atkinson                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        131 James   Marlow                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        144 Peter   Vargas                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        133 Jason   Mallin                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        134 Michael   Rogers                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        135 Ki   Gee                                         ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        136 Hazel   Philtanker                               ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        137 Renske   Ladwig                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        138 Stephen   Stiles                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        139 John   Seo                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                                                                                                  
                                                                                                                        
        124 Kevin   Mourgos                                  ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        123 Shanta   Vollman                                 ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        122 Payam   Kaufling                                 ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        121 Adam   Fripp                                     ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        120 Matthew   Weiss                                  ST_MAN     Stock Manager                                   
           50 Shipping                                                                                                  
                                                                                                                        
        104 Bruce   Miller                                   IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        103 Alexander   James                                IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        107 Diana   Nguyen                                   IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        106 Valli   Jackson                                  IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        105 David   Williams                                 IT_PROG    Programmer                                      
           60 IT                                                                                                        
                                                                                                                        
        204 Hermann   Brown                                  PR_REP     Public Relations Representative                 
           70 Public Relations                                                                                          
                                                                                                                        
        156 Janette   King                                   SA_REP     Sales Representative                            

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
           80 Sales                                                                                                     
                                                                                                                        
        157 Patrick   Sully                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        158 Allan   McEwen                                   SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        159 Lindsey   Smith                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        160 Louise   Doran                                   SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        161 Sarath   Sewall                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        179 Charles   Johnson                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        163 Danielle   Greene                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        164 Mattea   Marvins                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        165 David   Lee                                      SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        166 Sundar   Ande                                    SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        167 Amit   Banda                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        168 Lisa   Ozer                                      SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        155 Oliver   Tuvault                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        149 Eleni   Zlotkey                                  SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        145 John   Singh                                     SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        146 Karen   Partners                                 SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        147 Alberto   Errazuriz                              SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        148 Gerald   Cambrault                               SA_MAN     Sales Manager                                   
           80 Sales                                                                                                     
                                                                                                                        
        169 Harrison   Bloom                                 SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        162 Clara   Vishney                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        150 Sean   Tucker                                    SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        151 David   Bernstein                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        152 Peter   Hall                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        153 Christopher   Olsen                              SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        154 Nanette   Cambrault                              SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        177 Jack   Livingston                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        176 Jonathon   Taylor                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        175 Alyssa   Hutton                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        174 Ellen   Abel                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        170 Tayler   Fox                                     SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        171 William   Smith                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                                                                                           
------------- ------------------------------                                                                            
        172 Elizabeth   Bates                                SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        173 Sundita   Kumar                                  SA_REP     Sales Representative                            
           80 Sales                                                                                                     
                                                                                                                        
        100 Steven   King                                    AD_PRES    President                                       
           90 Executive                                                                                                 
                                                                                                                        
        102 Lex   Garcia                                     AD_VP      Administration Vice President                   
           90 Executive                                                                                                 
                                                                                                                        
        101 Neena   Yang                                     AD_VP      Administration Vice President                   
           90 Executive                                                                                                 
                                                                                                                        
        112 Jose Manuel   Urman                              FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        111 Ismael   Sciarra                                 FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        108 Nancy   Gruenberg                                FI_MGR     Finance Manager                                 
          100 Finance                                                                                                   
                                                                                                                        
        113 Luis   Popp                                      FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        109 Daniel   Faviet                                  FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        110 John   Chen                                      FI_ACCOUNT Accountant                                      
          100 Finance                                                                                                   
                                                                                                                        
        205 Shelley   Higgins                                AC_MGR     Accounting Manager                              
          110 Accounting                                                                                                
                                                                                                                        
        206 William   Gietz                                  AC_ACCOUNT Public Accountant                               
          110 Accounting                                                                                                
                                                                                                                        

108 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name   ||'   '||  last_name as fullname,e.job_id,job_title,e.department_id,department_name,location_name
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6  inner join locations l
  7  on l.location_id=d.location_id
  8*    order by e.department_id
SQL> /
select employee_id,first_name   ||'   '||  last_name as fullname,e.job_id,job_title,e.department_id,department_name,location_name
                                                                                                                    *
ERROR at line 1:
ORA-00904: "LOCATION_NAME": invalid identifier 


SQL> desc locations
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- --------------------------------------------
 LOCATION_ID                                                       NOT NULL NUMBER(4)
 STREET_ADDRESS                                                             VARCHAR2(40)
 POSTAL_CODE                                                                VARCHAR2(12)
 CITY                                                              NOT NULL VARCHAR2(30)
 STATE_PROVINCE                                                             VARCHAR2(25)
 COUNTRY_ID                                                                 CHAR(2)

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name   ||'   '||  last_name as fullname,e.job_id,job_title,e.department_id,department_name,city
  2      from  employees e  inner join departments d 
  3      on e.department_id=d.department_id
  4     inner join jobs  j
  5  on e.job_id=j.job_id
  6  inner join locations l
  7  on l.location_id=d.location_id
  8*    order by e.department_id
SQL> /

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
        207 Jack   Jill                                      PU_CLERK   Purchasing Clerk                                
           10 Administration                 Seattle                                                                    
                                                                                                                        
        200 Jennifer   Whalen                                AD_ASST    Administration Assistant                        
           10 Administration                 Seattle                                                                    
                                                                                                                        
        201 Michael   Martinez                               MK_MAN     Marketing Manager                               
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        208 Ana   Gill                                       PU_CLERK   Purchasing Clerk                                
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        202 Pat   Davis                                      MK_REP     Marketing Representative                        
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        119 Karen   Colmenares                               PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        118 Guy   Himuro                                     PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        117 Sigal   Tobias                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        116 Shelli   Baida                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        115 Alexander   Khoo                                 PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        114 Den   Li                                         PU_MAN     Purchasing Manager                              
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        203 Susan   Jacobs                                   HR_REP     Human Resources Representative                  
           40 Human Resources                London                                                                     
                                                                                                                        
        121 Adam   Fripp                                     ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        124 Kevin   Mourgos                                  ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        125 Julia   Nayer                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        126 Irene   Mikkilineni                              ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        127 James   Landry                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        128 Steven   Markle                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        129 Laura   Bissot                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        130 Mozhe   Atkinson                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        131 James   Marlow                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        132 TJ   Olson                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        133 Jason   Mallin                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        134 Michael   Rogers                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        135 Ki   Gee                                         ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        136 Hazel   Philtanker                               ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        137 Renske   Ladwig                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        138 Stephen   Stiles                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        139 John   Seo                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        140 Joshua   Patel                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        141 Trenna   Rajs                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        142 Curtis   Davies                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
                                                                                                                        
        143 Randall   Matos                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        144 Peter   Vargas                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        180 Winston   Taylor                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        181 Jean   Fleaur                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        182 Martha   Sullivan                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        183 Girard   Geoni                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        184 Nandita   Sarchand                               SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        185 Alexis   Bull                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        186 Julia   Dellinger                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        187 Anthony   Cabrio                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        188 Kelly   Chung                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        189 Jennifer   Dilly                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        190 Timothy   Venzl                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        191 Randall   Perkins                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        192 Sarah   Bell                                     SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        193 Britney   Everett                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        194 Samuel   McLeod                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        195 Vance   Jones                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        196 Alana   Walsh                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        197 Kevin   Feeney                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        198 Donald   OConnell                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        199 Douglas   Grant                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        122 Payam   Kaufling                                 ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        123 Shanta   Vollman                                 ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        120 Matthew   Weiss                                  ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        106 Valli   Jackson                                  IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        107 Diana   Nguyen                                   IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        103 Alexander   James                                IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        105 David   Williams                                 IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        104 Bruce   Miller                                   IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        204 Hermann   Brown                                  PR_REP     Public Relations Representative                 
           70 Public Relations               Munich                                                                     
                                                                                                                        
        156 Janette   King                                   SA_REP     Sales Representative                            

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
           80 Sales                          Oxford                                                                     
                                                                                                                        
        177 Jack   Livingston                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        176 Jonathon   Taylor                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        175 Alyssa   Hutton                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        174 Ellen   Abel                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        173 Sundita   Kumar                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        172 Elizabeth   Bates                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        171 William   Smith                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        170 Tayler   Fox                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        169 Harrison   Bloom                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        168 Lisa   Ozer                                      SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        145 John   Singh                                     SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        146 Karen   Partners                                 SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        147 Alberto   Errazuriz                              SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        148 Gerald   Cambrault                               SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        149 Eleni   Zlotkey                                  SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        150 Sean   Tucker                                    SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        151 David   Bernstein                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        152 Peter   Hall                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        153 Christopher   Olsen                              SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        154 Nanette   Cambrault                              SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        155 Oliver   Tuvault                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        179 Charles   Johnson                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        157 Patrick   Sully                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        158 Allan   McEwen                                   SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        159 Lindsey   Smith                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        160 Louise   Doran                                   SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        161 Sarath   Sewall                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        162 Clara   Vishney                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        163 Danielle   Greene                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        164 Mattea   Marvins                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        165 David   Lee                                      SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
        166 Sundar   Ande                                    SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        167 Amit   Banda                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        101 Neena   Yang                                     AD_VP      Administration Vice President                   
           90 Executive                      Seattle                                                                    
                                                                                                                        
        102 Lex   Garcia                                     AD_VP      Administration Vice President                   
           90 Executive                      Seattle                                                                    
                                                                                                                        
        100 Steven   King                                    AD_PRES    President                                       
           90 Executive                      Seattle                                                                    
                                                                                                                        
        109 Daniel   Faviet                                  FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        108 Nancy   Gruenberg                                FI_MGR     Finance Manager                                 
          100 Finance                        Seattle                                                                    
                                                                                                                        
        111 Ismael   Sciarra                                 FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        112 Jose Manuel   Urman                              FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        113 Luis   Popp                                      FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        110 John   Chen                                      FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        206 William   Gietz                                  AC_ACCOUNT Public Accountant                               
          110 Accounting                     Seattle                                                                    
                                                                                                                        
        205 Shelley   Higgins                                AC_MGR     Accounting Manager                              
          110 Accounting                     Seattle                                                                    
                                                                                                                        

108 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name   ||'   '||  last_name as fullname,e.job_id,job_title,e.department_id,
  2  department_name,city
  3      from  employees e  inner join departments d 
  4      on e.department_id=d.department_id
  5     inner join jobs  j
  6  on e.job_id=j.job_id
  7  inner join locations l
  8  on l.location_id=d.location_id
  9*    order by e.department_id
 10  ;

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
        207 Jack   Jill                                      PU_CLERK   Purchasing Clerk                                
           10 Administration                 Seattle                                                                    
                                                                                                                        
        200 Jennifer   Whalen                                AD_ASST    Administration Assistant                        
           10 Administration                 Seattle                                                                    
                                                                                                                        
        201 Michael   Martinez                               MK_MAN     Marketing Manager                               
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        208 Ana   Gill                                       PU_CLERK   Purchasing Clerk                                
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        202 Pat   Davis                                      MK_REP     Marketing Representative                        
           20 Marketing                      Toronto                                                                    
                                                                                                                        
        119 Karen   Colmenares                               PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        118 Guy   Himuro                                     PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        117 Sigal   Tobias                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        116 Shelli   Baida                                   PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        115 Alexander   Khoo                                 PU_CLERK   Purchasing Clerk                                
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        114 Den   Li                                         PU_MAN     Purchasing Manager                              
           30 Purchasing                     Seattle                                                                    
                                                                                                                        
        203 Susan   Jacobs                                   HR_REP     Human Resources Representative                  
           40 Human Resources                London                                                                     
                                                                                                                        
        121 Adam   Fripp                                     ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        124 Kevin   Mourgos                                  ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        125 Julia   Nayer                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        126 Irene   Mikkilineni                              ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        127 James   Landry                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        128 Steven   Markle                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        129 Laura   Bissot                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        130 Mozhe   Atkinson                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        131 James   Marlow                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        132 TJ   Olson                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        133 Jason   Mallin                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        134 Michael   Rogers                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        135 Ki   Gee                                         ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        136 Hazel   Philtanker                               ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        137 Renske   Ladwig                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        138 Stephen   Stiles                                 ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        139 John   Seo                                       ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        140 Joshua   Patel                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        141 Trenna   Rajs                                    ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        142 Curtis   Davies                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
                                                                                                                        
        143 Randall   Matos                                  ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        144 Peter   Vargas                                   ST_CLERK   Stock Clerk                                     
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        180 Winston   Taylor                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        181 Jean   Fleaur                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        182 Martha   Sullivan                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        183 Girard   Geoni                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        184 Nandita   Sarchand                               SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        185 Alexis   Bull                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        186 Julia   Dellinger                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        187 Anthony   Cabrio                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        188 Kelly   Chung                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        189 Jennifer   Dilly                                 SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        190 Timothy   Venzl                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        191 Randall   Perkins                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        192 Sarah   Bell                                     SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        193 Britney   Everett                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        194 Samuel   McLeod                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        195 Vance   Jones                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        196 Alana   Walsh                                    SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        197 Kevin   Feeney                                   SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        198 Donald   OConnell                                SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        199 Douglas   Grant                                  SH_CLERK   Shipping Clerk                                  
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        122 Payam   Kaufling                                 ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        123 Shanta   Vollman                                 ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        120 Matthew   Weiss                                  ST_MAN     Stock Manager                                   
           50 Shipping                       South San Francisco                                                        
                                                                                                                        
        106 Valli   Jackson                                  IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        107 Diana   Nguyen                                   IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        103 Alexander   James                                IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        105 David   Williams                                 IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        104 Bruce   Miller                                   IT_PROG    Programmer                                      
           60 IT                             Southlake                                                                  
                                                                                                                        
        204 Hermann   Brown                                  PR_REP     Public Relations Representative                 
           70 Public Relations               Munich                                                                     
                                                                                                                        
        156 Janette   King                                   SA_REP     Sales Representative                            

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
           80 Sales                          Oxford                                                                     
                                                                                                                        
        177 Jack   Livingston                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        176 Jonathon   Taylor                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        175 Alyssa   Hutton                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        174 Ellen   Abel                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        173 Sundita   Kumar                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        172 Elizabeth   Bates                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        171 William   Smith                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        170 Tayler   Fox                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        169 Harrison   Bloom                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        168 Lisa   Ozer                                      SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        145 John   Singh                                     SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        146 Karen   Partners                                 SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        147 Alberto   Errazuriz                              SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        148 Gerald   Cambrault                               SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        149 Eleni   Zlotkey                                  SA_MAN     Sales Manager                                   
           80 Sales                          Oxford                                                                     
                                                                                                                        
        150 Sean   Tucker                                    SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        151 David   Bernstein                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        152 Peter   Hall                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        153 Christopher   Olsen                              SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        154 Nanette   Cambrault                              SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        155 Oliver   Tuvault                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        179 Charles   Johnson                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        157 Patrick   Sully                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        158 Allan   McEwen                                   SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        159 Lindsey   Smith                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        160 Louise   Doran                                   SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        161 Sarath   Sewall                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        162 Clara   Vishney                                  SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        163 Danielle   Greene                                SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        164 Mattea   Marvins                                 SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        165 David   Lee                                      SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        

EMPLOYEE_ID FULLNAME                                         JOB_ID     JOB_TITLE                                       
----------- ------------------------------------------------ ---------- -----------------------------------             
DEPARTMENT_ID DEPARTMENT_NAME                CITY                                                                       
------------- ------------------------------ ------------------------------                                             
        166 Sundar   Ande                                    SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        167 Amit   Banda                                     SA_REP     Sales Representative                            
           80 Sales                          Oxford                                                                     
                                                                                                                        
        101 Neena   Yang                                     AD_VP      Administration Vice President                   
           90 Executive                      Seattle                                                                    
                                                                                                                        
        102 Lex   Garcia                                     AD_VP      Administration Vice President                   
           90 Executive                      Seattle                                                                    
                                                                                                                        
        100 Steven   King                                    AD_PRES    President                                       
           90 Executive                      Seattle                                                                    
                                                                                                                        
        109 Daniel   Faviet                                  FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        108 Nancy   Gruenberg                                FI_MGR     Finance Manager                                 
          100 Finance                        Seattle                                                                    
                                                                                                                        
        111 Ismael   Sciarra                                 FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        112 Jose Manuel   Urman                              FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        113 Luis   Popp                                      FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        110 John   Chen                                      FI_ACCOUNT Accountant                                      
          100 Finance                        Seattle                                                                    
                                                                                                                        
        206 William   Gietz                                  AC_ACCOUNT Public Accountant                               
          110 Accounting                     Seattle                                                                    
                                                                                                                        
        205 Shelley   Higgins                                AC_MGR     Accounting Manager                              
          110 Accounting                     Seattle                                                                    
                                                                                                                        

108 rows selected.

SQL> spool off
