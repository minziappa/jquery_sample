<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Grouped Buttons</h1>
  </div>

  <div data-role="main" class="ui-content">
    <div data-role="controlgroup" data-type="horizontal">
      <p>Horizontal group:</p>
      <a href="#" class="ui-btn">Button 1</a>
      <a href="#" class="ui-btn">Button 2</a>
      <a href="#" class="ui-btn">Button 3</a>
    </div><br>
    
    <div data-role="controlgroup" data-type="vertical">
      <p>Vertical group (default):</p>
      <a href="#" class="ui-btn">Button 1</a>
      <a href="#" class="ui-btn">Button 2</a>
      <a href="#" class="ui-btn">Button 3</a>
    </div>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div> 


</@layout.myLayout>