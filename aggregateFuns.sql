SQL> set lines 120
SQL> set pages 60
SQL> select * from employees;

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        100 Steven               King                      SKING                     1.515.555.0100       17-JUN-13     
AD_PRES         24000                                      90                                                           
                                                                                                                        
        101 Neena                Yang                      NYANG                     1.515.555.0101       21-SEP-15     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        102 Lex                  Garcia                    LGARCIA                   1.515.555.0102       13-JAN-11     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        103 Alexander            James                     AJAMES                    1.590.555.0103       03-JAN-16     
IT_PROG          9000                       102            60                                                           
                                                                                                                        
        104 Bruce                Miller                    BMILLER                   1.590.555.0104       21-MAY-17     
IT_PROG          6000                       103            60                                                           
                                                                                                                        
        105 David                Williams                  DWILLIAMS                 1.590.555.0105       25-JUN-15     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        106 Valli                Jackson                   VJACKSON                  1.590.555.0106       05-FEB-16     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        107 Diana                Nguyen                    DNGUYEN                   1.590.555.0107       07-FEB-17     
IT_PROG          4200                       103            60                                                           
                                                                                                                        
        108 Nancy                Gruenberg                 NGRUENBE                  1.515.555.0108       17-AUG-12     
FI_MGR          12008                       101           100                                                           
                                                                                                                        
        109 Daniel               Faviet                    DFAVIET                   1.515.555.0109       16-AUG-12     
FI_ACCOUNT       9000                       108           100                                                           
                                                                                                                        
        110 John                 Chen                      JCHEN                     1.515.555.0110       28-SEP-15     
FI_ACCOUNT       8200                       108           100                                                           
                                                                                                                        
        111 Ismael               Sciarra                   ISCIARRA                  1.515.555.0111       30-SEP-15     
FI_ACCOUNT       7700                       108           100                                                           
                                                                                                                        
        112 Jose Manuel          Urman                     JMURMAN                   1.515.555.0112       07-MAR-16     
FI_ACCOUNT       7800                       108           100                                                           
                                                                                                                        
        113 Luis                 Popp                      LPOPP                     1.515.555.0113       07-DEC-17     
FI_ACCOUNT       6900                       108           100                                                           
                                                                                                                        
        114 Den                  Li                        DLI                       1.515.555.0114       07-DEC-12     
PU_MAN          11000                       100            30                                                           
                                                                                                                        
        115 Alexander            Khoo                      AKHOO                     1.515.555.0115       18-MAY-13     
PU_CLERK         3100                       114            30                                                           
                                                                                                                        
        116 Shelli               Baida                     SBAIDA                    1.515.555.0116       24-DEC-15     
PU_CLERK         2900                       114            30                                                           
                                                                                                                        
        117 Sigal                Tobias                    STOBIAS                   1.515.555.0117       24-JUL-15     
PU_CLERK         2800                       114            30                                                           
                                                                                                                        
        118 Guy                  Himuro                    GHIMURO                   1.515.555.0118       15-NOV-16     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
PU_CLERK         2600                       114            30                                                           
                                                                                                                        
        119 Karen                Colmenares                KCOLMENA                  1.515.555.0119       10-AUG-17     
PU_CLERK         2500                       114            30                                                           
                                                                                                                        
        120 Matthew              Weiss                     MWEISS                    1.650.555.0120       18-JUL-14     
ST_MAN           8000                       100            50                                                           
                                                                                                                        
        121 Adam                 Fripp                     AFRIPP                    1.650.555.0121       10-APR-15     
ST_MAN           8200                       100            50                                                           
                                                                                                                        
        122 Payam                Kaufling                  PKAUFLIN                  1.650.555.0122       01-MAY-13     
ST_MAN           7900                       100            50                                                           
                                                                                                                        
        123 Shanta               Vollman                   SVOLLMAN                  1.650.555.0123       10-OCT-15     
ST_MAN           6500                       100            50                                                           
                                                                                                                        
        124 Kevin                Mourgos                   KMOURGOS                  1.650.555.0124       16-NOV-17     
ST_MAN           5800                       100            50                                                           
                                                                                                                        
        125 Julia                Nayer                     JNAYER                    1.650.555.0125       16-JUL-15     
ST_CLERK         3200                       120            50                                                           
                                                                                                                        
        126 Irene                Mikkilineni               IMIKKILI                  1.650.555.0126       28-SEP-16     
ST_CLERK         2700                       120            50                                                           
                                                                                                                        
        127 James                Landry                    JLANDRY                   1.650.555.0127       14-JAN-17     
ST_CLERK         2400                       120            50                                                           
                                                                                                                        
        128 Steven               Markle                    SMARKLE                   1.650.555.0128       08-MAR-18     
ST_CLERK         2200                       120            50                                                           
                                                                                                                        
        129 Laura                Bissot                    LBISSOT                   1.650.555.0129       20-AUG-15     
ST_CLERK         3300                       121            50                                                           
                                                                                                                        
        130 Mozhe                Atkinson                  MATKINSO                  1.650.555.0130       30-OCT-15     
ST_CLERK         2800                       121            50                                                           
                                                                                                                        
        131 James                Marlow                    JAMRLOW                   1.650.555.0131       16-FEB-15     
ST_CLERK         2500                       121            50                                                           
                                                                                                                        
        132 TJ                   Olson                     TJOLSON                   1.650.555.0132       10-APR-17     
ST_CLERK         2100                       121            50                                                           
                                                                                                                        
        133 Jason                Mallin                    JMALLIN                   1.650.555.0133       14-JUN-14     
ST_CLERK         3300                       122            50                                                           
                                                                                                                        
        134 Michael              Rogers                    MROGERS                   1.650.555.0134       26-AUG-16     
ST_CLERK         2900                       122            50                                                           
                                                                                                                        
        135 Ki                   Gee                       KGEE                      1.650.555.0135       12-DEC-17     
ST_CLERK         2400                       122            50                                                           
                                                                                                                        
        136 Hazel                Philtanker                HPHILTAN                  1.650.555.0136       06-FEB-18     
ST_CLERK         2200                       122            50                                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
                                                                                                                        
        137 Renske               Ladwig                    RLADWIG                   1.650.555.0137       14-JUL-13     
ST_CLERK         3600                       123            50                                                           
                                                                                                                        
        138 Stephen              Stiles                    SSTILES                   1.650.555.0138       26-OCT-15     
ST_CLERK         3200                       123            50                                                           
                                                                                                                        
        139 John                 Seo                       JSEO                      1.650.555.0139       12-FEB-16     
ST_CLERK         2700                       123            50                                                           
                                                                                                                        
        140 Joshua               Patel                     JPATEL                    1.650.555.0140       06-APR-16     
ST_CLERK         2500                       123            50                                                           
                                                                                                                        
        141 Trenna               Rajs                      TRAJS                     1.650.555.0141       17-OCT-13     
ST_CLERK         3500                       124            50                                                           
                                                                                                                        
        142 Curtis               Davies                    CDAVIES                   1.650.555.0142       29-JAN-15     
ST_CLERK         3100                       124            50                                                           
                                                                                                                        
        143 Randall              Matos                     RMATOS                    1.650.555.0143       15-MAR-16     
ST_CLERK         2600                       124            50                                                           
                                                                                                                        
        144 Peter                Vargas                    PVARGAS                   1.650.555.0144       09-JUL-16     
ST_CLERK         2500                       124            50                                                           
                                                                                                                        
        145 John                 Singh                     JSINGH                    44.1632.960000       01-OCT-14     
SA_MAN          14000             .4        100            80                                                           
                                                                                                                        
        146 Karen                Partners                  KPARTNER                  44.1632.960001       05-JAN-15     
SA_MAN          13500             .3        100            80                                                           
                                                                                                                        
        147 Alberto              Errazuriz                 AERRAZUR                  44.1632.960002       10-MAR-15     
SA_MAN          12000             .3        100            80                                                           
                                                                                                                        
        148 Gerald               Cambrault                 GCAMBRAU                  44.1632.960003       15-OCT-17     
SA_MAN          11000             .3        100            80                                                           
                                                                                                                        
        149 Eleni                Zlotkey                   EZLOTKEY                  44.1632.960004       29-JAN-18     
SA_MAN          10500             .2        100            80                                                           
                                                                                                                        
        150 Sean                 Tucker                    STUCKER                   44.1632.960005       30-JAN-15     
SA_REP          10000             .3        145            80                                                           
                                                                                                                        
        151 David                Bernstein                 DBERNSTE                  44.1632.960006       24-MAR-15     
SA_REP           9500            .25        145            80                                                           
                                                                                                                        
        152 Peter                Hall                      PHALL                     44.1632.960007       20-AUG-15     
