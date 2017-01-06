<html>
<head>

</head>

<body>
<#--${world}-->
<#--id为：${person.id}-->
<#--name为：${person.name}-->

<#--<#list persons as person>-->
<#--${person}-->
<#--</#list>-->

<#--<#list map?keys as key>-->
<#--<p>${key} and ${map[key]}</p>-->
<#--</#list>-->

<#--<#list maps as map>-->
<#--<#list map?keys as key>-->
<#--<p>${key} and ${map[key]}</p>-->
<#--</#list>-->
<#--</#list>-->

<#--获得集合的索引-->
<#--<#list persons as person>-->
<#--${person_index}-->
<#--</#list>-->

<#--在模板中进行赋值-->
<#--1:<#assign x=0 />  ${x}-->
<#--2:<#assign x="${world}" />   ${x}-->
<#--3:<#assign x>世界太好了</#assign>   ${x}-->
<#--4:<#assign x>-->
<#--<#list ["星期一","星期二","星期三","星期四","星期五","星期六","星期日"] as day>-->
<#--${day}-->
<#--</#list>-->
<#--</#assign>  ${x}-->

<#--<#list ["星期一","星期二","星期三","星期四","星期五","星期六","星期日"] as day>-->
<#--<#if day!="星期四">-->
<#--${day}-->
<#--</#if>-->
<#--</#list>-->


<#--<#list ["星期一","星期二","星期三","星期四","星期五","星期六","星期日"] as day>-->
<#--<#if day_index!=4>-->
<#--${day}-->
<#--</#if>-->
<#--</#list>-->

<#--<#list ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天"] as n>-->
<#--<#if (n_index == 1) || (n_index == 3)>-->
<#--${n}-->
<#--</#if>-->
<#--</#list>-->

<#--<#list ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天"] as n>-->
<#--<#if (n_index == 1) || (n_index == 3)>-->
<#--${n} --红色-->
<#--<#else>-->
<#--${n} --绿色-->
<#--</#if>-->
<#--</#list>-->

<#--日期处理-->
<#--date:  ${time?date}-->
<#--datetime:  ${time?datetime}-->
<#--time:  ${time?time}-->

<#--如果val为null，则输出“我是null”-->
<#--${val!"我是null"}-->

1:
<#macro table u>
${u}
</#macro>
<@table u=8 />
2:
<#macro table u>
${u}
    <#nested/>
</#macro>
<@table u=8 >这是8</@table>


<#--将另一个页面引入本页面时可用以下命令完成-->
<#--<#include "/include/head.html">-->


</body>
</html>