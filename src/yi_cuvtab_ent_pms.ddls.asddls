@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cuvtab'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YI_CUVTAB_ENT_PMS as 
select from cuvtab
association[1..1] to YCE_EXAMPLE_PMS as _examp
    on $projection.vtint = _examp.vtint
{
    key vtint,
    _examp
    
}