SA_REP           9000            .25        145            80                                                           
                                                                                                                        
        153 Christopher          Olsen                     COLSEN                    44.1632.960008       30-MAR-16     
SA_REP           8000             .2        145            80                                                           
                                                                                                                        
        154 Nanette              Cambrault                 NCAMBRAU                  44.1632.960009       09-DEC-16     
SA_REP           7500             .2        145            80                                                           
                                                                                                                        

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        155 Oliver               Tuvault                   OTUVAULT                  44.1632.960010       23-NOV-17     
SA_REP           7000            .15        145            80                                                           
                                                                                                                        
        156 Janette              King                      JKING                     44.1632.960011       30-JAN-14     
SA_REP          10000            .35        146            80                                                           
                                                                                                                        
        157 Patrick              Sully                     PSULLY                    44.1632.960012       04-MAR-14     
SA_REP           9500            .35        146            80                                                           
                                                                                                                        
        158 Allan                McEwen                    AMCEWEN                   44.1632.960013       01-AUG-14     
SA_REP           9000            .35        146            80                                                           
                                                                                                                        
        159 Lindsey              Smith                     LSMITH                    44.1632.960014       10-MAR-15     
SA_REP           8000             .3        146            80                                                           
                                                                                                                        
        160 Louise               Doran                     LDORAN                    44.1632.960015       15-DEC-15     
SA_REP           7500             .3        146            80                                                           
                                                                                                                        
        161 Sarath               Sewall                    SSEWALL                   44.1632.960016       03-NOV-16     
SA_REP           7000            .25        146            80                                                           
                                                                                                                        
        162 Clara                Vishney                   CVISHNEY                  44.1632.960017       11-NOV-15     
SA_REP          10500            .25        147            80                                                           
                                                                                                                        
        163 Danielle             Greene                    DGREENE                   44.1632.960018       19-MAR-17     
SA_REP           9500            .15        147            80                                                           
                                                                                                                        
        164 Mattea               Marvins                   MMARVINS                  44.1632.960019       24-JAN-18     
SA_REP           7200             .1        147            80                                                           
                                                                                                                        
        165 David                Lee                       DLEE                      44.1632.960020       23-FEB-18     
SA_REP           6800             .1        147            80                                                           
                                                                                                                        
        166 Sundar               Ande                      SANDE                     44.1632.960021       24-MAR-18     
SA_REP           6400             .1        147            80                                                           
                                                                                                                        
        167 Amit                 Banda                     ABANDA                    44.1632.960022       21-APR-18     
SA_REP           6200             .1        147            80                                                           
                                                                                                                        
        168 Lisa                 Ozer                      LOZER                     44.1632.960023       11-MAR-15     
SA_REP          11500            .25        148            80                                                           
                                                                                                                        
        169 Harrison             Bloom                     HBLOOM                    44.1632.960024       23-MAR-16     
SA_REP          10000             .2        148            80                                                           
                                                                                                                        
        170 Tayler               Fox                       TFOX                      44.1632.960025       24-JAN-16     
SA_REP           9600             .2        148            80                                                           
                                                                                                                        
        171 William              Smith                     WSMITH                    44.1632.960026       23-FEB-17     
SA_REP           7400            .15        148            80                                                           
                                                                                                                        
        172 Elizabeth            Bates                     EBATES                    44.1632.960027       24-MAR-17     
SA_REP           7300            .15        148            80                                                           
                                                                                                                        
        173 Sundita              Kumar                     SKUMAR                    44.1632.960028       21-APR-18     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
SA_REP           6100             .1        148            80                                                           
                                                                                                                        
        174 Ellen                Abel                      EABEL                     44.1632.960029       11-MAY-14     
SA_REP          11000             .3        149            80                                                           
                                                                                                                        
        175 Alyssa               Hutton                    AHUTTON                   44.1632.960030       19-MAR-15     
SA_REP           8800            .25        149            80                                                           
                                                                                                                        
        176 Jonathon             Taylor                    JTAYLOR                   44.1632.960031       24-MAR-16     
SA_REP           8600             .2        149            80                                                           
                                                                                                                        
        177 Jack                 Livingston                JLIVINGS                  44.1632.960032       23-APR-16     
SA_REP           8400             .2        149            80                                                           
                                                                                                                        
        178 Kimberely            Grant                     KGRANT                    44.1632.960033       24-MAY-17     
SA_REP           7000            .15        149                                                                         
                                                                                                                        
        179 Charles              Johnson                   CJOHNSON                  44.1632.960034       04-JAN-18     
SA_REP           6200             .1        149            80                                                           
                                                                                                                        
        180 Winston              Taylor                    WTAYLOR                   1.650.555.0145       24-JAN-16     
SH_CLERK         3200                       120            50                                                           
                                                                                                                        
        181 Jean                 Fleaur                    JFLEAUR                   1.650.555.0146       23-FEB-16     
SH_CLERK         3100                       120            50                                                           
                                                                                                                        
        182 Martha               Sullivan                  MSULLIVA                  1.650.555.0147       21-JUN-17     
SH_CLERK         2500                       120            50                                                           
                                                                                                                        
        183 Girard               Geoni                     GGEONI                    1.650.555.0148       03-FEB-18     
SH_CLERK         2800                       120            50                                                           
                                                                                                                        
        184 Nandita              Sarchand                  NSARCHAN                  1.650.555.0149       27-JAN-14     
SH_CLERK         4200                       121            50                                                           
                                                                                                                        
        185 Alexis               Bull                      ABULL                     1.650.555.0150       20-FEB-15     
SH_CLERK         4100                       121            50                                                           
                                                                                                                        
        186 Julia                Dellinger                 JDELLING                  1.650.555.0151       24-JUN-16     
SH_CLERK         3400                       121            50                                                           
                                                                                                                        
        187 Anthony              Cabrio                    ACABRIO                   1.650.555.0152       07-FEB-17     
SH_CLERK         3000                       121            50                                                           
                                                                                                                        
        188 Kelly                Chung                     KCHUNG                    1.650.555.0153       14-JUN-15     
SH_CLERK         3800                       122            50                                                           
                                                                                                                        
        189 Jennifer             Dilly                     JDILLY                    1.650.555.0154       13-AUG-15     
SH_CLERK         3600                       122            50                                                           
                                                                                                                        
        190 Timothy              Venzl                     TVENZL                    1.650.555.0155       11-JUL-16     
SH_CLERK         2900                       122            50                                                           
                                                                                                                        
        191 Randall              Perkins                   RPERKINS                  1.650.555.0156       19-DEC-17     
SH_CLERK         2500                       122            50                                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
                                                                                                                        
        192 Sarah                Bell                      SBELL                     1.650.555.0157       04-FEB-14     
SH_CLERK         4000                       123            50                                                           
                                                                                                                        
        193 Britney              Everett                   BEVERETT                  1.650.555.0158       03-MAR-15     
SH_CLERK         3900                       123            50                                                           
                                                                                                                        
        194 Samuel               McLeod                    SMCLEOD                   1.650.555.0159       01-JUL-16     
SH_CLERK         3200                       123            50                                                           
                                                                                                                        
        195 Vance                Jones                     VJONES                    1.650.555.0160       17-MAR-17     
SH_CLERK         2800                       123            50                                                           
                                                                                                                        
        196 Alana                Walsh                     AWALSH                    1.650.555.0161       24-APR-16     
SH_CLERK         3100                       124            50                                                           
                                                                                                                        
        197 Kevin                Feeney                    KFEENEY                   1.650.555.0162       23-MAY-16     
SH_CLERK         3000                       124            50                                                           
                                                                                                                        
        198 Donald               OConnell                  DOCONNEL                  1.650.555.0163       21-JUN-17     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        199 Douglas              Grant                     DGRANT                    1.650.555.0164       13-JAN-18     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        200 Jennifer             Whalen                    JWHALEN                   1.515.555.0165       17-SEP-13     
AD_ASST          4400                       101            10                                                           
                                                                                                                        
        201 Michael              Martinez                  MMARTINE                  1.515.555.0166       17-FEB-14     
MK_MAN          13000                       100            20                                                           
                                                                                                                        
        202 Pat                  Davis                     PDAVIS                    1.603.555.0167       17-AUG-15     
MK_REP           6000                       201            20                                                           
                                                                                                                        
        203 Susan                Jacobs                    SJACOBS                   1.515.555.0168       07-JUN-12     
HR_REP           6500                       101            40                                                           
                                                                                                                        
        204 Hermann              Brown                     HBROWN                    1.515.555.0169       07-JUN-12     
