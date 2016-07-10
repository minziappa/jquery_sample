<#macro myLayout title="Mobile Sample">
<html>
	<#include "header.ftl"/>
	<body>
	<#include "menu.ftl"/>
	<#nested/>
	<#include "footer.ftl"/>
	</body>
</html>
</#macro>