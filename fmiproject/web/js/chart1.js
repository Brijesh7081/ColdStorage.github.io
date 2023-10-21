var ctx = document.getElementById('linechart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Jun', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
        datasets: [{
            label: 'Earnings in $',
            data: [2050,4900,2100,3800,6000,3000,6500,2450,4950,2900,3900,4509],
            backgroundColor: [
                'rgba(85,85,85,1)',
                
            ],
            borderColor: [
                'rgb(41,155,99)',
                
            ],
            borderWidth: 1
        }]
    },
    options: {
      responsive:true
    }
});