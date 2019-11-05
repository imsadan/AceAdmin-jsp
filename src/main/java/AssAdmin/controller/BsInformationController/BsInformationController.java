package AssAdmin.controller.BsInformationController;

import AssAdmin.common.DatablesPage;
import AssAdmin.common.PageInfo;
import AssAdmin.domain.BsInformationAggregation;
import AssAdmin.mapper.BsInformationAggregation.BsInformationAggregationGridQueryParam;
import AssAdmin.mapper.BsInformationAggregation.BsInformationAggregationMapper;
import org.apache.commons.collections4.bag.SynchronizedSortedBag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/bs/information")
public class BsInformationController {

   @Autowired
    private BsInformationAggregationMapper bsInformationAggregationMapper;

   @Autowired
   private HttpServletRequest request;

    @RequestMapping("/show/list")
    public ModelAndView  showPage(){

        ModelAndView model = new ModelAndView();
        model.setViewName("bs_information");
        return  model;
    }

    @RequestMapping("/show/jq")
    public ModelAndView  showJqPage(){

        ModelAndView model = new ModelAndView();
        model.setViewName("bs_jqDatables");
        return  model;
    }

    @RequestMapping("/data")
    @ResponseBody
    public DatablesPage<BsInformationAggregation> dataList(BsInformationAggregationGridQueryParam queryParam){
       /* String page = request.getParameter("page");   //当前页
        String rows = request.getParameter("rows");   //一页数量

        BsInformationAggregationGridQueryParam queryParam = new BsInformationAggregationGridQueryParam();
        queryParam.setStart((Integer.parseInt(page)-1)*Integer.parseInt(rows));
        queryParam.setSize(Integer.parseInt(rows));

        List<BsInformationAggregation> bsInformationList =  bsInformationAggregationMapper.selectAll(queryParam);
        int count = bsInformationAggregationMapper.countAll(queryParam);  //总数

        PageInfo<BsInformationAggregation> pageInfo = null;
        if(!StringUtils.isEmpty(page) || !StringUtils.isEmpty(rows)){
            pageInfo = new PageInfo(count,Integer.valueOf(page),Integer.valueOf(rows));
        }else{
            pageInfo = new PageInfo(count);
        }

        pageInfo.setDataList(bsInformationList);

        return  pageInfo;*/

        String draw = request.getParameter("draw");
        String page = request.getParameter("page");   //当前页
        String rows = request.getParameter("limit");   //一页数量

        queryParam.setStart((Integer.parseInt(page)-1)*Integer.parseInt(rows));
        queryParam.setSize(Integer.parseInt(rows));

        List<BsInformationAggregation> bsInformationList =  bsInformationAggregationMapper.selectAll(queryParam);
        int count = bsInformationAggregationMapper.countAll(queryParam);  //总数

        DatablesPage pageInfo = new DatablesPage();
        pageInfo.setDraw(Integer.parseInt(draw));
        pageInfo.setRecordsTotal(count);
        pageInfo.setRecordsFiltered(count);
        pageInfo.setData(bsInformationList);

        return pageInfo;
    }

    @RequestMapping("/add/goods/page")
    public ModelAndView addGoodsPage(){
        ModelAndView model = new ModelAndView();
        model.setViewName("bs_add_form");
        return  model;
    }
}
