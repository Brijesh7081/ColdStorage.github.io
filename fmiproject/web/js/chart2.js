var ctx = document.getElementById('doughnut').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ['Space', 'Booked', 'Employees','Earning','Envestment','Others'],
        datasets: [{
            label: 'Employees',
            data: [42, 19, 8, 15,10,6],
            backgroundColor: [
                'rgba(41,155,99,1)',
                'rgba(54,162,235,1)',
                'rgba(255,206,86,1)',
                'rgba(120,46,139,1)',
                'rgba(210,105,239,90)',
                'rgba(253,46,13,1)',
            ],
            borderColor: [
                'rgba(41,155,99,1)',
                'rgba(54,162,235,1)',
                'rgba(255,206,86,1)',
                'rgba(120,46,139,1)',
                'rgba(210,105,239,90)',
                'rgba(253,46,13,1)',
            ],
            borderheight: 5
        }]
    },
    options: {
      responsive:true
    }
});