<head>
    <script src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Preguntas', 'Puntuación'],
                ['¿Las charlas donde usted participó cumplieron con sus expectativas?', ${first}],
                ['¿Los expositores mostraron tener dominio del tema?', ${second}],
                ['¿Las instalaciones del evento fueron confortables para usted?', ${third}]
            ]);
            var options = {
                title: 'Resultados encuesta BarCamp',
                chartArea: {width: '50%', height: "300%"},
                hAxis: {
                title: 'Puntuación General',
                minValue: 0
                },
                vAxis: {
                title: 'Preguntas'
                }
            };
            var chart = new google.visualization.BarChart(document.getElementById('chart'));
            chart.draw(data, options);
        }
    </script>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body class="bg-light">
<div class="mt-5 mx-2" id="chart"/>
</body>