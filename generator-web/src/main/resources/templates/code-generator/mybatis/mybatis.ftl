<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="${packageName}.${classInfo.className}Mapper">

    <resultMap id="${classInfo.className}Map" type="${packageName}.${classInfo.className}" >
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                <result column="${fieldItem.columnName}" property="${fieldItem.fieldName}" />
            </#list>
        </#if>
    </resultMap>

    <parameterMap id="${classInfo.className}Param" type="${packageName}.${classInfo.className}">
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                <parameter property="${fieldItem.fieldName}" />
                <#--<parameter property="${fieldItem.fieldName}" jdbcType="${fieldItem.fieldTable}" />-->
            </#list>
        </#if>
    </parameterMap>

    <sql id="${classInfo.className}_Column_List">
        <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
            <#list classInfo.fieldList as fieldItem >
                `${fieldItem.columnName}`<#if fieldItem_has_next>,</#if>
            </#list>
        </#if>
    </sql>

    <select id="get${classInfo.className}List" resultMap="${classInfo.className}Map">
        SELECT <include refid="${classInfo.className}_Column_List" />
        FROM ${classInfo.tableName}
        <where>
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                    ${r"<if test ='"}${fieldItem.fieldName}${r" != null'>and "}`${fieldItem.columnName}` = ${r"#{"}${fieldItem.fieldName}${r"}"}${r"</if>"}
                </#if>
            </#list>
        </where>
    </select>

    <update id="update${classInfo.className}List" parameterMap="${classInfo.className}Param">
        <foreach collection="list" item="item" index="index" separator=";">
            UPDATE ${classInfo.tableName}
            <set>
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                    ${r"<if test ='item."}${fieldItem.fieldName}${r" != null'>"}`${fieldItem.columnName}` = ${r"#{item."}${fieldItem.fieldName}${r"}"}<#if fieldItem_has_next>,</#if>${r"</if>"}
                </#if>
            </#list>
            </set>
            WHERE id = ${r"#{item."}id${r"}"}
        </foreach>
    </update>

    <insert id="insert${classInfo.className}List" useGeneratedKeys="true" keyColumn="id" parameterMap="${classInfo.className}Param">
        <foreach collection="list" item="item" index="index" separator=";">
            INSERT INTO ${classInfo.tableName}
            <trim prefix="(" suffix=")" suffixOverrides=",">
                <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                    <#list classInfo.fieldList as fieldItem >
                        <#if fieldItem.columnName != "id" >
                            ${r"<if test ='item."}${fieldItem.fieldName}${r" != null'>"}`${fieldItem.columnName}`<#if fieldItem_has_next>,</#if>${r"</if>"}
                        </#if>
                    </#list>
                </#if>
            </trim>
            <trim prefix="values (" suffix=")" suffixOverrides=",">
                <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                    <#list classInfo.fieldList as fieldItem >
                        <#if fieldItem.columnName != "id" >
                            ${r"<if test ='item."}${fieldItem.fieldName}${r" != null'>"}${r"#{item."}${fieldItem.fieldName}${r"}"}<#if fieldItem_has_next>,</#if>${r"</if>"}
                        </#if>
                    </#list>
                </#if>
            </trim>
        </foreach>
    </insert>

    <insert id="insertSingle${classInfo.className}" useGeneratedKeys="true" keyColumn="id" parameterMap="${classInfo.className}Param">
        INSERT INTO ${classInfo.tableName}
        <trim prefix="(" suffix=")" suffixOverrides=",">
            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                <#list classInfo.fieldList as fieldItem >
                    <#if fieldItem.columnName != "id" >
                        ${r"<if test ='"}${fieldItem.fieldName}${r" != null'>"}`${fieldItem.columnName}`<#if fieldItem_has_next>,</#if>${r"</if>"}
                    </#if>
                </#list>
            </#if>
        </trim>
        <trim prefix="values (" suffix=")" suffixOverrides=",">
            <#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
                <#list classInfo.fieldList as fieldItem >
                    <#if fieldItem.columnName != "id" >
                        ${r"<if test ='"}${fieldItem.fieldName}${r" != null'>"}${r"#{"}${fieldItem.fieldName}${r"}"}<#if fieldItem_has_next>,</#if>${r"</if>"}
                    </#if>
                </#list>
            </#if>
        </trim>
    </insert>

    <delete id="delete${classInfo.className}ById" >
        DELETE FROM ${classInfo.tableName}
        WHERE id = ${r"#{id}"}
    </delete>

    <update id="updateSingle${classInfo.className}" parameterMap="${classInfo.className}Param">
        UPDATE ${classInfo.tableName}
        <set>
            <#list classInfo.fieldList as fieldItem >
                <#if fieldItem.columnName != "id" && fieldItem.columnName != "AddTime" && fieldItem.columnName != "UpdateTime" >
                    ${r"<if test ='"}${fieldItem.fieldName}${r" != null'>"}`${fieldItem.columnName}` = ${r"#{"}${fieldItem.fieldName}${r"}"}<#if fieldItem_has_next>,</#if>${r"</if>"}
                </#if>
            </#list>
        </set>
        WHERE id = ${r"#{"}id${r"}"}
    </update>



    <select id="page${classInfo.className}List" resultMap="${classInfo.className}Map">
        SELECT <include refid="${classInfo.className}_Column_List" />
        FROM ${classInfo.tableName}
        LIMIT ${r"#{offset}"}, ${r"#{pageSize}"}
    </select>

    <select id="page${classInfo.className}ListCount" resultType="java.lang.Integer">
        SELECT count(1)
        FROM ${classInfo.tableName}
    </select>

</mapper>