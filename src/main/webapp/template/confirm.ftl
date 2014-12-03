<#import "layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<div align="center">
	<input type="submit" name="doEntry" class="btn btn-primary" value="confirm" />
	<input type="button" class="btn" onClick="history.go(-1);" value="cancel">
</div>

</@layout.myLayout>
