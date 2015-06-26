<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<div data-role="page">
  <div data-role="header">
  <h1>Radio Buttons and Checkboxes</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="demoform.asp">
      <fieldset data-role="controlgroup" data-type="horizontal">
      <legend>Choose your gender:</legend>
        <label for="male">Male</label>
        <input type="radio" name="gender" id="male" value="male">
        <label for="female">Female</label>
        <input type="radio" name="gender" id="female" value="female">	
      </fieldset>

      <fieldset data-role="controlgroup" data-type="horizontal">
        <legend>Choose as many favorite colors as you'd like:</legend>
          <label for="red">Red</label>
          <input type="checkbox" name="favcolor" id="red" value="red">
          <label for="green">Green</label>
          <input type="checkbox" name="favcolor" id="green" value="green">
          <label for="blue">Blue</label>
          <input type="checkbox" name="favcolor" id="blue" value="blue">	
      </fieldset>
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</@layout.myLayout>