   
   DECLARE
   V_SQL VARCHAR2(4000) ;
   V_TARIH VARCHAR2(8);
   
   CURSOR ANA_SET IS 
   SELECT DATE_KEY V_TARIH FROM  prsn.tarih WHERE DATE_KEY BETWEEN  '20171231' AND '20180121' ORDER BY 1;
   
BEGIN
       FOR C IN ANA_SET LOOP
                             
 
V_SQL:='EXEC  DM_INFOMAN.PKG_PORTFOY_RAPORU.SP_MAIN('||C.V_TARIH||')'||';';              
 
DBMS_OUTPUT.PUT_LINE(V_SQL);
 
--EXECUTE IMMEDIATE V_SQL;
 
 
       END LOOP;
         
END; 