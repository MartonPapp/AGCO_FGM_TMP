@AbapCatalog.sqlViewName: 'YV_VALC_OUT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'valc outer'
define view YI_VALC_OUTER as 
select from cuvtab_valc as vc
left outer join cuvtab_valc as modyear
            on vc.vtint = modyear.vtint
            and vc.slnid = modyear.slnid
{
    key vc.vtint,
    key vc.slnid,
    min(vc.atinn) as vcgroup_atinn,
    min(modyear.atinn) as modelyear_atinn
    --vc.valc as vcgroup_valc,
    --modyear.valc as modelyear_valc
}  where vc.atinn <> modyear.atinn  
   group by vc.vtint, vc.slnid
