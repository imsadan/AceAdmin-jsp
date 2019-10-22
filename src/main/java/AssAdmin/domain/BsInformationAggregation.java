package AssAdmin.domain;

import AssAdmin.common.JsonDateSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.util.Date;

public class BsInformationAggregation {
    private Long id = 0L;

    private String productName = "";

    private String productModel = "";

    private String productCompany = "";

    private Long informationInputId;

    private String recorder = "";

    @JsonSerialize(using = JsonDateSerializer.class)
    private Date createTime;

    @JsonSerialize(using = JsonDateSerializer.class)
    private Date updateTime;

    private String description = "";

    private String unitPrice = "";

    private String units = "";

    private Long number;

    private String brands = "";

    private String referencePriceDesc = "";

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductModel() {
        return productModel;
    }

    public void setProductModel(String productModel) {
        this.productModel = productModel == null ? null : productModel.trim();
    }

    public String getProductCompany() {
        return productCompany;
    }

    public void setProductCompany(String productCompany) {
        this.productCompany = productCompany == null ? null : productCompany.trim();
    }

    public Long getInformationInputId() {
        return informationInputId;
    }

    public void setInformationInputId(Long informationInputId) {
        this.informationInputId = informationInputId;
    }

    public String getRecorder() {
        return recorder;
    }

    public void setRecorder(String recorder) {
        this.recorder = recorder == null ? null : recorder.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

   

    public String getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(String unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getUnits() {
        return units;
    }

    public void setUnits(String units) {
        this.units = units == null ? null : units.trim();
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public String getBrands() {
        return brands;
    }

    public void setBrands(String brands) {
        this.brands = brands == null ? null : brands.trim();
    }

    public String getReferencePriceDesc() {
        return referencePriceDesc;
    }

    public void setReferencePriceDesc(String referencePriceDesc) {
        this.referencePriceDesc = referencePriceDesc == null ? null : referencePriceDesc.trim();
    }
}