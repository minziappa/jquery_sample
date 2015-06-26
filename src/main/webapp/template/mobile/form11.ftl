<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Search input</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <div class="ui-field-contain">
        <label for="search">Search:</label>
        <input type="search" name="search" id="search" placeholder="Search for content...">
      </div>
      <input type="submit" data-inline="true" value="Submit">
    </form> 
  </div>
</div>


</@layout.myLayout>