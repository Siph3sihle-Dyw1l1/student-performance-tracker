/* 
 Created on : 14 Apr 2026, 10:46:32 PM
 Author     : S DYWILI 230654182
 */

// ============================================
// CHART.JS CONFIGURATION
// Creates beautiful animated charts for statistics
// ============================================

// Wait for page to load
document.addEventListener('DOMContentLoaded', function () {

    // Helper function to safely get element value
    function getElementValue(elementId, defaultValue) {
        var element = document.getElementById(elementId);
        if (element && element.value) {
            return element.value;
        }
        return defaultValue;
    }

    // Get data from the JSP-hidden elements
    var totalStud = parseInt(getElementValue('totalStudData', 0));
    var cntAllStudPassed = parseInt(getElementValue('cntAllStudPassedData', 0));
    var cntAllStudFailed = parseInt(getElementValue('cntAllStudFailedData', 0));
    var cntAllMaleStud = parseInt(getElementValue('cntAllMaleStudData', 0));
    var cntAllFemaleStud = parseInt(getElementValue('cntAllFemaleStudData', 0));
    var cntAllMaleStudPassed = parseInt(getElementValue('cntAllMaleStudPassedData', 0));
    var cntAllFemaleStudPassed = parseInt(getElementValue('cntAllFemaleStudPassedData', 0));
    var avgMark = parseFloat(getElementValue('avgMarkData', 0));

    // Chart 1: Pass vs Fail (Doughnut Chart)
    var canvas1 = document.getElementById('passFailChart');
    if (canvas1) {
        var ctx1 = canvas1.getContext('2d');
        if (ctx1) {
            new Chart(ctx1, {
                type: 'doughnut',
                data: {
                    labels: ['Passed', 'Failed'],
                    datasets: [{
                            data: [cntAllStudPassed, cntAllStudFailed],
                            backgroundColor: ['#10b981', '#ef4444'],
                            borderColor: ['#059669', '#dc2626'],
                            borderWidth: 2,
                            hoverOffset: 15
                        }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: '#f0f3fa',
                                font: {size: 14, family: 'Inter'}
                            }
                        },
                        title: {
                            display: true,
                            text: '📊 Pass vs Fail Distribution',
                            color: '#06b6d4',
                            font: {size: 18, weight: 'bold'}
                        },
                        tooltip: {
                            callbacks: {
                                label: function (context) {
                                    var total = cntAllStudPassed + cntAllStudFailed;
                                    var percentage = ((context.raw / total) * 100).toFixed(1);
                                    return context.label + ': ' + context.raw + ' students (' + percentage + '%)';
                                }
                            }
                        }
                    },
                    animation: {
                        animateScale: true,
                        animateRotate: true,
                        duration: 1500
                    }
                }
            });
        }
    }

    // Chart 2: Gender Distribution (Pie Chart)
    var canvas2 = document.getElementById('genderChart');
    if (canvas2) {
        var ctx2 = canvas2.getContext('2d');
        if (ctx2) {
            new Chart(ctx2, {
                type: 'pie',
                data: {
                    labels: ['Male', 'Female'],
                    datasets: [{
                            data: [cntAllMaleStud, cntAllFemaleStud],
                            backgroundColor: ['#8b5cf6', '#ec4899'],
                            borderColor: ['#7c3aed', '#db2777'],
                            borderWidth: 2,
                            hoverOffset: 15
                        }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'bottom',
                            labels: {
                                color: '#f0f3fa',
                                font: {size: 14, family: 'Inter'}
                            }
                        },
                        title: {
                            display: true,
                            text: '👥 Gender Distribution',
                            color: '#06b6d4',
                            font: {size: 18, weight: 'bold'}
                        }
                    },
                    animation: {
                        duration: 1500
                    }
                }
            });
        }
    }

    // Chart 3: Gender Performance (Bar Chart)
    var canvas3 = document.getElementById('genderPerformanceChart');
    if (canvas3) {
        var ctx3 = canvas3.getContext('2d');
        if (ctx3) {
            var maleFailed = cntAllMaleStud - cntAllMaleStudPassed;
            var femaleFailed = cntAllFemaleStud - cntAllFemaleStudPassed;

            new Chart(ctx3, {
                type: 'bar',
                data: {
                    labels: ['Male Students', 'Female Students'],
                    datasets: [
                        {
                            label: 'Passed',
                            data: [cntAllMaleStudPassed, cntAllFemaleStudPassed],
                            backgroundColor: '#10b981',
                            borderRadius: 8,
                            barPercentage: 0.7
                        },
                        {
                            label: 'Failed',
                            data: [maleFailed, femaleFailed],
                            backgroundColor: '#ef4444',
                            borderRadius: 8,
                            barPercentage: 0.7
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'top',
                            labels: {
                                color: '#f0f3fa',
                                font: {size: 12, family: 'Inter'}
                            }
                        },
                        title: {
                            display: true,
                            text: '📈 Performance by Gender',
                            color: '#06b6d4',
                            font: {size: 18, weight: 'bold'}
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: {color: 'rgba(6, 182, 212, 0.1)'},
                            ticks: {color: '#9ca3af', stepSize: 1}
                        },
                        x: {
                            grid: {display: false},
                            ticks: {color: '#f0f3fa', font: {weight: 'bold'}}
                        }
                    },
                    animation: {
                        duration: 1500,
                        easing: 'easeOutBounce'
                    }
                }
            });
        }
    }
});