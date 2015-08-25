xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query4>{ 
let $q :=  avg(
for $p in doc("company.xml")//Employee
return count(doc("company.xml")//WorksFor[@empId = $p/@empId])
)
return 
<Division>
<Avg>
{
$q
}
</Avg>
</Division>
}
</query4>
