function generateid(manufacturer, model_name,make_year) {
    //Cannot do opeations like below as only query is compiled and data is not processed
    //const two_dig_year = make_year%100
    return 'CONCAT(manufacturer,"_",model_name,"_",CAST(make_year as STRING))'
}

module.exports = {
    generateid
}
