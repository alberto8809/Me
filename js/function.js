function graf() {
    
var id=document.getElementById('content2');
Highcharts.chart(id, {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Usuarios'
    },
    xAxis: {
        categories: ['Manuel', 'Ricardo', 'Mario', 'Jair', 'Luis']
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Total'
        }
    },
    legend: {
        enabled: false
        
    },
    tooltip: {
        pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
        shared: true
    },
    plotOptions: {
        column: {
            stacking: 'percent'
        }
    },
    series: [{
        name: 'Manuel',
        data: [5, 3, 4, 7, 2]
    }, {
        name: 'Ricardo',
        data: [2, 2, 3, 2, 1]
    }, {
        name: 'Mario',
        data: [3, 4, 4, 2, 5]
    }]
});



Highcharts.chart('container2', {
       chart: {
        plotBackgroundColor: null,
        plotBorderWidth: 0,
        plotShadow: false
    },
    title: {
        text: 'Alumnos<br>2011-2007',
        align: 'center',
        verticalAlign: 'middle',
        y: 80
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            dataLabels: {
                enabled: true,
                distance: -50,
                style: {
                    fontWeight: 'bold',
                    color: 'white'
                }
            },
            startAngle: -90,
            endAngle: 90,
            center: ['50%', '75%']
        }
    },
    series: [{
        type: 'pie',
        name: 'Alumnos',
        innerSize: '50%',
        data: [
            ['Matricula 2011',   10.38],
            ['Matricula 2010',       56.33],
            ['Matricula 2009', 24.03],
            ['Matricula 2008',    4.77],
            ['Matricula 2007',     10.91],
            {
                name: 'Proprietary or Undetectable',
                y: 0.2,
                dataLabels: {
                    enabled: false
                }
            }
        ]
    }]
});

}