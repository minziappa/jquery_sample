<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Buttons</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Welcome!</p>
    <a href="#pagetwo" class="ui-btn">Go to Page Two</a>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 

<div data-role="page" id="pagetwo">
  <div data-role="header">
    <h1>Buttons</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Goodbye!</p>
    <a href="#pageone" class="ui-btn">Go to Page One</a>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 


</@layout.myLayout>