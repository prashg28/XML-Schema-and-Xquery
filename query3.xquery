xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query3>
{
for $p in doc("company.xml")//Department
let $r:= (for $p in doc("company.xml")//Department
where $p/Division/@managerEmpId = doc("company.xml")//Employee[empName = 'Wong']/@empId
return $p/@deptId)
where $p/@deptId != $r and $p/Division/@managerEmpId = doc("company.xml")//Employee[empName = 'PSmith']/@empId
return <Department>
<deptName>
{
distinct-values($p/deptName)
}
</deptName>
</Department>
}
</query3>
