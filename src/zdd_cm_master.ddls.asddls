@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DATA DEFINITION FOR TESTING MASTER'


define root view entity ZDD_CM_MASTER
  as select from ztab_cm_master

{


//  key cm_id as cm,
//  key salesorganization    as SO,
//      distribution_channel as DC,
//      division             as DV,
//      credit_control_area  as CCA,
//      cca_description      as CCA_D,
//      credit_segment       as CS,
//      cs_description       as CS_D
      
      
      
  key salesorganization    ,
  key cm_id ,
      distribution_channel ,
      division             ,
      credit_control_area  ,
      cca_description      ,
      credit_segment       ,
      cs_description       
}
