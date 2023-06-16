CLASS zclass_cm_master DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

 PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclass_cm_master IMPLEMENTATION.


METHOD if_oo_adt_classrun~main.
DATA itab TYPE TABLE OF ztab_cm_master.




* fill internal travel table (itab)
itab = VALUE #(
 ( salesorganization =  'AE29'  distribution_channel =  '04'    division =  '02'    credit_control_area =   'CH40'  cca_description =   'Industrial (B2B) CCA'  credit_segment =    'AE01'  cs_description =    'Local Manufacturer CCA' )
( salesorganization =   'AE29'  distribution_channel =  '05'    division =  '02'    credit_control_area =   'CH50'  cca_description =   'Export CCA'    credit_segment =    'AE02'  cs_description =    'Export CCA' )
( salesorganization =   'AE29'  distribution_channel =  '06'    division =  '02'    credit_control_area =   'CH60'  cca_description =   'Trading,Oils & Fats CCA'   credit_segment =    'AE03'  cs_description =    'RM Trading CCA' )
( salesorganization =   'AE29'  distribution_channel =  '07'    division =  '02'    credit_control_area =   'CH70'  cca_description =   'Local Trading CCA' credit_segment =    'AE04'  cs_description =    'Local Trading CCA' )
( salesorganization =   'AE29'  distribution_channel =  '08'    division =  '02'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'AE29'  distribution_channel =  '10'    division =  '02'    credit_control_area =   'CH15'  cca_description =   'Scrap CCA' credit_segment =    'AE13'  cs_description =    'Scrap CCA' )
( salesorganization =   'EG01'  distribution_channel =  '01'    division =  '01'    credit_control_area =   'EG10'  cca_description =   'Consumer CCA'  credit_segment =    'EG01'  cs_description =    'Consumer Segment' )
( salesorganization =   'EG01'  distribution_channel =  '02'    division =  '01'    credit_control_area =   'EG20'  cca_description =   'Food Services CCA' credit_segment =    'EG02'  cs_description =    'Food Services Segment' )
( salesorganization =   'EG01'  distribution_channel =  '03'    division =  '01'    credit_control_area =   'EG30'  cca_description =   'Bakery CCA'    credit_segment =    'EG03'  cs_description =    'Bakery Segment' )
( salesorganization =   'EG01'  distribution_channel =  '04'    division =  '01'    credit_control_area =   'EG40'  cca_description =   'Industrial (B2B) CCA'  credit_segment =    'EG04'  cs_description =    'Industrial (B2B) Segment' )
( salesorganization =   'EG01'  distribution_channel =  '05'    division =  '01'    credit_control_area =   'EG50'  cca_description =   'Export CCA'    credit_segment =    'EG05'  cs_description =    'Export Segment' )
( salesorganization =   'EG01'  distribution_channel =  '05'    division =  '05'    credit_control_area =   'EG51'  cca_description =   'PC Export CCA' credit_segment =    'EG08'  cs_description =    'PC Export Segment' )
( salesorganization =   'EG01'  distribution_channel =  '06'    division =  '01'    credit_control_area =   'EG60'  cca_description =   'Trading,Oils & Fats CCA'   credit_segment =    'EG06'  cs_description =    'Trading,Oils & Fats Segment' )
( salesorganization =   'EG01'  distribution_channel =  '07'    division =  '05'    credit_control_area =   'EG70'  cca_description =   'PC Distributor CCA'    credit_segment =    'EG07'  cs_description =    'Distributor Segment' )
( salesorganization =   'EG01'  distribution_channel =  '08'    division =  '01'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'EG01'  distribution_channel =  '08'    division =  '05'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'EG01'  distribution_channel =  '10'    division =  '01'    credit_control_area =   'EG15'  cca_description =   'Scrap CCA' credit_segment =    'EG13'  cs_description =    'Scrap CCA' )
( salesorganization =   'EG01'  distribution_channel =  '10'    division =  '05'    credit_control_area =   'EG15'  cca_description =   'Scrap CCA' credit_segment =    'EG13'  cs_description =    'Scrap CCA' )
( salesorganization =   'ES01'  distribution_channel =  '01'    division =  '01'    credit_control_area =   'ES10'  cca_description =   'Consumer CCA Spain'    credit_segment =    'ES01'  cs_description =    'Consumer Segment' )
( salesorganization =   'ES01'  distribution_channel =  '04'    division =  '01'    credit_control_area =   'ES40'  cca_description =   'Industrial (B2B) CCA Spain'    credit_segment =    'ES04'  cs_description =    'Industrial (B2B)  Segment' )
( salesorganization =   'ES01'  distribution_channel =  '05'    division =  '01'    credit_control_area =   'ES50'  cca_description =   'Export CCA Spain'  credit_segment =    'ES05'  cs_description =    'Export Segment' )
( salesorganization =   'ES01'  distribution_channel =  '08'    division =  '01'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'ES01'  distribution_channel =  '10'    division =  '01'    credit_control_area =   'ES15'  cca_description =   'Scrap CCA' credit_segment =    'ES13'  cs_description =    'Scrap CCA' )
( salesorganization =   'ID01'  distribution_channel =  '05'    division =  '01'    credit_control_area =   'ID50'  cca_description =   'Export CCA'    credit_segment =    'ID05'  cs_description =    'Export Segment' )
( salesorganization =   'ID01'  distribution_channel =  '06'    division =  '01'    credit_control_area =   'ID50'  cca_description =   'Export CCA'    credit_segment =    'ID05'  cs_description =    'Export Segment' )
( salesorganization =   'ID01'  distribution_channel =  '07'    division =  '01'    credit_control_area =   'ID70'  cca_description =   'Distributor CCA'   credit_segment =    'ID07'  cs_description =    'Distributor Segment' )
( salesorganization =   'ID01'  distribution_channel =  '08'    division =  '01'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'ID01'  distribution_channel =  '10'    division =  '01'    credit_control_area =   'ID15'  cca_description =   'Scrap CCA' credit_segment =    'ID13'  cs_description =    'Scrap CCA' )
( salesorganization =   'IQ01'  distribution_channel =  '06'    division =  '01'    credit_control_area =   'IQ60'  cca_description =   'Trading,Oils & Fats CCA'   credit_segment =    'IQ06'  cs_description =    'Trading,Oils & Fats Segment' )
( salesorganization =   'IQ01'  distribution_channel =  '06'    division =  '05'    credit_control_area =   'IQ60'  cca_description =   'Trading,Oils & Fats CCA'   credit_segment =    'IQ06'  cs_description =    'Trading,Oils & Fats Segment' )
( salesorganization =   'IQ01'  distribution_channel =  '07'    division =  '01'    credit_control_area =   'IQ70'  cca_description =   'Distributor CCA'   credit_segment =    'IQ07'  cs_description =    'Distributor Segment' )
( salesorganization =   'IQ01'  distribution_channel =  '07'    division =  '05'    credit_control_area =   'IQ70'  cca_description =   'Distributor CCA'   credit_segment =    'IQ07'  cs_description =    'Distributor Segment' )
( salesorganization =   'IQ01'  distribution_channel =  '08'    division =  '01'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'IQ01'  distribution_channel =  '08'    division =  '05'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'IQ01'  distribution_channel =  '10'    division =  '01'    credit_control_area =   'IQ15'  cca_description =   'Scrap CCA' credit_segment =    'IQ13'  cs_description =    'Scrap CCA' )
( salesorganization =   'IQ01'  distribution_channel =  '10'    division =  '05'    credit_control_area =   'IQ15'  cca_description =   'Scrap CCA' credit_segment =    'IQ13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK01'  distribution_channel =  '01'    division =  '01'    credit_control_area =   'PK10'  cca_description =   'Consumer CCA'  credit_segment =    'PK01'  cs_description =    'Consumer CCA' )
( salesorganization =   'PK01'  distribution_channel =  '01'    division =  '06'    credit_control_area =   'PK62'  cca_description =   'Agri CCA'  credit_segment =    'PK14'  cs_description =    'Industrial Agri CCA' )
( salesorganization =   'PK01'  distribution_channel =  '02'    division =  '01'    credit_control_area =   'PK20'  cca_description =   'Food Services CCA' credit_segment =    'PK02'  cs_description =    'Food Services CCA' )
( salesorganization =   'PK01'  distribution_channel =  '03'    division =  '01'    credit_control_area =   'PK30'  cca_description =   'Bakery CCA'    credit_segment =    'PK02'  cs_description =    'Food Services CCA' )
( salesorganization =   'PK01'  distribution_channel =  '04'    division =  '01'    credit_control_area =   'PK40'  cca_description =   'Industrial (B2B) CCA'  credit_segment =    'PK04'  cs_description =    'Industrial (B2B) CCA' )
( salesorganization =   'PK01'  distribution_channel =  '04'    division =  '03'    credit_control_area =   'PK41'  cca_description =   'Industrial Seed Crushing CCA'  credit_segment =    'PK05'  cs_description =    'Industrial Seed Crushing CCA' )
( salesorganization =   'PK01'  distribution_channel =  '04'    division =  '06'    credit_control_area =   'PK62'  cca_description =   'Agri CCA'  credit_segment =    'PK14'  cs_description =    'Industrial Agri CCA' )
( salesorganization =   'PK01'  distribution_channel =  '05'    division =  '01'    credit_control_area =   'PK50'  cca_description =   'Export CCA'    credit_segment =    'PK07'  cs_description =    'Export CCA' )
( salesorganization =   'PK01'  distribution_channel =  '05'    division =  '03'    credit_control_area =   'PK51'  cca_description =   'Export Seed Crushing CCA'  credit_segment =    'PK08'  cs_description =    'Export Seed Crushing CCA' )
( salesorganization =   'PK01'  distribution_channel =  '05'    division =  '05'    credit_control_area =   'PK50'  cca_description =   'Export CCA'    credit_segment =    'PK07'  cs_description =    'Export CCA' )
( salesorganization =   'PK01'  distribution_channel =  '06'    division =  '01'    credit_control_area =   'PK60'  cca_description =   'Trading,Oils & Fats CCA'   credit_segment =    'PK09'  cs_description =    'Trading,Oils & Fats CCA' )
( salesorganization =   'PK01'  distribution_channel =  '06'    division =  '03'    credit_control_area =   'PK61'  cca_description =   'Trading,Seed Crushing CCA' credit_segment =    'PK10'  cs_description =    'Trading,Seed Crushing CCA' )
( salesorganization =   'PK01'  distribution_channel =  '06'    division =  '06'    credit_control_area =   'PK62'  cca_description =   'Agri CCA'  credit_segment =    'PK14'  cs_description =    'Industrial Agri CCA' )
( salesorganization =   'PK01'  distribution_channel =  '07'    division =  '01'    credit_control_area =   'PK71'  cca_description =   'Scrap CCA' credit_segment =    'PK13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK01'  distribution_channel =  '07'    division =  '05'    credit_control_area =   'PK70'  cca_description =   'Distributor CCA'   credit_segment =    'PK11'  cs_description =    'Distributor CCA' )
( salesorganization =   'PK01'  distribution_channel =  '08'    division =  '01'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'PK01'  distribution_channel =  '08'    division =  '03'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'PK01'  distribution_channel =  '08'    division =  '05'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'PK01'  distribution_channel =  '08'    division =  '06'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'PK01'  distribution_channel =  '09'    division =  '01'    credit_control_area =   'PK90'  cca_description =   'Bulk Trading CCA'  credit_segment =    'PK12'  cs_description =    'Bulk Trading CCA' )
( salesorganization =   'PK01'  distribution_channel =  '10'    division =  '01'    credit_control_area =   'PK71'  cca_description =   'Scrap CCA' credit_segment =    'PK13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK01'  distribution_channel =  '10'    division =  '03'    credit_control_area =   'PK71'  cca_description =   'Scrap CCA' credit_segment =    'PK13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK01'  distribution_channel =  '10'    division =  '05'    credit_control_area =   'PK71'  cca_description =   'Scrap CCA' credit_segment =    'PK13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK01'  distribution_channel =  '10'    division =  '06'    credit_control_area =   'PK71'  cca_description =   'Scrap CCA' credit_segment =    'PK13'  cs_description =    'Scrap CCA' )
( salesorganization =   'PK02'  distribution_channel =  '04'    division =  '04'    credit_control_area =   'PK42'  cca_description =   'Industrial (B2B) BOT CCA'  credit_segment =    'PK06'  cs_description =    'Industrial (B2B) BOT CCA' )
( salesorganization =   'PK02'  distribution_channel =  '08'    division =  '04'    credit_control_area =   'NA'    cca_description =   'NA'    credit_segment =    'NA'    cs_description =    'NA' )
( salesorganization =   'IN02'  distribution_channel =  '07'    division =  '11'    credit_control_area =   'IN70'  cca_description =   'Distributor CCA'   credit_segment =    'IN07'  cs_description =    'Distributor CCA' )

).

*   delete existing entries in the database table
    DELETE FROM ztab_cm_master.

*   insert the new table entries
*INSERT ztab_cm_master FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } Channel entries inserted successfully!| ).


  ENDMETHOD.
ENDCLASS.
