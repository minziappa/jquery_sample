<!DOCTYPE html>
<html>
<body>   

<select id="car" onchange="ChangeCarList()"> 
  <option value="">-- Car --</option> 
  <option value="VO">Volvo</option> 
  <option value="VW">Volkswagen</option> 
  <option value="BMW">BMW</option> 
</select> 

<select id="carmodel"></select> 

<script>
var carsAndModels = {};
carsAndModels['VO'] = ['V70', 'XC60', 'XC90'];
carsAndModels['VW'] = ['Golf', 'Polo', 'Scirocco', 'Touareg'];
carsAndModels['BMW'] = ['M6', 'X5', 'Z3'];

function ChangeCarList() {
    var carList = document.getElementById("car");
    var modelList = document.getElementById("carmodel");
    var selCar = carList.options[carList.selectedIndex].value;
    while (modelList.options.length) {
        modelList.remove(0);
    }
    var cars = carsAndModels[selCar];
    if (cars) {
        var i;
        for (i = 0; i < cars.length; i++) {
            var car = new Option(cars[i], i);
            modelList.options.add(car);
        }
    }
} 
</script>

</body>
</html>