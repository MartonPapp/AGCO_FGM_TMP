@AbapCatalog.sqlViewName: 'YDDL_CONS_TF'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consume table function'
define view yi_consume_tf as 
select from YTF_EXAMPLE
{
    client,
    weight
}
