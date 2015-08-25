xquery version "3.0";

declare namespace ext="http://www.altova.com/xslt-extensions";

<query4>
{
for $p in doc("company.xml")//Employee
where not(doc("company.xml")//Division[@managerEmpId =$p/@empId])
order by $p/empName descending
 return<Employee>
<empName>{ ($p/empName)/text()}</empName>
<empPhone>{ ($p/empPhone)/text()}</empPhone>
<empOffice>{($p/empOffice)/text()}</empOffice>
</Employee>
}
</query4>
