xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query6>
{
for $r in doc("company.xml")//Employee
let $q :=  max(
for $p in doc("company.xml")//Employee
return count(doc("company.xml")//WorksFor[@empId = $p/@empId])
)
where count(doc("company.xml")//WorksFor[@empId = $r/@empId]) = $q
return <Employee>
<empName>{$r/empName/text()}</empName>
<empPhone>{$r/empPhone/text()}</empPhone>
<empOffice>{$r/empOffice/text()}</empOffice>
</Employee>
}
</query6>
