import java.util.Map;

/**
* ${classInfo.classComment}
* @author ${authorName}
* @date ${.now?string('yyyy/MM/dd')}
*/
public interface ${classInfo.className}Service {

    /**
    * [查询] 根据Map查询
    */
    public List<${classInfo.className}> get${classInfo.className}List(Map map);

    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public int update${classInfo.className}List(List<${classInfo.className}> list);

    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public int insert${classInfo.className}List(List<${classInfo.className}> list);

    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public int insertSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * [刪除]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public int delete${classInfo.className}ById(int id);

    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public int updateSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});



    /**
    * [查询] 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    public Map<String,Object> page${classInfo.className}List(int offset,int pagesize);

}
