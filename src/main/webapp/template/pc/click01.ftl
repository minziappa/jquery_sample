<#import "../layout/pcLayout.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.myLayout>


<script>
$(document).ready(function(){

  $("p").click(function(){
    $(this).hide();
  });

});
</script>


<p>If you click on me, I will disappear.</p>
<p>Click me away!</p>
<p>Click me too!</p>

</@layout.myLayout>