xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query2>
{
for $p in doc("company.xml")//Division/@divId
where (count( doc("company.xml")//WorksFor[@divId=$p]/@empId) =count(doc("company.xml")//Employee))
return <Division>
<divName>
{
$p/../divName/text()
}
</divName>
</Division>
}
</query2>
