<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-home ui-btn-icon-left">Home</a>
    <h1>Welcome To My Homepage</h1>
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-search ui-btn-icon-left">Search</a>
  </div>

   <div data-role="main" class="ui-content">
    <p>Notice that we have added the CSS class of "ui-corner-all" and "ui-shadow" to the header buttons, to make them look a bit more desirable.</p>
  </div>
</div>

</@layout.myLayout>