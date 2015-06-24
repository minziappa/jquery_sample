<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
    <div data-role="navbar">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Page Two</a></li>
        <li><a href="#">Search</a></li>
      </ul>
    </div>
  </div>

  <div data-role="main" class="ui-content">
    <p>My Content..</p>
  </div>

  <div data-role="footer">
    <h1>My Footer</h1>
  </div>
</div> 

</@layout.myLayout>