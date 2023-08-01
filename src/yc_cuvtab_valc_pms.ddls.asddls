@EndUserText.label: 'Consumption YI_CUVTAB_VALC'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity YC_CUVTAB_VALC_PMS as 
projection on YI_CUVTAB_VALC_PMS
{
    key vtint,
  key slnid,
  key atinn,
  key vlcnt,
  valc,
  _cuvtab : redirected to parent YC_CUVTAB_ROOT_PMS
}
