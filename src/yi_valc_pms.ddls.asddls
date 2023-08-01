@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Valc'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YI_VALC_PMS as 
select from cuvtab_valc
association to YCE_EXAMPLE_PMS as _examp
    on $projection.vtint = _examp.vtint
{
    key vtint,
    _examp
}