PR_REP          10000                       101            70                                                           
                                                                                                                        
        205 Shelley              Higgins                   SHIGGINS                  1.515.555.0170       07-JUN-12     
AC_MGR          12008                       101           110                                                           
                                                                                                                        
        206 William              Gietz                     WGIETZ                    1.515.555.0171       07-JUN-12     
AC_ACCOUNT       8300                       205           110                                                           
                                                                                                                        

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select * from employees
SQL> 
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        100 Steven               King                      SKING                     1.515.555.0100       17-JUN-13     
AD_PRES         24000                                      90                                                           
                                                                                                                        
        101 Neena                Yang                      NYANG                     1.515.555.0101       21-SEP-15     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        102 Lex                  Garcia                    LGARCIA                   1.515.555.0102       13-JAN-11     
AD_VP           17000                       100            90                                                           
                                                                                                                        
        103 Alexander            James                     AJAMES                    1.590.555.0103       03-JAN-16     
IT_PROG          9000                       102            60                                                           
                                                                                                                        
        104 Bruce                Miller                    BMILLER                   1.590.555.0104       21-MAY-17     
IT_PROG          6000                       103            60                                                           
                                                                                                                        
        105 David                Williams                  DWILLIAMS                 1.590.555.0105       25-JUN-15     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        106 Valli                Jackson                   VJACKSON                  1.590.555.0106       05-FEB-16     
IT_PROG          4800                       103            60                                                           
                                                                                                                        
        107 Diana                Nguyen                    DNGUYEN                   1.590.555.0107       07-FEB-17     
IT_PROG          4200                       103            60                                                           
                                                                                                                        
        108 Nancy                Gruenberg                 NGRUENBE                  1.515.555.0108       17-AUG-12     
FI_MGR          12008                       101           100                                                           
                                                                                                                        
        109 Daniel               Faviet                    DFAVIET                   1.515.555.0109       16-AUG-12     
FI_ACCOUNT       9000                       108           100                                                           
                                                                                                                        
        110 John                 Chen                      JCHEN                     1.515.555.0110       28-SEP-15     
FI_ACCOUNT       8200                       108           100                                                           
                                                                                                                        
        111 Ismael               Sciarra                   ISCIARRA                  1.515.555.0111       30-SEP-15     
FI_ACCOUNT       7700                       108           100                                                           
                                                                                                                        
        112 Jose Manuel          Urman                     JMURMAN                   1.515.555.0112       07-MAR-16     
FI_ACCOUNT       7800                       108           100                                                           
                                                                                                                        
        113 Luis                 Popp                      LPOPP                     1.515.555.0113       07-DEC-17     
FI_ACCOUNT       6900                       108           100                                                           
                                                                                                                        
        114 Den                  Li                        DLI                       1.515.555.0114       07-DEC-12     
PU_MAN          11000                       100            30                                                           
                                                                                                                        
        115 Alexander            Khoo                      AKHOO                     1.515.555.0115       18-MAY-13     
PU_CLERK         3100                       114            30                                                           
                                                                                                                        
        116 Shelli               Baida                     SBAIDA                    1.515.555.0116       24-DEC-15     
PU_CLERK         2900                       114            30                                                           
                                                                                                                        
        117 Sigal                Tobias                    STOBIAS                   1.515.555.0117       24-JUL-15     
PU_CLERK         2800                       114            30                                                           
                                                                                                                        
        118 Guy                  Himuro                    GHIMURO                   1.515.555.0118       15-NOV-16     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
PU_CLERK         2600                       114            30                                                           
                                                                                                                        
        119 Karen                Colmenares                KCOLMENA                  1.515.555.0119       10-AUG-17     
PU_CLERK         2500                       114            30                                                           
                                                                                                                        
        120 Matthew              Weiss                     MWEISS                    1.650.555.0120       18-JUL-14     
ST_MAN           8000                       100            50                                                           
                                                                                                                        
        121 Adam                 Fripp                     AFRIPP                    1.650.555.0121       10-APR-15     
ST_MAN           8200                       100            50                                                           
                                                                                                                        
        122 Payam                Kaufling                  PKAUFLIN                  1.650.555.0122       01-MAY-13     
ST_MAN           7900                       100            50                                                           
                                                                                                                        
        123 Shanta               Vollman                   SVOLLMAN                  1.650.555.0123       10-OCT-15     
ST_MAN           6500                       100            50                                                           
                                                                                                                        
        124 Kevin                Mourgos                   KMOURGOS                  1.650.555.0124       16-NOV-17     
ST_MAN           5800                       100            50                                                           
                                                                                                                        
        125 Julia                Nayer                     JNAYER                    1.650.555.0125       16-JUL-15     
ST_CLERK         3200                       120            50                                                           
                                                                                                                        
        126 Irene                Mikkilineni               IMIKKILI                  1.650.555.0126       28-SEP-16     
ST_CLERK         2700                       120            50                                                           
                                                                                                                        
        127 James                Landry                    JLANDRY                   1.650.555.0127       14-JAN-17     
ST_CLERK         2400                       120            50                                                           
                                                                                                                        
        128 Steven               Markle                    SMARKLE                   1.650.555.0128       08-MAR-18     
ST_CLERK         2200                       120            50                                                           
                                                                                                                        
        129 Laura                Bissot                    LBISSOT                   1.650.555.0129       20-AUG-15     
ST_CLERK         3300                       121            50                                                           
                                                                                                                        
        130 Mozhe                Atkinson                  MATKINSO                  1.650.555.0130       30-OCT-15     
ST_CLERK         2800                       121            50                                                           
                                                                                                                        
        131 James                Marlow                    JAMRLOW                   1.650.555.0131       16-FEB-15     
ST_CLERK         2500                       121            50                                                           
                                                                                                                        
        132 TJ                   Olson                     TJOLSON                   1.650.555.0132       10-APR-17     
ST_CLERK         2100                       121            50                                                           
                                                                                                                        
        133 Jason                Mallin                    JMALLIN                   1.650.555.0133       14-JUN-14     
ST_CLERK         3300                       122            50                                                           
                                                                                                                        
        134 Michael              Rogers                    MROGERS                   1.650.555.0134       26-AUG-16     
ST_CLERK         2900                       122            50                                                           
                                                                                                                        
        135 Ki                   Gee                       KGEE                      1.650.555.0135       12-DEC-17     
ST_CLERK         2400                       122            50                                                           
                                                                                                                        
        136 Hazel                Philtanker                HPHILTAN                  1.650.555.0136       06-FEB-18     
ST_CLERK         2200                       122            50                                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
                                                                                                                        
        137 Renske               Ladwig                    RLADWIG                   1.650.555.0137       14-JUL-13     
ST_CLERK         3600                       123            50                                                           
                                                                                                                        
        138 Stephen              Stiles                    SSTILES                   1.650.555.0138       26-OCT-15     
ST_CLERK         3200                       123            50                                                           
                                                                                                                        
        139 John                 Seo                       JSEO                      1.650.555.0139       12-FEB-16     
ST_CLERK         2700                       123            50                                                           
                                                                                                                        
        140 Joshua               Patel                     JPATEL                    1.650.555.0140       06-APR-16     
ST_CLERK         2500                       123            50                                                           
                                                                                                                        
        141 Trenna               Rajs                      TRAJS                     1.650.555.0141       17-OCT-13     
ST_CLERK         3500                       124            50                                                           
                                                                                                                        
        142 Curtis               Davies                    CDAVIES                   1.650.555.0142       29-JAN-15     
ST_CLERK         3100                       124            50                                                           
                                                                                                                        
        143 Randall              Matos                     RMATOS                    1.650.555.0143       15-MAR-16     
ST_CLERK         2600                       124            50                                                           
                                                                                                                        
        144 Peter                Vargas                    PVARGAS                   1.650.555.0144       09-JUL-16     
ST_CLERK         2500                       124            50                                                           
                                                                                                                        
        145 John                 Singh                     JSINGH                    44.1632.960000       01-OCT-14     
SA_MAN          14000             .4        100            80                                                           
                                                                                                                        
        146 Karen                Partners                  KPARTNER                  44.1632.960001       05-JAN-15     
SA_MAN          13500             .3        100            80                                                           
                                                                                                                        
        147 Alberto              Errazuriz                 AERRAZUR                  44.1632.960002       10-MAR-15     
SA_MAN          12000             .3        100            80                                                           
                                                                                                                        
        148 Gerald               Cambrault                 GCAMBRAU                  44.1632.960003       15-OCT-17     
SA_MAN          11000             .3        100            80                                                           
                                                                                                                        
        149 Eleni                Zlotkey                   EZLOTKEY                  44.1632.960004       29-JAN-18     
