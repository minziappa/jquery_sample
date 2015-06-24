<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="panel" id="myPanel"> 
    <h2>Panel Header</h2>
    <p>You can close the panel by clicking outside the panel, pressing the Esc key or by swiping.</p>
  </div> 

  <div data-role="header">
    <h1>Page Header</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Click on the button below to open the Panel.</p>
    <a href="#myPanel" class="ui-btn ui-btn-inline ui-corner-all ui-shadow">Open Panel</a>
  </div>

  <div data-role="footer">
    <h1>Page Footer</h1>
  </div> 
</div> 

</@layout.myLayout>