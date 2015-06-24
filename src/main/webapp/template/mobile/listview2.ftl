<#import "../layout/mobileLayout.ftl" as layout>
<@layout.myLayout>

<script type="text/javascript">

</script>

<form>
    <label for="textinput-s">Text Input:</label>
    <input type="text" name="textinput-s" id="textinput-s" placeholder="Text input" value="" data-clear-btn="true">
    <label for="select-native-s">Select:</label>
    <select name="select-native-s" id="select-native-s">
        <option value="small">One</option>
        <option value="medium">Two</option>
        <option value="large">Three</option>
    </select>
    <label for="slider-s">Input slider:</label>
    <input type="range" name="slider-s" id="slider-s" value="25" min="0" max="100" data-highlight="true">
</form>

</@layout.myLayout>