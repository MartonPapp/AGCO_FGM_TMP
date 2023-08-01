@EndUserText.label: 'Cuvtab Valc'
define view entity YI_CUVTAB_VALC_PMS
as select from cuvtab_valc
association to parent YI_CUVTAB_ROOT_PMS as _cuvtab
on $projection.vtint = _cuvtab.vtint
// with parameters parameter_name : parameter_type
{
  key vtint,
  key slnid,
  key atinn,
  key vlcnt,
  valc,
  _cuvtab
}
