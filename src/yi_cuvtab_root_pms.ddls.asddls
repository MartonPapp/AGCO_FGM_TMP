@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cuvtab Root'
define root view entity YI_CUVTAB_ROOT_PMS as 
select from cuvtab
composition [1..*] of YI_CUVTAB_VALC_PMS as _cuvtab_valc
association [1..1] to YCE_EXAMPLE_PMS as _examp
    on $projection.vtint = _examp.vtint
{
    key vtint,
    _cuvtab_valc, // Make association public
    _examp
}
