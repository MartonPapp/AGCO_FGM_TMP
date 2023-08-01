@AbapCatalog.sqlViewName: 'YDDL_EXAMPLE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for YTF_EXAMPLE'
define view YI_EXAMPLE_PMS as 
select from YI_CUVTAB_ENT_PMS
{
    key vtint
    
}
