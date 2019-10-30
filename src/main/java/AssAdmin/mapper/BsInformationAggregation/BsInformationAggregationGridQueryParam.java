package AssAdmin.mapper.BsInformationAggregation;

import AssAdmin.common.GridQueryParam;

/**
 * 
 *查询条件 
 *
 */
public class BsInformationAggregationGridQueryParam extends GridQueryParam {

    private String params = "";

    private String search_name = "";

    private String search_model = "";

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params;
    }


    public String getSearchName() {
        return search_name;
    }

    public void setSearchName(String search_name) {
        this.search_name = search_name;
    }

    public String getSearchModel() {
        return search_model;
    }

    public void setSearchModel(String search_model) {
        this.search_model = search_model;
    }
}