SA_MAN          10500             .2        100            80                                                           
                                                                                                                        
        150 Sean                 Tucker                    STUCKER                   44.1632.960005       30-JAN-15     
SA_REP          10000             .3        145            80                                                           
                                                                                                                        
        151 David                Bernstein                 DBERNSTE                  44.1632.960006       24-MAR-15     
SA_REP           9500            .25        145            80                                                           
                                                                                                                        
        152 Peter                Hall                      PHALL                     44.1632.960007       20-AUG-15     
SA_REP           9000            .25        145            80                                                           
                                                                                                                        
        153 Christopher          Olsen                     COLSEN                    44.1632.960008       30-MAR-16     
SA_REP           8000             .2        145            80                                                           
                                                                                                                        
        154 Nanette              Cambrault                 NCAMBRAU                  44.1632.960009       09-DEC-16     
SA_REP           7500             .2        145            80                                                           
                                                                                                                        

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        155 Oliver               Tuvault                   OTUVAULT                  44.1632.960010       23-NOV-17     
SA_REP           7000            .15        145            80                                                           
                                                                                                                        
        156 Janette              King                      JKING                     44.1632.960011       30-JAN-14     
SA_REP          10000            .35        146            80                                                           
                                                                                                                        
        157 Patrick              Sully                     PSULLY                    44.1632.960012       04-MAR-14     
SA_REP           9500            .35        146            80                                                           
                                                                                                                        
        158 Allan                McEwen                    AMCEWEN                   44.1632.960013       01-AUG-14     
SA_REP           9000            .35        146            80                                                           
                                                                                                                        
        159 Lindsey              Smith                     LSMITH                    44.1632.960014       10-MAR-15     
SA_REP           8000             .3        146            80                                                           
                                                                                                                        
        160 Louise               Doran                     LDORAN                    44.1632.960015       15-DEC-15     
SA_REP           7500             .3        146            80                                                           
                                                                                                                        
        161 Sarath               Sewall                    SSEWALL                   44.1632.960016       03-NOV-16     
SA_REP           7000            .25        146            80                                                           
                                                                                                                        
        162 Clara                Vishney                   CVISHNEY                  44.1632.960017       11-NOV-15     
SA_REP          10500            .25        147            80                                                           
                                                                                                                        
        163 Danielle             Greene                    DGREENE                   44.1632.960018       19-MAR-17     
SA_REP           9500            .15        147            80                                                           
                                                                                                                        
        164 Mattea               Marvins                   MMARVINS                  44.1632.960019       24-JAN-18     
SA_REP           7200             .1        147            80                                                           
                                                                                                                        
        165 David                Lee                       DLEE                      44.1632.960020       23-FEB-18     
SA_REP           6800             .1        147            80                                                           
                                                                                                                        
        166 Sundar               Ande                      SANDE                     44.1632.960021       24-MAR-18     
SA_REP           6400             .1        147            80                                                           
                                                                                                                        
        167 Amit                 Banda                     ABANDA                    44.1632.960022       21-APR-18     
SA_REP           6200             .1        147            80                                                           
                                                                                                                        
        168 Lisa                 Ozer                      LOZER                     44.1632.960023       11-MAR-15     
SA_REP          11500            .25        148            80                                                           
                                                                                                                        
        169 Harrison             Bloom                     HBLOOM                    44.1632.960024       23-MAR-16     
SA_REP          10000             .2        148            80                                                           
                                                                                                                        
        170 Tayler               Fox                       TFOX                      44.1632.960025       24-JAN-16     
SA_REP           9600             .2        148            80                                                           
                                                                                                                        
        171 William              Smith                     WSMITH                    44.1632.960026       23-FEB-17     
SA_REP           7400            .15        148            80                                                           
                                                                                                                        
        172 Elizabeth            Bates                     EBATES                    44.1632.960027       24-MAR-17     
SA_REP           7300            .15        148            80                                                           
                                                                                                                        
        173 Sundita              Kumar                     SKUMAR                    44.1632.960028       21-APR-18     

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
SA_REP           6100             .1        148            80                                                           
                                                                                                                        
        174 Ellen                Abel                      EABEL                     44.1632.960029       11-MAY-14     
SA_REP          11000             .3        149            80                                                           
                                                                                                                        
        175 Alyssa               Hutton                    AHUTTON                   44.1632.960030       19-MAR-15     
SA_REP           8800            .25        149            80                                                           
                                                                                                                        
        176 Jonathon             Taylor                    JTAYLOR                   44.1632.960031       24-MAR-16     
SA_REP           8600             .2        149            80                                                           
                                                                                                                        
        177 Jack                 Livingston                JLIVINGS                  44.1632.960032       23-APR-16     
SA_REP           8400             .2        149            80                                                           
                                                                                                                        
        178 Kimberely            Grant                     KGRANT                    44.1632.960033       24-MAY-17     
SA_REP           7000            .15        149                                                                         
                                                                                                                        
        179 Charles              Johnson                   CJOHNSON                  44.1632.960034       04-JAN-18     
SA_REP           6200             .1        149            80                                                           
                                                                                                                        
        180 Winston              Taylor                    WTAYLOR                   1.650.555.0145       24-JAN-16     
SH_CLERK         3200                       120            50                                                           
                                                                                                                        
        181 Jean                 Fleaur                    JFLEAUR                   1.650.555.0146       23-FEB-16     
SH_CLERK         3100                       120            50                                                           
                                                                                                                        
        182 Martha               Sullivan                  MSULLIVA                  1.650.555.0147       21-JUN-17     
SH_CLERK         2500                       120            50                                                           
                                                                                                                        
        183 Girard               Geoni                     GGEONI                    1.650.555.0148       03-FEB-18     
SH_CLERK         2800                       120            50                                                           
                                                                                                                        
        184 Nandita              Sarchand                  NSARCHAN                  1.650.555.0149       27-JAN-14     
SH_CLERK         4200                       121            50                                                           
                                                                                                                        
        185 Alexis               Bull                      ABULL                     1.650.555.0150       20-FEB-15     
SH_CLERK         4100                       121            50                                                           
                                                                                                                        
        186 Julia                Dellinger                 JDELLING                  1.650.555.0151       24-JUN-16     
SH_CLERK         3400                       121            50                                                           
                                                                                                                        
        187 Anthony              Cabrio                    ACABRIO                   1.650.555.0152       07-FEB-17     
SH_CLERK         3000                       121            50                                                           
                                                                                                                        
        188 Kelly                Chung                     KCHUNG                    1.650.555.0153       14-JUN-15     
SH_CLERK         3800                       122            50                                                           
                                                                                                                        
        189 Jennifer             Dilly                     JDILLY                    1.650.555.0154       13-AUG-15     
SH_CLERK         3600                       122            50                                                           
                                                                                                                        
        190 Timothy              Venzl                     TVENZL                    1.650.555.0155       11-JUL-16     
SH_CLERK         2900                       122            50                                                           
                                                                                                                        
        191 Randall              Perkins                   RPERKINS                  1.650.555.0156       19-DEC-17     
SH_CLERK         2500                       122            50                                                           

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
                                                                                                                        
        192 Sarah                Bell                      SBELL                     1.650.555.0157       04-FEB-14     
SH_CLERK         4000                       123            50                                                           
                                                                                                                        
        193 Britney              Everett                   BEVERETT                  1.650.555.0158       03-MAR-15     
SH_CLERK         3900                       123            50                                                           
                                                                                                                        
        194 Samuel               McLeod                    SMCLEOD                   1.650.555.0159       01-JUL-16     
SH_CLERK         3200                       123            50                                                           
                                                                                                                        
        195 Vance                Jones                     VJONES                    1.650.555.0160       17-MAR-17     
SH_CLERK         2800                       123            50                                                           
                                                                                                                        
        196 Alana                Walsh                     AWALSH                    1.650.555.0161       24-APR-16     
SH_CLERK         3100                       124            50                                                           
                                                                                                                        
        197 Kevin                Feeney                    KFEENEY                   1.650.555.0162       23-MAY-16     
SH_CLERK         3000                       124            50                                                           
                                                                                                                        
        198 Donald               OConnell                  DOCONNEL                  1.650.555.0163       21-JUN-17     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        199 Douglas              Grant                     DGRANT                    1.650.555.0164       13-JAN-18     
SH_CLERK         2600                       124            50                                                           
                                                                                                                        
        200 Jennifer             Whalen                    JWHALEN                   1.515.555.0165       17-SEP-13     
AD_ASST          4400                       101            10                                                           
                                                                                                                        
        201 Michael              Martinez                  MMARTINE                  1.515.555.0166       17-FEB-14     
