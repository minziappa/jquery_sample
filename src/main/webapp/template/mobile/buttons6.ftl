<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Normal / Default button:</p>
    <a href="#pagetwo" class="ui-btn">Go to Page Two</a>
    <p>Inline button:</p>
    <a href="#pagetwo" class="ui-btn ui-btn-inline">Go to Page Two</a>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

<div data-role="page" id="pagetwo">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Inline buttons (will appear side by side as long as the screen lets it):</p>
    <a href="#pageone" class="ui-btn ui-btn-inline">Go to Page One</a>
    <a href="#pageone" class="ui-btn ui-btn-inline">Go to Page One</a>
    <a href="#pageone" class="ui-btn ui-btn-inline">Go to Page One</a>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 


</@layout.myLayout>