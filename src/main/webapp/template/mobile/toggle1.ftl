<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <label for="switch">Flip Toggle Switch:</label>
        <input type="checkbox" data-role="flipswitch" name="switch" id="switch">
        <br>
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</@layout.myLayout>