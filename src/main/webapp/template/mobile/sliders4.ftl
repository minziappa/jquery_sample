<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
    <h1>Slider Control</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="points">Points:</label>
      <input type="range" name="points" id="points" value="50" min="0" max="100" data-highlight="true">
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</@layout.myLayout>