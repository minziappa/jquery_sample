<#macro myLayout title="FreeMarker example">
<html>
	<#include "testHeader.ftl"/>
	<body>
	<#include "testMenu.ftl"/>
	<#nested/>
	<#include "footer.ftl"/>
	</body>
</html>
</#macro>