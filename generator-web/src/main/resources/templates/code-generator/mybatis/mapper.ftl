import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
* ${classInfo.classComment}
* @author ${authorName}
* @date ${.now?string('yyyy/MM/dd')}
*/
@Mapper
@Repository
public interface ${classInfo.className}Mapper {

    /**
    * [查询] 根据Map查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    List<${classInfo.className}> get${classInfo.className}List(Map map);

    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int update${classInfo.className}List(List<${classInfo.className}> list);

    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int insert${classInfo.className}List(List<${classInfo.className}> list);

    /**
    * [新增]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int insertSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});

    /**
    * [刪除]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int delete${classInfo.className}ById(int id);

    /**
    * [更新]
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int updateSingle${classInfo.className}(${classInfo.className} ${classInfo.className?uncap_first});



    /**
    * [查询] 分页查询
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    List<${classInfo.className}> page${classInfo.className}List(int offset,int pagesize);

    /**
    * [查询] 分页查询 count
    * @author ${authorName}
    * @date ${.now?string('yyyy/MM/dd')}
    **/
    int page${classInfo.className}ListCount(int offset,int pagesize);

}
