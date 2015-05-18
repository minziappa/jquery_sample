<#macro myLayout title="FreeMarker example">
<html>
	<#include "header.ftl"/>
	<body>
	<#include "menu.ftl"/>
	<#nested/>
	<#include "footer.ftl"/>
	</body>
</html>
</#macro>