MK_MAN          13000                       100            20                                                           
                                                                                                                        
        202 Pat                  Davis                     PDAVIS                    1.603.555.0167       17-AUG-15     
MK_REP           6000                       201            20                                                           
                                                                                                                        
        203 Susan                Jacobs                    SJACOBS                   1.515.555.0168       07-JUN-12     
HR_REP           6500                       101            40                                                           
                                                                                                                        
        204 Hermann              Brown                     HBROWN                    1.515.555.0169       07-JUN-12     
PR_REP          10000                       101            70                                                           
                                                                                                                        
        205 Shelley              Higgins                   SHIGGINS                  1.515.555.0170       07-JUN-12     
AC_MGR          12008                       101           110                                                           
                                                                                                                        
        206 William              Gietz                     WGIETZ                    1.515.555.0171       07-JUN-12     
AC_ACCOUNT       8300                       205           110                                                           
                                                                                                                        

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select * from employees
SQL> 
SQL> ed
Wrote file afiedt.buf

  1* select * from employees
SQL> ed
Wrote file afiedt.buf

  1* select * from employees
SQL> ed
Wrote file afiedt.buf

  1* select * from employees
SQL> select employee_no,firstname,salary,department_no from employees
  2  where deptno=110;
where deptno=110
      *
ERROR at line 2:
ORA-00904: "DEPTNO": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select employee_no,firstname,salary,department_no from employees
  2* where deptno=110
SQL> 
SQL>  select employee_no,firstname,salary,department_no from employees
  2  where department_no=110;
where department_no=110
      *
ERROR at line 2:
ORA-00904: "DEPARTMENT_NO": invalid identifier 


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

SQL> ed
Wrote file afiedt.buf

  1   select employee_no,firstname,salary,department_no from employees
  2* where department_no=110
SQL> 
SQL> select employee_no,firstname,salary,department_id from employees
  2  where department_id=110
  3  /
select employee_no,firstname,salary,department_id from employees
                   *
ERROR at line 1:
ORA-00904: "FIRSTNAME": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select employee_no,firstname,salary,department_id from employees
  2* where department_id=110
SQL> set editor notepad
SP2-0158: unknown SET option "editor"
SQL> set editor notepad
SP2-0158: unknown SET option "editor"
SQL> clear scr

SQL> select employee_id,first_name,salary,department_id from employees
  2  where department_id=110;

EMPLOYEE_ID FIRST_NAME               SALARY DEPARTMENT_ID                                                               
----------- -------------------- ---------- -------------                                                               
        205 Shelley                   12008           110                                                               
        206 William                    8300           110                                                               

SQL> select sum(salary) from employees
  2  where department_id=110;

SUM(SALARY)                                                                                                             
-----------                                                                                                             
      20308                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1  select employee_no,firstname,salary,department_id from employees
  2* where department_id=110
SQL> /
select employee_no,firstname,salary,department_id from employees
                   *
ERROR at line 1:
ORA-00904: "FIRSTNAME": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select count(employee_id) from employees
  2* where department_id=110
SQL> /

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
                 2                                                                                                      

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2* where department_id=110
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        205 Shelley              Higgins                   SHIGGINS                  1.515.555.0170       07-JUN-12     
AC_MGR          12008                       101           110                                                           
                                                                                                                        
        206 William              Gietz                     WGIETZ                    1.515.555.0171       07-JUN-12     
AC_ACCOUNT       8300                       205           110                                                           
                                                                                                                        

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2* where department_id=110
SQL> /

EMPLOYEE_ID FIRST_NAME           LAST_NAME                 EMAIL                     PHONE_NUMBER         HIRE_DATE     
----------- -------------------- ------------------------- ------------------------- -------------------- ---------     
JOB_ID         SALARY COMMISSION_PCT MANAGER_ID DEPARTMENT_ID                                                           
---------- ---------- -------------- ---------- -------------                                                           
        205 Shelley              Higgins                   SHIGGINS                  1.515.555.0170       07-JUN-12     
AC_MGR          12008                       101           110                                                           
                                                                                                                        
        206 William              Gietz                     WGIETZ                    1.515.555.0171       07-JUN-12     
AC_ACCOUNT       8300                       205           110                                                           
                                                                                                                        

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2* where phone_number is null
SQL> 
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2* where phone_number is null
SQL> 
SQL> /

no rows selected

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

SQL> ed
Wrote file afiedt.buf

  1  select * from employees
  2* where phone_number is null
SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,commission_pct from employees
  2* where commission_pct is null
SQL> /

EMPLOYEE_ID FIRST_NAME           COMMISSION_PCT                                                                         
----------- -------------------- --------------                                                                         
        100 Steven                                                                                                      
        101 Neena                                                                                                       
        102 Lex                                                                                                         
        103 Alexander                                                                                                   
        104 Bruce                                                                                                       
        105 David                                                                                                       
        106 Valli                                                                                                       
        107 Diana                                                                                                       
        108 Nancy                                                                                                       
        109 Daniel                                                                                                      
        110 John                                                                                                        
        111 Ismael                                                                                                      
        112 Jose Manuel                                                                                                 
        113 Luis                                                                                                        
        114 Den                                                                                                         
        115 Alexander                                                                                                   
        116 Shelli                                                                                                      
        117 Sigal                                                                                                       
        118 Guy                                                                                                         
        119 Karen                                                                                                       
        120 Matthew                                                                                                     
        121 Adam                                                                                                        
        122 Payam                                                                                                       
        123 Shanta                                                                                                      
        124 Kevin                                                                                                       
        125 Julia                                                                                                       
        126 Irene                                                                                                       
        127 James                                                                                                       
        128 Steven                                                                                                      
        129 Laura                                                                                                       
        130 Mozhe                                                                                                       
        131 James                                                                                                       
        132 TJ                                                                                                          
        133 Jason                                                                                                       
        134 Michael                                                                                                     
        135 Ki                                                                                                          
        136 Hazel                                                                                                       
        137 Renske                                                                                                      
        138 Stephen                                                                                                     
        139 John                                                                                                        
        140 Joshua                                                                                                      
        141 Trenna                                                                                                      
        142 Curtis                                                                                                      
        143 Randall                                                                                                     
        144 Peter                                                                                                       
        180 Winston                                                                                                     
        181 Jean                                                                                                        
        182 Martha                                                                                                      
        183 Girard                                                                                                      
        184 Nandita                                                                                                     
        185 Alexis                                                                                                      
        186 Julia                                                                                                       
        187 Anthony                                                                                                     
        188 Kelly                                                                                                       
        189 Jennifer                                                                                                    
        190 Timothy                                                                                                     
        191 Randall                                                                                                     

EMPLOYEE_ID FIRST_NAME           COMMISSION_PCT                                                                         
----------- -------------------- --------------                                                                         
        192 Sarah                                                                                                       
        193 Britney                                                                                                     
        194 Samuel                                                                                                      
        195 Vance                                                                                                       
        196 Alana                                                                                                       
        197 Kevin                                                                                                       
        198 Donald                                                                                                      
        199 Douglas                                                                                                     
        200 Jennifer                                                                                                    
        201 Michael                                                                                                     
        202 Pat                                                                                                         
        203 Susan                                                                                                       
        204 Hermann                                                                                                     
        205 Shelley                                                                                                     
        206 William                                                                                                     

72 rows selected.

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

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,commission_pct,job_id from employees
  2* where commission_pct is null
SQL> /

