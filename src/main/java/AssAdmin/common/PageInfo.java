package AssAdmin.common;

import java.util.List;

public class PageInfo<T> {

    private int currPage = 1;  //当前页
    private int totalPage = 1;   //总页数
    private int totalCount = 0;  //总记录数
    private int pageSize = 20;  //每页数量
    private List<T> dataList;

    public PageInfo(){

    }

    public PageInfo(int rows,int currPage,int pageSize){
        this.totalCount = rows;
        this.currPage = currPage;
        this.pageSize = pageSize;

        if (this.totalCount % this.pageSize == 0){
            this.totalPage = this.totalCount / this.pageSize;
        }else if(rows < this.pageSize){
            this.totalPage = 1;
        }else{
            this.totalPage = this.totalCount/this.pageSize +1;
        }
    }

    public PageInfo(int rows) {
        this.totalCount = rows;
        if(this.totalCount % this.pageSize ==0){
            this.totalPage =this.totalCount/this.pageSize;
        }else if(rows < this.pageSize){
            this.totalPage = 1;
        }else {
            this.totalPage =this.totalCount/this.pageSize +1;
        }
    }

    public int getCurrPage() {
        return currPage;
    }

    public void setCurrPage(int currPage) {
        this.currPage = currPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPages(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
