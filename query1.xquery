xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query1>
{
for $p in (doc("company.xml")//WorksFor[@empId = //Employee[empName ='PSmith']/@empId] ,doc("company.xml")//WorksFor[@empId = //Employee[empName ='Jack']/@empId] )
where $p/percentTime >=50
return <Department>
<deptName>
{
doc("company.xml")//Department/Division[@divId = $p/@divId]/../deptName/text()
}
</deptName>
</Department>
}
</query1>