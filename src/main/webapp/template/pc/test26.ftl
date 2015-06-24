<#import "../layout/bootstrapLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
    	var reader = new FileReader();
    	reader.onload = function(e) {
    		$('#UploadedImg').attr('src', e.target.result);
    	}
    	reader.readAsDataURL(input.files[0]);
    }
}
</script>

<h2>Javascript Picture</h2>
<a href ="#" onclick="createWanderingDiv()"> HOME </a>

</@layout.myLayout>