EMPLOYEE_ID FIRST_NAME           COMMISSION_PCT JOB_ID                                                                  
----------- -------------------- -------------- ----------                                                              
        100 Steven                              AD_PRES                                                                 
        101 Neena                               AD_VP                                                                   
        102 Lex                                 AD_VP                                                                   
        103 Alexander                           IT_PROG                                                                 
        104 Bruce                               IT_PROG                                                                 
        105 David                               IT_PROG                                                                 
        106 Valli                               IT_PROG                                                                 
        107 Diana                               IT_PROG                                                                 
        108 Nancy                               FI_MGR                                                                  
        109 Daniel                              FI_ACCOUNT                                                              
        110 John                                FI_ACCOUNT                                                              
        111 Ismael                              FI_ACCOUNT                                                              
        112 Jose Manuel                         FI_ACCOUNT                                                              
        113 Luis                                FI_ACCOUNT                                                              
        114 Den                                 PU_MAN                                                                  
        115 Alexander                           PU_CLERK                                                                
        116 Shelli                              PU_CLERK                                                                
        117 Sigal                               PU_CLERK                                                                
        118 Guy                                 PU_CLERK                                                                
        119 Karen                               PU_CLERK                                                                
        120 Matthew                             ST_MAN                                                                  
        121 Adam                                ST_MAN                                                                  
        122 Payam                               ST_MAN                                                                  
        123 Shanta                              ST_MAN                                                                  
        124 Kevin                               ST_MAN                                                                  
        125 Julia                               ST_CLERK                                                                
        126 Irene                               ST_CLERK                                                                
        127 James                               ST_CLERK                                                                
        128 Steven                              ST_CLERK                                                                
        129 Laura                               ST_CLERK                                                                
        130 Mozhe                               ST_CLERK                                                                
        131 James                               ST_CLERK                                                                
        132 TJ                                  ST_CLERK                                                                
        133 Jason                               ST_CLERK                                                                
        134 Michael                             ST_CLERK                                                                
        135 Ki                                  ST_CLERK                                                                
        136 Hazel                               ST_CLERK                                                                
        137 Renske                              ST_CLERK                                                                
        138 Stephen                             ST_CLERK                                                                
        139 John                                ST_CLERK                                                                
        140 Joshua                              ST_CLERK                                                                
        141 Trenna                              ST_CLERK                                                                
        142 Curtis                              ST_CLERK                                                                
        143 Randall                             ST_CLERK                                                                
        144 Peter                               ST_CLERK                                                                
        180 Winston                             SH_CLERK                                                                
        181 Jean                                SH_CLERK                                                                
        182 Martha                              SH_CLERK                                                                
        183 Girard                              SH_CLERK                                                                
        184 Nandita                             SH_CLERK                                                                
        185 Alexis                              SH_CLERK                                                                
        186 Julia                               SH_CLERK                                                                
        187 Anthony                             SH_CLERK                                                                
        188 Kelly                               SH_CLERK                                                                
        189 Jennifer                            SH_CLERK                                                                
        190 Timothy                             SH_CLERK                                                                
        191 Randall                             SH_CLERK                                                                

EMPLOYEE_ID FIRST_NAME           COMMISSION_PCT JOB_ID                                                                  
----------- -------------------- -------------- ----------                                                              
        192 Sarah                               SH_CLERK                                                                
        193 Britney                             SH_CLERK                                                                
        194 Samuel                              SH_CLERK                                                                
        195 Vance                               SH_CLERK                                                                
        196 Alana                               SH_CLERK                                                                
        197 Kevin                               SH_CLERK                                                                
        198 Donald                              SH_CLERK                                                                
        199 Douglas                             SH_CLERK                                                                
        200 Jennifer                            AD_ASST                                                                 
        201 Michael                             MK_MAN                                                                  
        202 Pat                                 MK_REP                                                                  
        203 Susan                               HR_REP                                                                  
        204 Hermann                             PR_REP                                                                  
        205 Shelley                             AC_MGR                                                                  
        206 William                             AC_ACCOUNT                                                              

72 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id,first_name,commission_pct,job_id from employees
  2* where commission_pct is null
SQL> ed
Wrote file afiedt.buf

  1  select count(commission_pct) from employees
  2* where commission_pct is null
SQL> /

COUNT(COMMISSION_PCT)                                                                                                   
---------------------                                                                                                   
                    0                                                                                                   

SQL> ed
Wrote file afiedt.buf

  1  select count(commission_pct) from employees
  2* where commission_pct is null
SQL> ed
Wrote file afiedt.buf

  1* select count(commission_pct) from employees
  2  /

COUNT(COMMISSION_PCT)                                                                                                   
---------------------                                                                                                   
                   35                                                                                                   

SQL> ed
Wrote file afiedt.buf

  1* select count(commission_pct) from employees
SQL> 
SQL> /

COUNT(COMMISSION_PCT)                                                                                                   
---------------------                                                                                                   
                   35                                                                                                   

SQL> ed
Wrote file afiedt.buf

  1* select count(employee_id) from employees
SQL> /

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
               107                                                                                                      

SQL> ed
Wrote file afiedt.buf

  1* select count(employee_id) from employees
SQL> /

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
               107                                                                                                      

SQL> ed
Wrote file afiedt.buf

  1  select count(employee_id) from employees
  2* where job_id not like 'SA_MAN'
SQL> /

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
               102                                                                                                      

SQL> select distinct(job_id) from employees;

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
HR_REP                                                                                                                  
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  
PU_CLERK                                                                                                                
PU_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
SH_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_MAN                                                                                                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select distinct(job_id) from employees
  2* where commission_pct is null
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
PU_CLERK                                                                                                                
SH_CLERK                                                                                                                
HR_REP                                                                                                                  
PU_MAN                                                                                                                  
AC_MGR                                                                                                                  
ST_CLERK                                                                                                                
AD_ASST                                                                                                                 
IT_PROG                                                                                                                 
AC_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
ST_MAN                                                                                                                  
AD_PRES                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  

17 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select distinct(job_id) from employees
  2* where commission_pct is null
SQL> ed
Wrote file afiedt.buf

  1  select distinct(job_id) from employees
  2* where commission_pct is not null
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
SA_MAN                                                                                                                  
SA_REP                                                                                                                  

SQL> select count(employee_id) from employees;

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
               107                                                                                                      

SQL> ed
Wrote file afiedt.buf

  1* select count(job_id) from employees
SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
          107                                                                                                           

SQL> ed
Wrote file afiedt.buf

  1* select count(job_id) from employees
SQL> 
SQL> ed
Wrote file afiedt.buf

  1* select distinct(job_id) from employees
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
HR_REP                                                                                                                  
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  
PU_CLERK                                                                                                                
PU_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
SH_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_MAN                                                                                                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select distinct (job_id) from employees
  2* where commission_pct is null
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
PU_CLERK                                                                                                                
SH_CLERK                                                                                                                
HR_REP                                                                                                                  
PU_MAN                                                                                                                  
AC_MGR                                                                                                                  
ST_CLERK                                                                                                                
AD_ASST                                                                                                                 
IT_PROG                                                                                                                 
AC_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
ST_MAN                                                                                                                  
AD_PRES                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  

17 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select distinct (job_id) from employees
  2* where commission_pct is not null
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
SA_MAN                                                                                                                  
SA_REP                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1  select distinct (job_id) from employees
  2* where commission_pct is not null
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
SA_MAN                                                                                                                  
SA_REP                                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1  select count (job_id) from employees
  2* where commission_pct is not null
SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
           35                                                                                                           

SQL> ed
Wrote file afiedt.buf

  1  select count (job_id) from employees
  2* where commission_pct is null
SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
           72                                                                                                           

SQL> 
SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select count (employee_id) from employees
  2* where job_id like 'SA_MAN' or job_id like 'SA_REP'
SQL> /

COUNT(EMPLOYEE_ID)                                                                                                      
------------------                                                                                                      
                35                                                                                                      

SQL> ed
Wrote file afiedt.buf

  1  select first_name from employees
  2* where job_id like 'SA_MAN' or job_id like 'SA_REP'
SQL> /

FIRST_NAME                                                                                                              
--------------------                                                                                                    
John                                                                                                                    
Karen                                                                                                                   
Alberto                                                                                                                 
Gerald                                                                                                                  
Eleni                                                                                                                   
Sean                                                                                                                    
David                                                                                                                   
Peter                                                                                                                   
Christopher                                                                                                             
Nanette                                                                                                                 
Oliver                                                                                                                  
Janette                                                                                                                 
Patrick                                                                                                                 
Allan                                                                                                                   
Lindsey                                                                                                                 
Louise                                                                                                                  
Sarath                                                                                                                  
Clara                                                                                                                   
Danielle                                                                                                                
Mattea                                                                                                                  
David                                                                                                                   
Sundar                                                                                                                  
Amit                                                                                                                    
Lisa                                                                                                                    
Harrison                                                                                                                
Tayler                                                                                                                  
William                                                                                                                 
Elizabeth                                                                                                               
Sundita                                                                                                                 
Ellen                                                                                                                   
Alyssa                                                                                                                  
Jonathon                                                                                                                
Jack                                                                                                                    
Kimberely                                                                                                               
Charles                                                                                                                 

35 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name from employees
  2* where salary >0 and commission_pct is not null
SQL> 
SQL> 
SQL> /

