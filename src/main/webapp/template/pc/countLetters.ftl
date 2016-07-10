<#import "../layout/pcLayout.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.myLayout>
<style>
.tcAlert { color: orange; }
.tcWarn { color: red; }
</style>
<script>
	$(function(){
	    $('#theCounter').textCounter({
	        target: '#myTextarea' // required: string
	    });
	});
	
	$(function(){
	    $('#theCounter').textCounter({
	        target: '#myTextarea', // required: string
	        count: 70, // optional: if string, specifies attribute of target to use as value
	                   //           if integer, specifies value. [defaults 140]
	        stopAtLimit: false // optional: defaults to false
	    });
	});
</script>

<label for="myTextarea">70 character field</label>
<textarea id="myTextarea"></textarea>
<span id="theCounter">70</span>

<@spring.message "sample.parameter.update.ok.message"/>
</@layout.myLayout>