<#macro myLayout title="FreeMarker example">
<html>
	<#include "realTimeHeader.ftl"/>
	<body>
	<#include "realTimeMenu.ftl"/>
	<#nested/>
	<#include "footer.ftl"/>
	</body>
</html>
</#macro>