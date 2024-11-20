<?php


function fetchWindows() {
    $conn = new Mysqli("localhost", "root", "", "sigmaokna");
    $result = $conn->query("SELECT * FROM windows");
    $result = $result->fetch_all(MYSQLI_ASSOC);
    return $result;
}

function fetchBorders() {
    $conn = new Mysqli("localhost", "root", "", "sigmaokna");
    $result = $conn->query("SELECT * FROM borders");
    $result = $result->fetch_all(MYSQLI_ASSOC);
    return $result;
}

function windowSelect($array) {
    echo "<select id='window_type'>";
    foreach($array as $value) {
        echo "<option value='". $value["Window_Price"]. "'>". $value["Window_Name"]. "</option>";
    }
    echo "</select>";
}

function borderSelect($array) {
    echo "<select id='border_type'>";
    foreach($array as $value) {
        echo "<option value='". $value["Border_Price"]. "'>". $value["Border_Name"]. "</option>";
    }
    echo "</select>";
}
?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="main">
        <div class="left">
            <label for="width">Szerokość (cm):</label>
            <input type="number" id="width" required><br>

            <label for="height">Wysokość (cm):</label>
            <input type="number" id="height" required><br>
            <?php
                echo "<label>Rodzaj szyb:</label>";
                windowSelect(fetchWindows());
                echo "<br>";
                echo "<label>Rodzaj obramowania:</label>";
                borderSelect(fetchBorders());
            ?>
            </div>
        <div class="right">
            <div id="result"></div>
        </div>
    </div>

    <script>
        function calculate() {
            let width = parseInt(document.getElementById("width").value);
            let height = parseInt(document.getElementById("height").value);
            let border = parseInt(document.getElementById("border_type").value);
            let window = parseInt(document.getElementById("window_type").value);

            if(!(width > 0 && height > 0)) {
                document.getElementById("result").innerHTML = "";
                return;
            }

            let pole = (width / 100) * (height / 100);
            let border_price = ((width*2 + height*2) / 100) * border;
            let window_price = pole * window;

            let final_price = border_price + window_price;

            document.getElementById("result").innerHTML = Math.floor(final_price*100)/100;
            document.getElementById("result").innerHTML += " zł";
        }

        document.getElementById("width").addEventListener("input", () => calculate());
        document.getElementById("height").addEventListener("input", () => calculate());
        document.getElementById("window_type").addEventListener("input", () => calculate());
        document.getElementById("border_type").addEventListener("input", () => calculate());
    </script>
</body>
</html>