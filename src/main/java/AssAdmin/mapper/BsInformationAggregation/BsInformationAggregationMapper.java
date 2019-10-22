package AssAdmin.mapper.BsInformationAggregation;

import java.util.List;

import AssAdmin.domain.BsInformationAggregation;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BsInformationAggregationMapper {
    int delete(Long id);

    int insert(BsInformationAggregation record);

    BsInformationAggregation get(Long id);

    int update(BsInformationAggregation record);

    List<BsInformationAggregation> listByInformationInputId(@Param("informationInputId") Long informationInputId, @Param("start") int start, @Param("size") int size);
    
    int countByInformationInputId(@Param("informationInputId") Long informationInputId);

    List<BsInformationAggregation> ListByBatchId(Long informationInputId);

    BsInformationAggregation findByProductNameAndModel(@Param("productName") String productName, @Param("productModel") String productModel, @Param("productCompany") String productCompany);

    List<BsInformationAggregation> selectAll(BsInformationAggregationGridQueryParam params);
    
    int countAll(BsInformationAggregationGridQueryParam params);


}