FIRST_NAME                                                                                                              
--------------------                                                                                                    
John                                                                                                                    
Karen                                                                                                                   
Alberto                                                                                                                 
Gerald                                                                                                                  
Eleni                                                                                                                   
Sean                                                                                                                    
David                                                                                                                   
Peter                                                                                                                   
Christopher                                                                                                             
Nanette                                                                                                                 
Oliver                                                                                                                  
Janette                                                                                                                 
Patrick                                                                                                                 
Allan                                                                                                                   
Lindsey                                                                                                                 
Louise                                                                                                                  
Sarath                                                                                                                  
Clara                                                                                                                   
Danielle                                                                                                                
Mattea                                                                                                                  
David                                                                                                                   
Sundar                                                                                                                  
Amit                                                                                                                    
Lisa                                                                                                                    
Harrison                                                                                                                
Tayler                                                                                                                  
William                                                                                                                 
Elizabeth                                                                                                               
Sundita                                                                                                                 
Ellen                                                                                                                   
Alyssa                                                                                                                  
Jonathon                                                                                                                
Jack                                                                                                                    
Kimberely                                                                                                               
Charles                                                                                                                 

35 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select first_name,salary,commission_pct from employees
  2* where salary >0 and commission_pct is not null
SQL> /

FIRST_NAME               SALARY COMMISSION_PCT                                                                          
-------------------- ---------- --------------                                                                          
John                      14000             .4                                                                          
Karen                     13500             .3                                                                          
Alberto                   12000             .3                                                                          
Gerald                    11000             .3                                                                          
Eleni                     10500             .2                                                                          
Sean                      10000             .3                                                                          
David                      9500            .25                                                                          
Peter                      9000            .25                                                                          
Christopher                8000             .2                                                                          
Nanette                    7500             .2                                                                          
Oliver                     7000            .15                                                                          
Janette                   10000            .35                                                                          
Patrick                    9500            .35                                                                          
Allan                      9000            .35                                                                          
Lindsey                    8000             .3                                                                          
Louise                     7500             .3                                                                          
Sarath                     7000            .25                                                                          
Clara                     10500            .25                                                                          
Danielle                   9500            .15                                                                          
Mattea                     7200             .1                                                                          
David                      6800             .1                                                                          
Sundar                     6400             .1                                                                          
Amit                       6200             .1                                                                          
Lisa                      11500            .25                                                                          
Harrison                  10000             .2                                                                          
Tayler                     9600             .2                                                                          
William                    7400            .15                                                                          
Elizabeth                  7300            .15                                                                          
Sundita                    6100             .1                                                                          
Ellen                     11000             .3                                                                          
Alyssa                     8800            .25                                                                          
Jonathon                   8600             .2                                                                          
Jack                       8400             .2                                                                          
Kimberely                  7000            .15                                                                          
Charles                    6200             .1                                                                          

35 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select job_id from employees
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
FI_ACCOUNT                                                                                                              
FI_ACCOUNT                                                                                                              
FI_ACCOUNT                                                                                                              
FI_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
HR_REP                                                                                                                  
IT_PROG                                                                                                                 
IT_PROG                                                                                                                 
IT_PROG                                                                                                                 
IT_PROG                                                                                                                 
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  
PU_CLERK                                                                                                                
PU_CLERK                                                                                                                
PU_CLERK                                                                                                                
PU_CLERK                                                                                                                
PU_CLERK                                                                                                                
PU_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  

JOB_ID                                                                                                                  
----------                                                                                                              
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SA_REP                                                                                                                  
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
SH_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_MAN                                                                                                                  
ST_MAN                                                                                                                  
ST_MAN                                                                                                                  
ST_MAN                                                                                                                  
ST_MAN                                                                                                                  

107 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select distinct(job_id) from employees
SQL> /

JOB_ID                                                                                                                  
----------                                                                                                              
AC_ACCOUNT                                                                                                              
AC_MGR                                                                                                                  
AD_ASST                                                                                                                 
AD_PRES                                                                                                                 
AD_VP                                                                                                                   
FI_ACCOUNT                                                                                                              
FI_MGR                                                                                                                  
HR_REP                                                                                                                  
IT_PROG                                                                                                                 
MK_MAN                                                                                                                  
MK_REP                                                                                                                  
PR_REP                                                                                                                  
PU_CLERK                                                                                                                
PU_MAN                                                                                                                  
SA_MAN                                                                                                                  
SA_REP                                                                                                                  
SH_CLERK                                                                                                                
ST_CLERK                                                                                                                
ST_MAN                                                                                                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select distinct(department_id) from employees
SQL> 
SQL> /

DEPARTMENT_ID                                                                                                           
-------------                                                                                                           
           50                                                                                                           
           40                                                                                                           
          110                                                                                                           
           90                                                                                                           
           30                                                                                                           
           70                                                                                                           
                                                                                                                        
           10                                                                                                           
           20                                                                                                           
           60                                                                                                           
          100                                                                                                           
           80                                                                                                           

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select distinct(department_id) from employees
  2* order by department_id
SQL> 
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
                                                                                                                        

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select employee_id  from employees
  2* where department_id is null
  3  
SQL> /

EMPLOYEE_ID                                                                                                             
-----------                                                                                                             
        178                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1* select count(department_id)  from departments
  2  /

COUNT(DEPARTMENT_ID)                                                                                                    
--------------------                                                                                                    
                  27                                                                                                    

SQL> ed
Wrote file afiedt.buf

  1* select max(salary)  from employees
SQL> /

MAX(SALARY)                                                                                                             
-----------                                                                                                             
      24000                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1* select min(salary)  from employees
SQL> /

MIN(SALARY)                                                                                                             
-----------                                                                                                             
       2100                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1* select avg(salary)  from employees
SQL> /

AVG(SALARY)                                                                                                             
-----------                                                                                                             
 6461.83178                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary)  from employees
  2* group by department_id
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           50  3475.55556                                                                                               
           40        6500                                                                                               
          110       10154                                                                                               
           90  19333.3333                                                                                               
           30        4150                                                                                               
           70       10000                                                                                               
                     7000                                                                                               
           10        4400                                                                                               
           20        9500                                                                                               
           60        5760                                                                                               
          100  8601.33333                                                                                               
           80  8955.88235                                                                                               

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary)  from employees
  2* group by department_id
SQL> ed
Wrote file afiedt.buf

  1  select avg(salary)  from employees
  2* group by department_id
SQL> /

AVG(SALARY)                                                                                                             
-----------                                                                                                             
 3475.55556                                                                                                             
       6500                                                                                                             
      10154                                                                                                             
 19333.3333                                                                                                             
       4150                                                                                                             
      10000                                                                                                             
       7000                                                                                                             
       4400                                                                                                             
       9500                                                                                                             
       5760                                                                                                             
 8601.33333                                                                                                             
 8955.88235                                                                                                             

12 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary)  from employees
  2  group by department_id
  3* order by department_id
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           10        4400                                                                                               
           20        9500                                                                                               
           30        4150                                                                                               
           40        6500                                                                                               
           50  3475.55556                                                                                               
           60        5760                                                                                               
           70       10000                                                                                               
           80  8955.88235                                                                                               
           90  19333.3333                                                                                               
          100  8601.33333                                                                                               
          110       10154                                                                                               
                     7000                                                                                               

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary)  from employees
  2  group by department_id
  3* order by avg(salary)
SQL> /

DEPARTMENT_ID AVG(SALARY)                                                                                               
------------- -----------                                                                                               
           50  3475.55556                                                                                               
           30        4150                                                                                               
           10        4400                                                                                               
           60        5760                                                                                               
           40        6500                                                                                               
                     7000                                                                                               
          100  8601.33333                                                                                               
           80  8955.88235                                                                                               
           20        9500                                                                                               
           70       10000                                                                                               
          110       10154                                                                                               
           90  19333.3333                                                                                               

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select department_id,avg(salary) as averageSal  from employees
  2  group by department_id
  3* order by avg(salary)
SQL> /

DEPARTMENT_ID AVERAGESAL                                                                                                
------------- ----------                                                                                                
           50 3475.55556                                                                                                
           30       4150                                                                                                
           10       4400                                                                                                
           60       5760                                                                                                
           40       6500                                                                                                
                    7000                                                                                                
          100 8601.33333                                                                                                
           80 8955.88235                                                                                                
           20       9500                                                                                                
           70      10000                                                                                                
          110      10154                                                                                                
           90 19333.3333                                                                                                

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1* select * from jobs
SQL> 
SQL> 
SQL> /

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

SQL> ed
Wrote file afiedt.buf

  1  select count(job_id) from employees
  2* where job_id like 'AC_MGR'
SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
            1                                                                                                           

SQL> ed
Wrote file afiedt.buf

  1  select count(job_id) from employees
  2* where job_id like 'IT_PROG'
SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
            5                                                                                                           

SQL> /

COUNT(JOB_ID)                                                                                                           
-------------                                                                                                           
            5                                                                                                           

SQL> ed
Wrote file afiedt.buf

  1  select salary,first_name from employees
  2* where job_id like 'IT_PROG'
SQL> /

    SALARY FIRST_NAME                                                                                                   
