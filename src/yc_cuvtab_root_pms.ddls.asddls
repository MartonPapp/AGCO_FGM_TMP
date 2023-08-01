@EndUserText.label: 'Consumption YI_CUVTAB_ROOT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity YC_CUVTAB_ROOT_PMS as 
projection on YI_CUVTAB_ROOT_PMS
{
    key vtint,
    _cuvtab_valc : redirected to composition child YC_CUVTAB_VALC_PMS // Make association public
}
