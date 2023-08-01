@EndUserText.label: 'Example Table function'
define table function YTF_EXAMPLE
//with parameters parameter_name : parameter_type
returns {
  client : abap.clnt;
  weight : abap.char( 70 );
  
}
implemented by method YCL_WEIGHT_CALC_PMS=>weight_calculatioin;
