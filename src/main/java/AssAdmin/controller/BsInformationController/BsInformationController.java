package AssAdmin.controller.BsInformationController;

import AssAdmin.mapper.BsInformationAggregation.BsInformationAggregationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/bs/information")
public class BsInformationController {

   /* @Autowired
    private BsInformationAggregationMapper bsInformationAggregationMapper;
*/
    @RequestMapping("/show/list")
    public ModelAndView  showList(){
        return null;
    }
}
