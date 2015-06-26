<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Radio Buttons</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <fieldset data-role="controlgroup">
      <legend>Choose your gender:</legend>
        <label for="male">Male</label>
        <input type="radio" name="gender" id="male" value="male">
        <label for="female">Female</label>
        <input type="radio" name="gender" id="female" value="female">	
      </fieldset>
        <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>


</@layout.myLayout>