import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* ${classInfo.classComment}
* @author ${authorName}
* @date ${.now?string('yyyy/MM/dd')}
*/
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

    @Autowired
    private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;


    @Override
    public List<${classInfo.className}> get${classInfo.className}List(Map map){
        return ${classInfo.className?uncap_first}Mapper.get${classInfo.className}List(map);
    }

    @Override
    public int update${classInfo.className}List(List<${classInfo.className}> list){
        return ${classInfo.className?uncap_first}Mapper.update${classInfo.className}List(list);
    }

    @Override
    public int insert${classInfo.className}List(List<${classInfo.className}> list){
        return ${classInfo.className?uncap_first}Mapper.insert${classInfo.className}List(list);
    }

    @Override
    public int insertSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}){
        <#--// valid-->
        <#--if (${classInfo.className?uncap_first} == null) {-->
            <#--return new ReturnT<String>(ReturnT.FAIL_CODE, "必要参数缺失");-->
        <#--}-->
        return ${classInfo.className?uncap_first}Mapper.insertSingle${classInfo.className}(${classInfo.className?uncap_first});
        <#--return ReturnT.SUCCESS;-->
    }


    @Override
    public int delete${classInfo.className}ById(int id){
        return ${classInfo.className?uncap_first}Mapper.delete${classInfo.className}ById(id);
    }

    @Override
    public int updateSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Mapper.updateSingle${classInfo.className}(${classInfo.className?uncap_first});

    }

    @Override
    public Map<String,Object> page${classInfo.className}List(int offset,int pagesize){
        List<${classInfo.className}> pageList = ${classInfo.className?uncap_first}Mapper.page${classInfo.className}List(offset, pagesize);
        int totalCount = ${classInfo.className?uncap_first}Mapper.page${classInfo.className}ListCount(offset, pagesize);

        // result
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("pageList", pageList);
        result.put("totalCount", totalCount);

        return result;
    }

}
