# WebSite1
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mondrian Project</title>
  <style>
    /* 
    Write your CSS here 
    Gap Colour: #000
    White: #F0F1EC
    Red: #E72F24
    Black: #232629
    Blue: #004592
    Yellow: #F9D01E

    For dimensions, see dimensions.png image.
    HINT: Remember you can't change the properties of grid lines.
    But grid lines are transparent!
    */
    .container{
      display:grid;
      grid-template-columns: 320px 198px 153px 50px;
      grid-template-rows: 414px 130px 155px 20px;
      gap:9px;
      background-color: black;
      width:748px;
    }
    .red{
      background-color:#E72F24;
    }
    .white1{
      background-color: #F0F1EC;
      grid-column: span 3;
    }
    .white2{
      background-color: #F0F1EC;
      grid-row:span 2;
    }
    .white3{
      background-color: #F0F1EC;
      grid-column: span 2;
      grid-row:span 2;
    }
    .blue{
      background-color: #004592;
    }
    .white4{
      background-color: #F0F1EC;
      margin-top:5px;
      grid-row: span 2;
    }
    .white5{
      background-color: #F0F1EC;
    }
    .yellow{
      background-color: #F9D01E;
    }
    .black{
      background-color: #232629;;
    }
  </style>
</head>

<body>
  <!-- Write your HTML here -->
   <div class="container">
      <div class="red"></div>
      <div class="white1"></div>
      <div class="white2"></div>
      <div class="white3"></div>
      <div class="blue"></div>
      <div class="white4"></div>
      <div class="white5"></div>
      <div class="yellow"></div>
      <div class="black"></div>
   </div>
</body>

</html>
