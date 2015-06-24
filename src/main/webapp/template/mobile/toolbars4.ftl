<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-home ui-btn-icon-left ">Home</a>
    <h1>Welcome To My Homepage</h1>
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-search ui-btn-icon-left ">Search</a>
  </div>

  <div data-role="main" class="ui-content">
    <p>The buttons are for demonstration purposes only, and will not have any effect.</p>
    <p>Notice that we have applied the CSS class of "ui-corner-all" and "ui-shadow" to the buttons in both the header and footer, to make them look more desirable.</p>
  </div>

  <div data-role="footer">
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">Add Me On Facebook</a>
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">Add Me On Twitter</a>
    <a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-plus ui-btn-icon-left">Add Me On Instagram</a>
  </div>
</div>

</@layout.myLayout>