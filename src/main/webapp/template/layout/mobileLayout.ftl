<#macro myLayout title="Mobile Sample">
<html>
	<#include "mobileHeader.ftl"/>
	<body>
	<#include "mobileMenu.ftl"/>
	<#nested/>
	<#include "mobileFooter.ftl"/>
	</body>
</html>
</#macro>