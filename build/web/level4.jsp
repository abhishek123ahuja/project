<!DOCTYPE html>
<html>
<head>
    <link rel=stylesheet href="level.css">
    
</head>
<BODY onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">   
              <SCRIPT type="text/javascript">
            window.history.forward();
            function noBack() { window.history.forward(); }
         </SCRIPT>

<h1> CHOOSE LEVEL </h1>
    
<!--********************************************************************************-->
<section class="sec">
<div class="e" onclick="location.href='android_quiz1.jsp'">
  <input type="radio" id="control_01" name="select" value="1" checked>
  <label for="control_01" style="cursor: pointer;">
    <h2>EASY</h2>
  </label>
</div>
<div class="e" onclick="location.href='android_quiz2.jsp'">
  <input type="radio" id="control_02" name="select" value="2">
  <label for="control_02" style="cursor: pointer;">
    <h2>MEDIUM</h2>
  </label>
</div>
<div class="e" onclick="location.href='android_quiz3.jsp'">
  <input type="radio" id="control_03" name="select" value="3">
  <label for="control_03" style="cursor: pointer;">
    <h2>HARD</h2>
  </label>
</div>
</section>
    
<!--*********************************************************************-->

</body>
</html>