---------- --------------------                                                                                         
      9000 Alexander                                                                                                    
      6000 Bruce                                                                                                        
      4800 David                                                                                                        
      4800 Valli                                                                                                        
      4200 Diana                                                                                                        

SQL> ed
Wrote file afiedt.buf

  1  select avg(salary) from employees
  2* where job_id like 'IT_PROG'
SQL> /

AVG(SALARY)                                                                                                             
-----------                                                                                                             
       5760                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1  select job_id,avg(salary) from employees
  2* where job_id like 'IT_PROG'
SQL> /
select job_id,avg(salary) from employees
       *
ERROR at line 1:
ORA-00937: not a single-group group function 


SQL> ed
Wrote file afiedt.buf

  1  select job_id,avg(salary) from employees
  2  group by job_id
  3* where job_id like 'IT_PROG'
SQL> /
where job_id like 'IT_PROG'
*
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL> ed
Wrote file afiedt.buf

  1  select job_id,avg(salary) from employees
  2  where job_id like 'IT_PROG'
  3* group by job_id
SQL> /

JOB_ID     AVG(SALARY)                                                                                                  
---------- -----------                                                                                                  
IT_PROG           5760                                                                                                  

SQL> ed
Wrote file afiedt.buf

  1  select avg(salary) from employees
  2  where job_id like 'IT_PROG'
  3* group by job_id
SQL> /

AVG(SALARY)                                                                                                             
-----------                                                                                                             
       5760                                                                                                             

SQL> ed
Wrote file afiedt.buf

  1  select job_id,avg(salary) from employees
  2* group by job_id
SQL> /

JOB_ID     AVG(SALARY)                                                                                                  
---------- -----------                                                                                                  
AC_ACCOUNT        8300                                                                                                  
AC_MGR           12008                                                                                                  
AD_ASST           4400                                                                                                  
AD_PRES          24000                                                                                                  
AD_VP            17000                                                                                                  
FI_ACCOUNT        7920                                                                                                  
FI_MGR           12008                                                                                                  
HR_REP            6500                                                                                                  
IT_PROG           5760                                                                                                  
MK_MAN           13000                                                                                                  
MK_REP            6000                                                                                                  
PR_REP           10000                                                                                                  
PU_CLERK          2780                                                                                                  
PU_MAN           11000                                                                                                  
SA_MAN           12200                                                                                                  
SA_REP            8350                                                                                                  
SH_CLERK          3215                                                                                                  
ST_CLERK          2785                                                                                                  
ST_MAN            7280                                                                                                  

19 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2  group by job_id,department_id
  3* order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
AD_ASST               10        4400                                                                                    
MK_MAN                20       13000                                                                                    
MK_REP                20        6000                                                                                    
PU_CLERK              30        2780                                                                                    
PU_MAN                30       11000                                                                                    
HR_REP                40        6500                                                                                    
SH_CLERK              50        3215                                                                                    
ST_CLERK              50        2785                                                                                    
ST_MAN                50        7280                                                                                    
IT_PROG               60        5760                                                                                    
PR_REP                70       10000                                                                                    
SA_MAN                80       12200                                                                                    
SA_REP                80  8396.55172                                                                                    
AD_PRES               90       24000                                                                                    
AD_VP                 90       17000                                                                                    
FI_ACCOUNT           100        7920                                                                                    
FI_MGR               100       12008                                                                                    
AC_ACCOUNT           110        8300                                                                                    
AC_MGR               110       12008                                                                                    
SA_REP                          7000                                                                                    

20 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2  where department_id in(10,20,30,40,50)
  3  group by job_id,department_id
  4* order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
AD_ASST               10        4400                                                                                    
MK_MAN                20       13000                                                                                    
MK_REP                20        6000                                                                                    
PU_CLERK              30        2780                                                                                    
PU_MAN                30       11000                                                                                    
HR_REP                40        6500                                                                                    
SH_CLERK              50        3215                                                                                    
ST_CLERK              50        2785                                                                                    
ST_MAN                50        7280                                                                                    

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2  where department_id between 10 and 50
  3  group by job_id,department_id
  4* order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
AD_ASST               10        4400                                                                                    
MK_MAN                20       13000                                                                                    
MK_REP                20        6000                                                                                    
PU_CLERK              30        2780                                                                                    
PU_MAN                30       11000                                                                                    
HR_REP                40        6500                                                                                    
SH_CLERK              50        3215                                                                                    
ST_CLERK              50        2785                                                                                    
ST_MAN                50        7280                                                                                    

9 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2  where department_id not between 10 and 50
  3  group by job_id,department_id
  4* order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
IT_PROG               60        5760                                                                                    
PR_REP                70       10000                                                                                    
SA_MAN                80       12200                                                                                    
SA_REP                80  8396.55172                                                                                    
AD_PRES               90       24000                                                                                    
AD_VP                 90       17000                                                                                    
FI_ACCOUNT           100        7920                                                                                    
FI_MGR               100       12008                                                                                    
AC_ACCOUNT           110        8300                                                                                    
AC_MGR               110       12008                                                                                    

10 rows selected.

SQL> 
SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id
  4*    order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
PU_CLERK              30        2780                                                                                    
PU_MAN                30       11000                                                                                    
IT_PROG               60        5760                                                                                    
PR_REP                70       10000                                                                                    
SA_MAN                80       12200                                                                                    
SA_REP                80  8396.55172                                                                                    
AD_PRES               90       24000                                                                                    
AD_VP                 90       17000                                                                                    
FI_ACCOUNT           100        7920                                                                                    
FI_MGR               100       12008                                                                                    
AC_ACCOUNT           110        8300                                                                                    
AC_MGR               110       12008                                                                                    

12 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id
  4     having avg(salary)>5000
  5*    order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY)                                                                                    
---------- ------------- -----------                                                                                    
PU_MAN                30       11000                                                                                    
IT_PROG               60        5760                                                                                    
PR_REP                70       10000                                                                                    
SA_MAN                80       12200                                                                                    
SA_REP                80  8396.55172                                                                                    
AD_PRES               90       24000                                                                                    
AD_VP                 90       17000                                                                                    
FI_ACCOUNT           100        7920                                                                                    
FI_MGR               100       12008                                                                                    
AC_ACCOUNT           110        8300                                                                                    
AC_MGR               110       12008                                                                                    

11 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,avg(salary),max(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id
  4     having avg(salary)>5000
  5*    order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID AVG(SALARY) MAX(SALARY)                                                                        
---------- ------------- ----------- -----------                                                                        
PU_MAN                30       11000       11000                                                                        
IT_PROG               60        5760        9000                                                                        
PR_REP                70       10000       10000                                                                        
SA_MAN                80       12200       14000                                                                        
SA_REP                80  8396.55172       11500                                                                        
AD_PRES               90       24000       24000                                                                        
AD_VP                 90       17000       17000                                                                        
FI_ACCOUNT           100        7920        9000                                                                        
FI_MGR               100       12008       12008                                                                        
AC_ACCOUNT           110        8300        8300                                                                        
AC_MGR               110       12008       12008                                                                        

11 rows selected.

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

SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,manager_id,avg(salary),max(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id
  4     having avg(salary)>5000
  5*    order by department_id
SQL> /
select job_id,department_id,manager_id,avg(salary),max(salary) from employees
                            *
ERROR at line 1:
ORA-00979: not a GROUP BY expression 


SQL> ed
Wrote file afiedt.buf

  1  select job_id,department_id,manager_id,avg(salary),max(salary) from employees
  2    where department_id not in(10,20,40,50)
  3     group by job_id,department_id,manager_id
  4     having avg(salary)>5000
  5*    order by department_id
SQL> /

JOB_ID     DEPARTMENT_ID MANAGER_ID AVG(SALARY) MAX(SALARY)                                                             
---------- ------------- ---------- ----------- -----------                                                             
PU_MAN                30        100       11000       11000                                                             
IT_PROG               60        102        9000        9000                                                             
PR_REP                70        101       10000       10000                                                             
SA_MAN                80        100       12200       14000                                                             
SA_REP                80        145        8500       10000                                                             
SA_REP                80        146        8500       10000                                                             
SA_REP                80        147  7766.66667       10500                                                             
SA_REP                80        148        8650       11500                                                             
SA_REP                80        149        8600       11000                                                             
AD_PRES               90                  24000       24000                                                             
AD_VP                 90        100       17000       17000                                                             
FI_ACCOUNT           100        108        7920        9000                                                             
FI_MGR               100        101       12008       12008                                                             
AC_ACCOUNT           110        205        8300        8300                                                             
AC_MGR               110        101       12008       12008                                                             

15 rows selected.

SQL> spool off
