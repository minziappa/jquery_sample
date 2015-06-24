<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Collapsible Blocks</h1>
  </div>

  <div data-role="main" class="ui-content">
    <div data-role="collapsible">
      <h1>Click me - I'm collapsible!</h1>
      <p>I'm the expanded content.</p>
    </div>
  </div>

  <div data-role="footer">
    <h1>Insert Footer Text Here</h1>
  </div>
</div> 

</@layout.myLayout>