import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
* @description ${classInfo.classComment}
* @author ${authorName}
* @date ${.now?string('yyyy/MM/dd')}
*/
@RestController
@RequestMapping(value = "/${classInfo.className}")
public class ${classInfo.className}Controller {

    @Autowired
    private ${classInfo.className}Service ${classInfo.className?uncap_first}Service;

    /**
    * [查询] 根据Map查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/get${classInfo.className}List")
    @ResponseBody
    public List<${classInfo.className}> get${classInfo.className}List(Map map){
        return ${classInfo.className?uncap_first}Service.get${classInfo.className}List(map);
    }
    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/update${classInfo.className}List")
    @ResponseBody
    public int update${classInfo.className}List(List<${classInfo.className}> list){
        return ${classInfo.className?uncap_first}Service.update${classInfo.className}List(list);
    }
    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/insert${classInfo.className}List")
    @ResponseBody
    public int insert${classInfo.className}List(List<${classInfo.className}> list){
        return ${classInfo.className?uncap_first}Service.insert${classInfo.className}List(list);
    }
    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/insertSingle${classInfo.className}")
    @ResponseBody
    public int insertSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.insertSingle${classInfo.className}(${classInfo.className?uncap_first});
    }

    /**
    * [刪除]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/delete${classInfo.className}ById")
    @ResponseBody
    public int delete${classInfo.className}ById(int id){
        return ${classInfo.className?uncap_first}Service.delete${classInfo.className}ById(id);
    }
    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/updateSingle${classInfo.className}")
    @ResponseBody
    public int updateSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first}){
        return ${classInfo.className?uncap_first}Service.updateSingle${classInfo.className}(${classInfo.className?uncap_first});
    }
    /**
    * [查询] 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    @RequestMapping("/page${classInfo.className}List")
    @ResponseBody
    public Map<String,Object> page${classInfo.className}List(int offset,int pagesize){
        return ${classInfo.className?uncap_first}Service.page${classInfo.className}List(offset,pagesize);
    }

}
