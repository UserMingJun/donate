
(function ($) {
  // USE STRICT
  "use strict";



  try {
    //WidgetChart 1
    var ctx = document.getElementById("widgetChart1");
    if (ctx) {
      ctx.height = 130;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
          type: 'line',
          datasets: [{
            data: [78, 81, 80, 45, 34, 12, 40],
            label: 'Dataset',
            backgroundColor: 'rgba(255,255,255,.1)',
            borderColor: 'rgba(255,255,255,.55)',
          },]
        },
        options: {
          maintainAspectRatio: true,
          legend: {
            display: false
          },
          layout: {
            padding: {
              left: 0,
              right: 0,
              top: 0,
              bottom: 0
            }
          },
          responsive: true,
          scales: {
            xAxes: [{
              gridLines: {
                color: 'transparent',
                zeroLineColor: 'transparent'
              },
              ticks: {
                fontSize: 2,
                fontColor: 'transparent'
              }
            }],
            yAxes: [{
              display: false,
              ticks: {
                display: false,
              }
            }]
          },
          title: {
            display: false,
          },
          elements: {
            line: {
              borderWidth: 0
            },
            point: {
              radius: 0,
              hitRadius: 10,
              hoverRadius: 4
            }
          }
        }
      });
    }


    //WidgetChart 2
    var ctx = document.getElementById("widgetChart2");
    if (ctx) {
      ctx.height = 130;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June'],
          type: 'line',
          datasets: [{
            data: [1, 18, 9, 17, 34, 22],
            label: 'Dataset',
            backgroundColor: 'transparent',
            borderColor: 'rgba(255,255,255,.55)',
          },]
        },
        options: {

          maintainAspectRatio: false,
          legend: {
            display: false
          },
          responsive: true,
          tooltips: {
            mode: 'index',
            titleFontSize: 12,
            titleFontColor: '#000',
            bodyFontColor: '#000',
            backgroundColor: '#fff',
            titleFontFamily: 'Montserrat',
            bodyFontFamily: 'Montserrat',
            cornerRadius: 3,
            intersect: false,
          },
          scales: {
            xAxes: [{
              gridLines: {
                color: 'transparent',
                zeroLineColor: 'transparent'
              },
              ticks: {
                fontSize: 2,
                fontColor: 'transparent'
              }
            }],
            yAxes: [{
              display: false,
              ticks: {
                display: false,
              }
            }]
          },
          title: {
            display: false,
          },
          elements: {
            line: {
              tension: 0.00001,
              borderWidth: 1
            },
            point: {
              radius: 4,
              hitRadius: 10,
              hoverRadius: 4
            }
          }
        }
      });
    }


    //WidgetChart 3
    var ctx = document.getElementById("widgetChart3");
    if (ctx) {
      ctx.height = 130;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June'],
          type: 'line',
          datasets: [{
            data: [65, 59, 84, 84, 51, 55],
            label: 'Dataset',
            backgroundColor: 'transparent',
            borderColor: 'rgba(255,255,255,.55)',
          },]
        },
        options: {

          maintainAspectRatio: false,
          legend: {
            display: false
          },
          responsive: true,
          tooltips: {
            mode: 'index',
            titleFontSize: 12,
            titleFontColor: '#000',
            bodyFontColor: '#000',
            backgroundColor: '#fff',
            titleFontFamily: 'Montserrat',
            bodyFontFamily: 'Montserrat',
            cornerRadius: 3,
            intersect: false,
          },
          scales: {
            xAxes: [{
              gridLines: {
                color: 'transparent',
                zeroLineColor: 'transparent'
              },
              ticks: {
                fontSize: 2,
                fontColor: 'transparent'
              }
            }],
            yAxes: [{
              display: false,
              ticks: {
                display: false,
              }
            }]
          },
          title: {
            display: false,
          },
          elements: {
            line: {
              borderWidth: 1
            },
            point: {
              radius: 4,
              hitRadius: 10,
              hoverRadius: 4
            }
          }
        }
      });
    }


    //WidgetChart 4
    var ctx = document.getElementById("widgetChart4");
    if (ctx) {
      ctx.height = 115;
      var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          datasets: [
            {
              label: "My First dataset",
              data: [78, 81, 80, 65, 58, 75, 60, 75, 65, 60, 60, 75],
              borderColor: "transparent",
              borderWidth: "0",
              backgroundColor: "rgba(255,255,255,.3)"
            }
          ]
        },
        options: {
          maintainAspectRatio: true,
          legend: {
            display: false
          },
          scales: {
            xAxes: [{
              display: false,
              categoryPercentage: 1,
              barPercentage: 0.65
            }],
            yAxes: [{
              display: false
            }]
          }
        }
      });
    }

    // Recent Report
    const brandProduct = 'rgba(0,181,233,0.8)'
    const brandService = 'rgba(0,173,95,0.8)'

    var elements = 10
    var data1 = [52, 60, 55, 50, 65, 80, 57, 70, 105, 115]
    var data2 = [102, 70, 80, 100, 56, 53, 80, 75, 65, 90]

    var ctx = document.getElementById("recent-rep-chart");
    if (ctx) {
      ctx.height = 250;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', ''],
          datasets: [
            {
              label: 'My First dataset',
              backgroundColor: brandService,
              borderColor: 'transparent',
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data1

            },
            {
              label: 'My Second dataset',
              backgroundColor: brandProduct,
              borderColor: 'transparent',
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data2

            }
          ]
        },
        options: {
          maintainAspectRatio: true,
          legend: {
            display: false
          },
          responsive: true,
          scales: {
            xAxes: [{
              gridLines: {
                drawOnChartArea: true,
                color: '#f2f2f2'
              },
              ticks: {
                fontFamily: "Poppins",
                fontSize: 12
              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                maxTicksLimit: 5,
                stepSize: 50,
                max: 150,
                fontFamily: "Poppins",
                fontSize: 12
              },
              gridLines: {
                display: true,
                color: '#f2f2f2'

              }
            }]
          },
          elements: {
            point: {
              radius: 0,
              hitRadius: 10,
              hoverRadius: 4,
              hoverBorderWidth: 3
            }
          }


        }
      });
    }

    // Percent Chart
    var ctx = document.getElementById("percent-chart");
    if (ctx) {
      ctx.height = 280;
      var myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [
            {
              label: "My First dataset",
              data: [60, 40],
              backgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              hoverBackgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              borderWidth: [
                0, 0
              ],
              hoverBorderColor: [
                'transparent',
                'transparent'
              ]
            }
          ],
          labels: [
            'Products',
            'Services'
          ]
        },
        options: {
          maintainAspectRatio: false,
          responsive: true,
          cutoutPercentage: 55,
          animation: {
            animateScale: true,
            animateRotate: true
          },
          legend: {
            display: false
          },
          tooltips: {
            titleFontFamily: "Poppins",
            xPadding: 15,
            yPadding: 10,
            caretPadding: 0,
            bodyFontSize: 16
          }
        }
      });
    }

  } catch (error) {
    console.log(error);
  }



  try {

    // Recent Report 2
    const bd_brandProduct2 = 'rgba(0,181,233,0.9)'
    const bd_brandService2 = 'rgba(0,173,95,0.9)'
    const brandProduct2 = 'rgba(0,181,233,0.2)'
    const brandService2 = 'rgba(0,173,95,0.2)'

    var data3 = [52, 60, 55, 50, 65, 80, 57, 70, 105, 115]
    var data4 = [102, 70, 80, 100, 56, 53, 80, 75, 65, 90]

    var ctx = document.getElementById("recent-rep2-chart");
    if (ctx) {
      ctx.height = 230;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', ''],
          datasets: [
            {
              label: 'My First dataset',
              backgroundColor: brandService2,
              borderColor: bd_brandService2,
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data3

            },
            {
              label: 'My Second dataset',
              backgroundColor: brandProduct2,
              borderColor: bd_brandProduct2,
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data4

            }
          ]
        },
        options: {
          maintainAspectRatio: true,
          legend: {
            display: false
          },
          responsive: true,
          scales: {
            xAxes: [{
              gridLines: {
                drawOnChartArea: true,
                color: '#f2f2f2'
              },
              ticks: {
                fontFamily: "Poppins",
                fontSize: 12
              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                maxTicksLimit: 5,
                stepSize: 50,
                max: 150,
                fontFamily: "Poppins",
                fontSize: 12
              },
              gridLines: {
                display: true,
                color: '#f2f2f2'

              }
            }]
          },
          elements: {
            point: {
              radius: 0,
              hitRadius: 10,
              hoverRadius: 4,
              hoverBorderWidth: 3
            },
            line: {
              tension: 0
            }
          }


        }
      });
    }

  } catch (error) {
    console.log(error);
  }


  try {

    // Recent Report 3
    const bd_brandProduct3 = 'rgba(0,181,233,0.9)';
    const bd_brandService3 = 'rgba(0,173,95,0.9)';
    const brandProduct3 = 'transparent';
    const brandService3 = 'transparent';

    var data5 = [52, 60, 55, 50, 65, 80, 57, 115];
    var data6 = [102, 70, 80, 100, 56, 53, 80, 90];

    var ctx = document.getElementById("recent-rep3-chart");
    if (ctx) {
      ctx.height = 230;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', ''],
          datasets: [
            {
              label: 'My First dataset',
              backgroundColor: brandService3,
              borderColor: bd_brandService3,
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data5,
              pointBackgroundColor: bd_brandService3
            },
            {
              label: 'My Second dataset',
              backgroundColor: brandProduct3,
              borderColor: bd_brandProduct3,
              pointHoverBackgroundColor: '#fff',
              borderWidth: 0,
              data: data6,
              pointBackgroundColor: bd_brandProduct3

            }
          ]
        },
        options: {
          maintainAspectRatio: false,
          legend: {
            display: false
          },
          responsive: true,
          scales: {
            xAxes: [{
              gridLines: {
                drawOnChartArea: true,
                color: '#f2f2f2'
              },
              ticks: {
                fontFamily: "Poppins",
                fontSize: 12
              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                maxTicksLimit: 5,
                stepSize: 50,
                max: 150,
                fontFamily: "Poppins",
                fontSize: 12
              },
              gridLines: {
                display: false,
                color: '#f2f2f2'
              }
            }]
          },
          elements: {
            point: {
              radius: 3,
              hoverRadius: 4,
              hoverBorderWidth: 3,
              backgroundColor: '#333'
            }
          }


        }
      });
    }

  } catch (error) {
    console.log(error);
  }

  try {
    //WidgetChart 5
    var ctx = document.getElementById("widgetChart5");
    if (ctx) {
      ctx.height = 220;
      var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          datasets: [
            {
              label: "My First dataset",
              data: [78, 81, 80, 64, 65, 80, 70, 75, 67, 85, 66, 68],
              borderColor: "transparent",
              borderWidth: "0",
              backgroundColor: "#ccc",
            }
          ]
        },
        options: {
          maintainAspectRatio: true,
          legend: {
            display: false
          },
          scales: {
            xAxes: [{
              display: false,
              categoryPercentage: 1,
              barPercentage: 0.65
            }],
            yAxes: [{
              display: false
            }]
          }
        }
      });
    }

  } catch (error) {
    console.log(error);
  }

  try {

    // Percent Chart 2
    var ctx = document.getElementById("percent-chart2");
    if (ctx) {
      ctx.height = 209;
      var myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [
            {
              label: "My First dataset",
              data: [60, 40],
              backgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              hoverBackgroundColor: [
                '#00b5e9',
                '#fa4251'
              ],
              borderWidth: [
                0, 0
              ],
              hoverBorderColor: [
                'transparent',
                'transparent'
              ]
            }
          ],
          labels: [
            'Products',
            'Services'
          ]
        },
        options: {
          maintainAspectRatio: false,
          responsive: true,
          cutoutPercentage: 87,
          animation: {
            animateScale: true,
            animateRotate: true
          },
          legend: {
            display: false,
            position: 'bottom',
            labels: {
              fontSize: 14,
              fontFamily: "Poppins,sans-serif"
            }

          },
          tooltips: {
            titleFontFamily: "Poppins",
            xPadding: 15,
            yPadding: 10,
            caretPadding: 0,
            bodyFontSize: 16,
          }
        }
      });
    }

  } catch (error) {
    console.log(error);
  }


    $.getJSON("/manage/chart_data",function(res){
        console.log(res);
        var clothes_sum_2017 = res.clothesYearSum[0];
        var clothes_sum_2018 = res.clothesYearSum[1];
        var clothes_sum_2019 = res.clothesYearSum[2];
        var clothes_sum_2020 = res.clothesYearSum[3];

        var book_sum_2017 = res.bookYearSum[0];
        var book_sum_2018 = res.bookYearSum[1];
        var book_sum_2019 = res.bookYearSum[2];
        var book_sum_2020 = res.bookYearSum[3];

        var user_sum_2017 = res.userYearSum[0];
        var user_sum_2018 = res.userYearSum[1];
        var user_sum_2019 = res.userYearSum[2];
        var user_sum_2020 = res.userYearSum[3];

        try {
            //Sales chart


            var ctx = document.getElementById("sales-chart");
            if (ctx) {

                ctx.height = 150;
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ["2017", "2018", "2019", "2020"],
                        type: 'line',
                        defaultFontFamily: 'Poppins',
                        datasets: [{
                            label: "衣物",
                            data: [clothes_sum_2017, clothes_sum_2018, clothes_sum_2019, clothes_sum_2020],
                            backgroundColor: 'transparent',
                            borderColor: 'rgba(220,53,69,0.75)',
                            borderWidth: 3,
                            pointStyle: 'circle',
                            pointRadius: 5,
                            pointBorderColor: 'transparent',
                            pointBackgroundColor: 'rgba(220,53,69,0.75)',
                        }, {
                            label: "书籍",
                            data: [book_sum_2017, book_sum_2018, book_sum_2019, book_sum_2020],
                            backgroundColor: 'transparent',
                            borderColor: 'rgba(40,167,69,0.75)',
                            borderWidth: 3,
                            pointStyle: 'circle',
                            pointRadius: 5,
                            pointBorderColor: 'transparent',
                            pointBackgroundColor: 'rgba(40,167,69,0.75)',
                        }]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            titleFontSize: 12,
                            titleFontColor: '#000',
                            bodyFontColor: '#000',
                            backgroundColor: '#fff',
                            titleFontFamily: 'Poppins',
                            bodyFontFamily: 'Poppins',
                            cornerRadius: 3,
                            intersect: false,
                        },
                        legend: {
                            display: false,
                            labels: {
                                usePointStyle: true,
                                fontFamily: 'Poppins',
                            },
                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                scaleLabel: {
                                    display: false,
                                    labelString: 'Month'
                                },
                                ticks: {
                                    fontFamily: "Poppins"
                                }
                            }],
                            yAxes: [{
                                display: true,
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: '件',
                                    fontFamily: "Poppins"

                                },
                                ticks: {
                                    fontFamily: "Poppins"
                                }
                            }]
                        },
                        title: {
                            display: false,
                            text: 'Normal Legend'
                        }
                    }
                });
            }


        } catch (error) {
            console.log(error);
        }

        try {

            //Team chart
            var ctx = document.getElementById("team-chart");
            if (ctx) {
                ctx.height = 150;
                var myChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ["2017", "2018", "2019", "2020"],
                        type: 'line',
                        defaultFontFamily: 'Poppins',
                        datasets: [{
                            data: [user_sum_2017, user_sum_2018, user_sum_2019, user_sum_2020],
                            label: "Expense",
                            backgroundColor: 'rgba(0,103,255,.15)',
                            borderColor: 'rgba(0,103,255,0.5)',
                            borderWidth: 3.5,
                            pointStyle: 'circle',
                            pointRadius: 5,
                            pointBorderColor: 'transparent',
                            pointBackgroundColor: 'rgba(0,103,255,0.5)',
                        },]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            titleFontSize: 12,
                            titleFontColor: '#000',
                            bodyFontColor: '#000',
                            backgroundColor: '#fff',
                            titleFontFamily: 'Poppins',
                            bodyFontFamily: 'Poppins',
                            cornerRadius: 3,
                            intersect: false,
                        },
                        legend: {
                            display: false,
                            position: 'top',
                            labels: {
                                usePointStyle: true,
                                fontFamily: 'Poppins',
                            },


                        },
                        scales: {
                            xAxes: [{
                                display: true,
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                scaleLabel: {
                                    display: false,
                                    labelString: 'Month'
                                },
                                ticks: {
                                    fontFamily: "Poppins"
                                }
                            }],
                            yAxes: [{
                                display: true,
                                gridLines: {
                                    display: false,
                                    drawBorder: false
                                },
                                scaleLabel: {
                                    display: true,
                                    labelString: '人',
                                    fontFamily: "Poppins"
                                },
                                ticks: {
                                    fontFamily: "Poppins"
                                }
                            }]
                        },
                        title: {
                            display: false,
                        }
                    }
                });
            }


        } catch (error) {
            console.log(error);
        }


    });





  try {
    //bar chart
    var ctx = document.getElementById("barChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'bar',
        defaultFontFamily: 'Poppins',
        data: {
          labels: ["January", "February", "March", "April", "May", "June", "July"],
          datasets: [
            {
              label: "My First dataset",
              data: [65, 59, 80, 81, 56, 55, 40],
              borderColor: "rgba(0, 123, 255, 0.9)",
              borderWidth: "0",
              backgroundColor: "rgba(0, 123, 255, 0.5)",
              fontFamily: "Poppins"
            },
            {
              label: "My Second dataset",
              data: [28, 48, 40, 19, 86, 27, 90],
              borderColor: "rgba(0,0,0,0.09)",
              borderWidth: "0",
              backgroundColor: "rgba(0,0,0,0.07)",
              fontFamily: "Poppins"
            }
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          scales: {
            xAxes: [{
              ticks: {
                fontFamily: "Poppins"

              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins"
              }
            }]
          }
        }
      });
    }


  } catch (error) {
    console.log(error);
  }

  try {

    //radar chart
    var ctx = document.getElementById("radarChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'radar',
        data: {
          labels: [["Eating", "Dinner"], ["Drinking", "Water"], "Sleeping", ["Designing", "Graphics"], "Coding", "Cycling", "Running"],
          defaultFontFamily: 'Poppins',
          datasets: [
            {
              label: "My First dataset",
              data: [65, 59, 66, 45, 56, 55, 40],
              borderColor: "rgba(0, 123, 255, 0.6)",
              borderWidth: "1",
              backgroundColor: "rgba(0, 123, 255, 0.4)"
            },
            {
              label: "My Second dataset",
              data: [28, 12, 40, 19, 63, 27, 87],
              borderColor: "rgba(0, 123, 255, 0.7",
              borderWidth: "1",
              backgroundColor: "rgba(0, 123, 255, 0.5)"
            }
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          scale: {
            ticks: {
              beginAtZero: true,
              fontFamily: "Poppins"
            }
          }
        }
      });
    }

  } catch (error) {
    console.log(error)
  }

  try {

    //line chart
    var ctx = document.getElementById("lineChart");
    if (ctx) {
      ctx.height = 150;
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["January", "February", "March", "April", "May", "June", "July"],
          defaultFontFamily: "Poppins",
          datasets: [
            {
              label: "My First dataset",
              borderColor: "rgba(0,0,0,.09)",
              borderWidth: "1",
              backgroundColor: "rgba(0,0,0,.07)",
              data: [22, 44, 67, 43, 76, 45, 12]
            },
            {
              label: "My Second dataset",
              borderColor: "rgba(0, 123, 255, 0.9)",
              borderWidth: "1",
              backgroundColor: "rgba(0, 123, 255, 0.5)",
              pointHighlightStroke: "rgba(26,179,148,1)",
              data: [16, 32, 18, 26, 42, 33, 44]
            }
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          responsive: true,
          tooltips: {
            mode: 'index',
            intersect: false
          },
          hover: {
            mode: 'nearest',
            intersect: true
          },
          scales: {
            xAxes: [{
              ticks: {
                fontFamily: "Poppins"

              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins"
              }
            }]
          }

        }
      });
    }


  } catch (error) {
    console.log(error);
  }


  try {

    //doughut chart
    var ctx = document.getElementById("doughutChart");
    if (ctx) {
      ctx.height = 150;
      var myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [{
            data: [45, 25, 20, 10],
            backgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0, 123, 255,0.5)",
              "rgba(0,0,0,0.07)"
            ],
            hoverBackgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0, 123, 255,0.5)",
              "rgba(0,0,0,0.07)"
            ]

          }],
          labels: [
            "Green",
            "Green",
            "Green",
            "Green"
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          responsive: true
        }
      });
    }


  } catch (error) {
    console.log(error);
  }


  try {

    //pie chart
    var ctx = document.getElementById("pieChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
          datasets: [{
            data: [45, 25, 20, 10],
            backgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0, 123, 255,0.5)",
              "rgba(0,0,0,0.07)"
            ],
            hoverBackgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0, 123, 255,0.5)",
              "rgba(0,0,0,0.07)"
            ]

          }],
          labels: [
            "Green",
            "Green",
            "Green"
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          responsive: true
        }
      });
    }


  } catch (error) {
    console.log(error);
  }

  try {

    // polar chart
    var ctx = document.getElementById("polarChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'polarArea',
        data: {
          datasets: [{
            data: [15, 18, 9, 6, 19],
            backgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.8)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0,0,0,0.2)",
              "rgba(0, 123, 255,0.5)"
            ]

          }],
          labels: [
            "Green",
            "Green",
            "Green",
            "Green"
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          responsive: true
        }
      });
    }

  } catch (error) {
    console.log(error);
  }

  try {

    // single bar chart
    var ctx = document.getElementById("singelBarChart");
    if (ctx) {
      ctx.height = 150;
      var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: ["Sun", "Mon", "Tu", "Wed", "Th", "Fri", "Sat"],
          datasets: [
            {
              label: "My First dataset",
              data: [40, 55, 75, 81, 56, 55, 40],
              borderColor: "rgba(0, 123, 255, 0.9)",
              borderWidth: "0",
              backgroundColor: "rgba(0, 123, 255, 0.5)"
            }
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          scales: {
            xAxes: [{
              ticks: {
                fontFamily: "Poppins"

              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins"
              }
            }]
          }
        }
      });
    }

  } catch (error) {
    console.log(error);
  }

})(jQuery);



(function ($) {
    // USE STRICT
    "use strict";
    $(".animsition").animsition({
      inClass: 'fade-in',
      outClass: 'fade-out',
      inDuration: 900,
      outDuration: 900,
      linkElement: 'a:not([target="_blank"]):not([href^="#"]):not([class^="chosen-single"])',
      loading: true,
      loadingParentElement: 'html',
      loadingClass: 'page-loader',
      loadingInner: '<div class="page-loader__spin"></div>',
      timeout: false,
      timeoutCountdown: 5000,
      onLoadEvent: true,
      browser: ['animation-duration', '-webkit-animation-duration'],
      overlay: false,
      overlayClass: 'animsition-overlay-slide',
      overlayParentElement: 'html',
      transition: function (url) {
        window.location.href = url;
      }
    });
  
  
  })(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  // Map
  try {

    var vmap = $('#vmap');
    if(vmap[0]) {
      vmap.vectorMap( {
        map: 'world_en',
        backgroundColor: null,
        color: '#ffffff',
        hoverOpacity: 0.7,
        selectedColor: '#1de9b6',
        enableZoom: true,
        showTooltip: true,
        values: sample_data,
        scaleColors: [ '#1de9b6', '#03a9f5'],
        normalizeFunction: 'polynomial'
      });
    }

  } catch (error) {
    console.log(error);
  }

  // Europe Map
  try {
    
    var vmap1 = $('#vmap1');
    if(vmap1[0]) {
      vmap1.vectorMap( {
        map: 'europe_en',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        enableZoom: true,
        showTooltip: true
      });
    }

  } catch (error) {
    console.log(error);
  }

  // USA Map
  try {
    
    var vmap2 = $('#vmap2');

    if(vmap2[0]) {
      vmap2.vectorMap( {
        map: 'usa_en',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        enableZoom: true,
        showTooltip: true,
        selectedColor: null,
        hoverColor: null,
        colors: {
            mo: '#001BFF',
            fl: '#001BFF',
            or: '#001BFF'
        },
        onRegionClick: function ( event, code, region ) {
            event.preventDefault();
        }
      });
    }

  } catch (error) {
    console.log(error);
  }

  // Germany Map
  try {
    
    var vmap3 = $('#vmap3');
    if(vmap3[0]) {
      vmap3.vectorMap( {
        map: 'germany_en',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        onRegionClick: function ( element, code, region ) {
            var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();

            alert( message );
        }
      });
    }
    
  } catch (error) {
    console.log(error);
  }
  
  // France Map
  try {
    
    var vmap4 = $('#vmap4');
    if(vmap4[0]) {
      vmap4.vectorMap( {
        map: 'france_fr',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        enableZoom: true,
        showTooltip: true
      });
    }

  } catch (error) {
    console.log(error);
  }

  // Russia Map
  try {
    var vmap5 = $('#vmap5');
    if(vmap5[0]) {
      vmap5.vectorMap( {
        map: 'russia_en',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        hoverOpacity: 0.7,
        selectedColor: '#999999',
        enableZoom: true,
        showTooltip: true,
        scaleColors: [ '#C8EEFF', '#006491' ],
        normalizeFunction: 'polynomial'
      });
    }


  } catch (error) {
    console.log(error);
  }
  
  // Brazil Map
  try {
    
    var vmap6 = $('#vmap6');
    if(vmap6[0]) {
      vmap6.vectorMap( {
        map: 'brazil_br',
        color: '#007BFF',
        borderColor: '#fff',
        backgroundColor: '#fff',
        onRegionClick: function ( element, code, region ) {
            var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
            alert( message );
        }
      });
    }

  } catch (error) {
    console.log(error);
  }
})(jQuery);
(function ($) {
  // Use Strict
  "use strict";
  try {
    var progressbarSimple = $('.js-progressbar-simple');
    progressbarSimple.each(function () {
      var that = $(this);
      var executed = false;
      $(window).on('load', function () {

        that.waypoint(function () {
          if (!executed) {
            executed = true;
            /*progress bar*/
            that.progressbar({
              update: function (current_percentage, $this) {
                $this.find('.js-value').html(current_percentage + '%');
              }
            });
          }
        }, {
            offset: 'bottom-in-view'
          });

      });
    });
  } catch (err) {
    console.log(err);
  }
})(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  // Scroll Bar
  try {
    var jscr1 = $('.js-scrollbar1');
    if(jscr1[0]) {
      const ps1 = new PerfectScrollbar('.js-scrollbar1');      
    }

    var jscr2 = $('.js-scrollbar2');
    if (jscr2[0]) {
      const ps2 = new PerfectScrollbar('.js-scrollbar2');

    }

  } catch (error) {
    console.log(error);
  }

})(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  // Select 2
  try {

    $(".js-select2").each(function () {
      $(this).select2({
        minimumResultsForSearch: 20,
        dropdownParent: $(this).next('.dropDownSelect2')
      });
    });

  } catch (error) {
    console.log(error);
  }


})(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  // Dropdown 
  try {
    var menu = $('.js-item-menu');
    var sub_menu_is_showed = -1;

    for (var i = 0; i < menu.length; i++) {
      $(menu[i]).on('click', function (e) {
        e.preventDefault();
        $('.js-right-sidebar').removeClass("show-sidebar");        
        if (jQuery.inArray(this, menu) == sub_menu_is_showed) {
          $(this).toggleClass('show-dropdown');
          sub_menu_is_showed = -1;
        }
        else {
          for (var i = 0; i < menu.length; i++) {
            $(menu[i]).removeClass("show-dropdown");
          }
          $(this).toggleClass('show-dropdown');
          sub_menu_is_showed = jQuery.inArray(this, menu);
        }
      });
    }
    $(".js-item-menu, .js-dropdown").click(function (event) {
      event.stopPropagation();
    });

    $("body,html").on("click", function () {
      for (var i = 0; i < menu.length; i++) {
        menu[i].classList.remove("show-dropdown");
      }
      sub_menu_is_showed = -1;
    });

  } catch (error) {
    console.log(error);
  }

  var wW = $(window).width();
    // Right Sidebar
    var right_sidebar = $('.js-right-sidebar');
    var sidebar_btn = $('.js-sidebar-btn');

    sidebar_btn.on('click', function (e) {
      e.preventDefault();
      for (var i = 0; i < menu.length; i++) {
        menu[i].classList.remove("show-dropdown");
      }
      sub_menu_is_showed = -1;
      right_sidebar.toggleClass("show-sidebar");
    });

    $(".js-right-sidebar, .js-sidebar-btn").click(function (event) {
      event.stopPropagation();
    });

    $("body,html").on("click", function () {
      right_sidebar.removeClass("show-sidebar");

    });
 

  // Sublist Sidebar
  try {
    var arrow = $('.js-arrow');
    arrow.each(function () {
      var that = $(this);
      that.on('click', function (e) {
        e.preventDefault();
        that.find(".arrow").toggleClass("up");
        that.toggleClass("open");
        that.parent().find('.js-sub-list').slideToggle("250");
      });
    });

  } catch (error) {
    console.log(error);
  }


  try {
    // Hamburger Menu
    $('.hamburger').on('click', function () {
      $(this).toggleClass('is-active');
      $('.navbar-mobile').slideToggle('500');
    });
    $('.navbar-mobile__list li.has-dropdown > a').on('click', function () {
      var dropdown = $(this).siblings('ul.navbar-mobile__dropdown');
      $(this).toggleClass('active');
      $(dropdown).slideToggle('500');
      return false;
    });
  } catch (error) {
    console.log(error);
  }
})(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  // Load more
  try {
    var list_load = $('.js-list-load');
    if (list_load[0]) {
      list_load.each(function () {
        var that = $(this);
        that.find('.js-load-item').hide();
        var load_btn = that.find('.js-load-btn');
        load_btn.on('click', function (e) {
          $(this).text("Loading...").delay(1500).queue(function (next) {
            $(this).hide();
            that.find(".js-load-item").fadeToggle("slow", 'swing');
          });
          e.preventDefault();
        });
      })

    }
  } catch (error) {
    console.log(error);
  }

})(jQuery);
(function ($) {
  // USE STRICT
  "use strict";

  try {
    
    $('[data-toggle="tooltip"]').tooltip();

  } catch (error) {
    console.log(error);
  }

  // Chatbox
  try {
    var inbox_wrap = $('.js-inbox');
    var message = $('.au-message__item');
    message.each(function(){
      var that = $(this);

      that.on('click', function(){
        $(this).parent().parent().parent().toggleClass('show-chat-box');
      });
    });
    

  } catch (error) {
    console.log(error);
  }

})(jQuery);

(function ($) {
  $(document).ready(function(){
    $.getJSON("/manage/showAllOrder",function(res){
      console.log(res);
      $("#allOrder_info").datagrid(res);
      // var str = "";
      // for(var i = 0; i < res.length; i++){
      //   str +="<tr>"+
      //       "<td>"+ res[i].user_name+"</td>"+
      //       "<td>"+ res[i].sender_name+"</td>"+
      //       "<td>"+ res[i].sender_number+"</td>"+
      //       "<td>"+ res[i].sender_time+"</td>"+
      //       "<td class=\"text-left\">"+ res[i].sender_address+"</td>"+
      //       "<td class=\"text-left\">"+ res[i].order_no+"</td>"+
      //       "<td class=\"text-left\">"+ res[i].status+"</td>"+
      //       "<td class=\"text-left\">"+
      //       "<div class=\"table-data-feature\">"+
      //       "<button  onclick='allOrderDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">"+
      //       "<i class=\"zmdi zmdi-delete\"></i>"+
      //       "</button>"+
      //       "</div>"+
      //       "</td>"+
      //       "</tr>"
      // }
      // $("#allOrder_info").append(str);
    });
    $.getJSON("/manage/showFinished",function(res){
      // console.log(res);
      var str = "";
      for(var i = 0; i < res.length; i++){
        str +="<tr>"+
            "<td>"+ res[i].user_name+"</td>"+
            "<td>"+ res[i].sender_name+"</td>"+
            "<td>"+ res[i].sender_number+"</td>"+
            "<td>"+ res[i].sender_time+"</td>"+
            "<td class=\"text-left\">"+ res[i].sender_address+"</td>"+
            "<td class=\"text-left\">"+ res[i].order_no+"</td>"+
            "</tr>"
      }
      $("#finished_info").append(str);
    });
    $.getJSON("/manage/showUnFinished",function(res){
      // console.log(res);
      var str = "";
      for(var i = 0; i < res.length; i++){
        str +="<tr>"+
            "<td>"+ res[i].user_name+"</td>"+
            "<td>"+ res[i].sender_name+"</td>"+
            "<td>"+ res[i].sender_number+"</td>"+
            "<td>"+ res[i].sender_time+"</td>"+
            "<td class=\"text-left\">"+ res[i].sender_address+"</td>"+
            "<td class=\"text-left\">"+ res[i].order_no+"</td>"+
            "</tr>"
      }
      $("#unfinished_info").append(str);
    });

    $.getJSON("/manage/showUser",function(res){
      // console.log(res);
      var str = "";
      for(var i = 0; i < res.length; i++){
        if (res[i].role ==1){
          str += "<tr>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].name+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].password+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].email+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<span class=\"role admin\">管理员</span>"+
              "</div>"+
              "</td>"+
              "<td>" +
              "<div class=\"table-data-feature\">" +
              "<button onclick='userDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">" +
              "<i class=\"zmdi zmdi-delete\"></i>" +
              "</button>" +
              "</div>" +
              "</td>"+
              "</tr>"
        }else{
          str += "<tr>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].name+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].password+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<h6>"+res[i].email+"</h6>"+
              "</div>"+
              "</td>"+
              "<td>"+
              "<div class=\"table-data__info\">"+
              "<span class=\"role user\">用户</span>"+
              "</div>"+
              "</td>"+
              "<td>" +
              "<div class=\"table-data-feature\">" +
              "<button onclick='userDelete("+ res[i].id +")'  class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">" +
              "<i class=\"zmdi zmdi-delete\"></i>" +
              "</button>" +
              "</div>" +
              "</td>"+
              "</tr>"
        }
      }
      $("#user_info").append(str);
    });

    $.getJSON("/manage/showArticle",function(res){
      // console.log(res);
      var str = "";
      var str1 = "";
      for (var i = 0; i < res.length; i++){
        str += "<tr>\n" +
            "                                    <td>\n" +
            "                                        <div class=\"table-data__info\">\n" +
            "                                            <h6>"+res[i].title+"</h6>\n" +
            "                                        </div>\n" +
            "                                    </td>\n" +
            "                                    <td>\n" +
            "                                        <div class=\"table-data__info\">\n" +
            "                                            <h6>"+res[i].time+"</h6>\n" +
            "                                        </div>\n" +
            "                                    </td>\n" +
            "                                    <td>\n" +
            "                                        <div class=\"table-data__info\">\n" +
            "                                            <h6>"+res[i].image+"</h6>\n" +
            "                                        </div>\n" +
            "                                    </td>\n" +
            "                                    <td>\n" +
            "                                        <button type=\"button\" class=\"btn btn-secondary mb-1\" data-toggle=\"modal\" data-target=\"#scrollmodal_"+i+"\">\n" +
            "                                            内容\n" +
            "                                        </button>\n" +
            "                                    </td>\n" +
            "                                    <td>\n" +
            "                                        <div class=\"table-data-feature\">\n" +
            "                                            <button onclick='articleDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">\n" +
            "                                                <i class=\"zmdi zmdi-delete\"></i>\n" +
            "                                            </button>\n" +
            "                                        </div>\n" +
            "                                    </td>\n" +
            "\n" +
            "                                </tr>"

        str1 += "<div class=\"modal fade\" id=\"scrollmodal_"+i+"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"scrollmodalLabel\" aria-hidden=\"true\">\n" +
            "            <div class=\"modal-dialog modal-lg\" role=\"document\">\n" +
            "                <div class=\"modal-content\">\n" +
            "                    <div class=\"modal-header\">\n" +
            "                        <h5 class=\"modal-title\" id=\"scrollmodalLabel\">文章</h5>\n" +
            "                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
            "                            <span aria-hidden=\"true\">&times;</span>\n" +
            "                        </button>\n" +
            "                    </div>\n" +
            "                    <div class=\"modal-body\">\n" +
            "<form id=\"article_form_update_"+ res[i].id +"\" action=\"\" method=\"post\" enctype=\"multipart/form-data\" class=\"form-horizontal\">\n" +
            "                                    <div class=\"row form-group\">\n" +
            "                                        <div class=\"col col-md-3\">\n" +
            "                                            <label for=\"title_update_"+ res[i].id +"\" class=\" form-control-label\">标题</label>\n" +
            "                                        </div>\n" +
            "                                        <div class=\"col-12 col-md-9\">\n" +
            "                                            <input type=\"text\" id=\"title_update_"+ res[i].id +"\" name=\"title_update_"+ res[i].id +"\" placeholder=\"标题\" class=\"form-control\" value=\""+ res[i].title +"\">" +
            "                                            <small class=\"form-text text-muted\">必填</small>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            // "                                    <%--<div class=\"row form-group\">--%>\n" +
            // "                                        <%--<div class=\"col col-md-3\">--%>\n" +
            // "                                            <%--<label for=\"text-input\" class=\" form-control-label\">Image</label>--%>\n" +
            // "                                        <%--</div>--%>\n" +
            // "                                        <%--<div class=\"col-12 col-md-9\">--%>\n" +
            // "                                            <%--<input type=\"text\" id=\"text-input\" name=\"image\" placeholder=\"../images/图片名\" class=\"form-control\">--%>\n" +
            // "                                            <%--<small class=\"form-text text-muted\">必填</small>--%>\n" +
            // "                                        <%--</div>--%>\n" +
            // "                                    <%--</div>--%>\n" +
            "                                    <div class=\"row form-group\">\n" +
            "                                        <div class=\"col col-md-3\">\n" +
            "                                            <label for=\"article_file_update"+ res[i].id +"\" class=\" form-control-label\">上传图片</label>\n" +
            "                                        </div>\n" +
            "                                        <div class=\"col-12 col-md-9\">\n" +
            "                                            <input type=\"file\" id=\"article_file_update_"+ res[i].id +"\" name=\"article_file_update_"+ res[i].id +"\" class=\"form-control-file\">\n" +
            "                                            </br>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <div class=\"row form-group\">\n" +
            "                                        <div class=\"col col-md-3\">\n" +
            "                                            <label for=\"time_update_"+ res[i].id +"\" class=\" form-control-label\">时间</label>\n" +
            "                                        </div>\n" +
            "                                        <div class=\"col-12 col-md-9\">\n" +
            "                                            <input type=\"text\" id=\"time_update_"+ res[i].id +"\" name=\"time_update_"+ res[i].id +"\" placeholder=\"YYYY/MM/DD\" class=\"form-control\" value='"+ res[i].time +"'>\n" +
            "                                            <small class=\"form-text text-muted\">必填</small>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <div class=\"row form-group\">\n" +
            "                                        <div class=\"col col-md-3\">\n" +
            "                                            <label for=\"content_update_"+ res[i].id +"\" class=\" form-control-label\">文章内容</label>\n" +
            "                                        </div>\n" +
            "                                        <div class=\"col-12 col-md-9\">\n" +
            "                                            <textarea name=\"content_update_"+ res[i].id +"\" id=\"content_update_"+ res[i].id +"\" rows=\"9\" placeholder=\"内容...\" class=\"form-control\">" +res[i].content+ "</textarea>\n" +
            "                                            <small class=\"form-text text-muted\">必填</small>\n" +
            "                                        </div>\n" +
            "                                    </div>\n" +
            "                                    <button class=\"btn btn-primary btn-sm\" onclick=\"updateArticle("+ res[i].id +")\" type=\"button\">\n" +
            "                                        <i class=\"fa fa-dot-circle-o\"></i>修改\n" +
            "                                    </button>\n" +
            "                                </form>"+
        //     "                        <p>\n" +
        //                                 res[i].content+
        // "                             </p>\n" +
        "                    </div>\n" +
        "                    <div class=\"modal-footer\">\n" +
        "                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">关闭</button>\n" +
        "                    </div>\n" +
        "                </div>\n" +
        "            </div>\n" +
        "        </div>"
      }
      $("#article_info").append(str)
      $(".page-container").append(str1)

    });
      $.getJSON("/manage/showApply",function(res){
          // console.log(res);
          var str = "";
          var str1 = "";
          for (var i = 0; i < res.length; i++){
              str += "<tr>\n" +
                  "                                        <td>\n" +
                  "                                            <div class=\"table-data__info\">\n" +
                  "                                                <h6>"+ res[i].name +"</h6>\n" +
                  "                                            </div>\n" +
                  "                                        </td>\n" +
                  "                                        <td>\n" +
                  "                                            <div class=\"table-data__info\">\n" +
                  "                                                <h6>"+ res[i].number +"</h6>\n" +
                  "                                            </div>\n" +
                  "                                        </td>\n" +
                  "                                        <td>\n" +
                  "                                            <div class=\"table-data__info\">\n" +
                  "                                                <h6>"+ res[i].address +"</h6>\n" +
                  "                                            </div>\n" +
                  "                                        </td>\n" +
                  "                                        <td>\n" +
                  "                                            <button type=\"button\" class=\"btn btn-secondary mb-1\" data-toggle=\"modal\" data-target=\"#scrollmodal_apply_"+ i +"\">\n" +
                  "                                                情况说明\n" +
                  "                                            </button>\n" +
                  "                                        </td>\n" +
                  "                                        <td>\n" +
                  "                                            <button type=\"button\" class=\"btn btn-secondary mb-1\" data-toggle=\"modal\" data-target=\"#mediumModal_apply_"+ i +"\">\n" +
                  "                                                显示图片\n" +
                  "                                            </button>\n" +
                  "                                        </td>\n";
              if(res[i].status == 0){
                str += "<td>\n" +
                    "                                            <label class=\"switch switch-3d switch-primary mr-3\">\n" +
                    "                                                <input id='checkBox_"+ res[i].id +"' type=\"checkbox\" class=\"switch-input\" name = '"+ res[i].id +"' onclick='changeStatus("+ res[i].id +")'>\n" +
                    "                                                <span class=\"switch-label\"></span>\n" +
                    "                                                <span class=\"switch-handle\"></span>\n" +
                    "                                            </label>\n" +
                    "                                        </td>"+
                    "                                        <td>\n" +
                    "                                            <div class=\"table-data-feature\">\n" +
                    "                                                <button onclick='applyDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">\n" +
                    "                                                    <i class=\"zmdi zmdi-delete\"></i>\n" +
                    "                                                </button>\n" +
                    "                                            </div>\n" +
                    "                                        </td>\n" +
                    "\n" +
                    "                                    </tr>";
              }else{
                str += "<td>\n" +
                    "                                            <label class=\"switch switch-3d switch-primary mr-3\">\n" +
                    "                                                <input id='checkBox_"+ res[i].id +"' type=\"checkbox\" class=\"switch-input\" name = '"+ res[i].id +"' checked = 'true' onclick='changeStatus(" + res[i].id + ")'>\n" +
                    "                                                <span class=\"switch-label\"></span>\n" +
                    "                                                <span class=\"switch-handle\"></span>\n" +
                    "                                            </label>\n" +
                    "                                        </td>"+
                    "                                        <td>\n" +
                    "                                            <div class=\"table-data-feature\">\n" +
                    "                                                <button onclick='applyDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">\n" +
                    "                                                    <i class=\"zmdi zmdi-delete\"></i>\n" +
                    "                                                </button>\n" +
                    "                                            </div>\n" +
                    "                                        </td>\n" +
                    "\n" +
                    "                                    </tr>";
              }


              str1 += "<div class=\"modal fade\" id=\"scrollmodal_apply_"+ i +"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"scrollmodalLabel\" aria-hidden=\"true\">\n" +
                  "            <div class=\"modal-dialog modal-lg\" role=\"document\">\n" +
                  "                <div class=\"modal-content\">\n" +
                  "                    <div class=\"modal-header\">\n" +
                  "                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n" +
                  "                            <span aria-hidden=\"true\">&times;</span>\n" +
                  "                        </button>\n" +
                  "                    </div>\n" +
                  "                    <div class=\"modal-body\">\n" +
                  "                        <p>"+ res[i].detail +"</p>\n" +
                  "                    </div>\n" +
                  "                    <div class=\"modal-footer\">\n" +
                  "                        <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">关闭</button>\n" +
                  "                    </div>\n" +
                  "                </div>\n" +
                  "            </div>\n" +
                  "        </div>\n" +
                  "\n" +
                  "        <div class=\"modal fade\" id=\"mediumModal_apply_"+ i +"\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"mediumModalLabel\" aria-hidden=\"true\">\n" +
                  "            <div class=\"modal-dialog modal-lg\" role=\"document\">\n" +
                  "                <div class=\"modal-content\">\n" +
                  "                    <div class=\"modal-body\">\n" +
                  "                        <div style=\"width: 100%; height: 100%;text-align: center;\">\n" +
                  "                            <img style=\"\" src=\"" +res[i].image +"\">\n" +
                  "                        </div>\n" +
                  "                    </div>\n" +
                  "                </div>\n" +
                  "            </div>\n" +
                  "        </div>"
          }
          $("#apply_info").append(str)
          $(".page-container").append(str1)
      });
  })
})(jQuery);

function submitArticle() {
  var formData = new FormData();

  if ($("#title")[0].value == 0){
    alert("请添加标题");
  } else if ($("#article_file")[0].files[0] == null){
    alert("请添加图片");
  } else if ($("#time")[0].value == 0){
    alert("请添加时间");
  }else if ($("#content")[0].value == 0){
    alert("请添加内容");
  }else{
    formData.append("title", $("#title")[0].value);
    // formData.append("image", $("#image")[0].value);
    formData.append("article_file", $("#article_file")[0].files[0]);
    formData.append("time", $("#time")[0].value);
    formData.append("content", $("#content")[0].value);
    $.ajax({
      //几个参数需要注意一下
      type: "POST",//方法类型
      dataType: "json",//预期服务器返回的数据类型
      url: "/manage/addArticle" ,//url
      processData: false,
      contentType: false,
      data: formData,
      success: function (result) {
        // console.log(result);//打印服务端返回的数据(调试用)
        alert(result.message);
        if (result.status == 400){
          window.location.href = "/menu/manage_article";
        }
      }
    });
  }
}

function updateArticle(id) {
  var formData = new FormData();
  if ($("#title_update_"+ id +"")[0].value == 0){
    alert("请添加标题");
  }else if ($("#article_file_update_"+ id +"")[0].files[0] == null){
    alert("请添加图片");
  }else if ($("#time_update_"+ id +"")[0].value == 0){
    alert("请添加时间");
  }else if ($("#content_update_"+ id +"")[0].value == 0){
    alert("请添加内容");
  }else {
    formData.append("id", id);
    formData.append("title", $("#title_update_"+ id +"")[0].value);
    // formData.append("image", $("#image")[0].value);
    formData.append("article_file", $("#article_file_update_"+ id +"")[0].files[0]);
    formData.append("time", $("#time_update_"+ id +"")[0].value);
    formData.append("content", $("#content_update_"+ id +"")[0].value);
    $.ajax({
      //几个参数需要注意一下
      type: "POST",//方法类型
      dataType: "json",//预期服务器返回的数据类型
      url: "/manage/updateArticle" ,//url
      processData: false,
      contentType: false,
      data: formData,
      success: function (result) {
        // console.log(result);//打印服务端返回的数据(调试用)
        alert(result.message);
        if (result.status == 400){
          window.location.href = "/menu/manage_article";
        }
      }
    });
  }
}


(function ($) {
    $.getJSON("/init/initSum",function(res){
        // console.log(res);
        $("#user_number").append(res[2]+"人");
        $("#clothes_number").append(res[0]+"kg");
        $("#book_number").append(res[1]+"本");
        $("#order_number").append(res[3]+"件");
    });

})(jQuery);

function searchOrder() {
  $("#search_info").empty();
  if($('#search').val() == 0){
    alert("无查找结果");
  }else {
    $.ajax({
      //几个参数需要注意一下
      type: "POST",//方法类型
      dataType: "json",//预期服务器返回的数据类型
      url: "/manage/searchOrder" ,//url
      data: {searchNum:$('#search').val()},
      success: function (res) {
        var str = "";
        var flag = true;
        console.log(res);//打印服务端返回的数据(调试用)
        for(var i = 0; i < res.length; i++){
          if (res[i].success == 100){
            str +="<tr>"+
                "<td>"+ res[i].user_name+"</td>"+
                "<td>"+ res[i].sender_name+"</td>"+
                "<td>"+ res[i].sender_number+"</td>"+
                "<td>"+ res[i].sender_time+"</td>"+
                "<td class=\"text-left\">"+ res[i].sender_address+"</td>"+
                "<td class=\"text-left\">"+ res[i].order_no+"</td>"+
                "<td class=\"text-left\">"+ res[i].status+"</td>"+
                "<td class=\"text-left\">"+
                "<div class=\"table-data-feature\">"+
                "<button  onclick='allOrderDelete("+ res[i].id +")' class=\"item\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Delete\">"+
                "<i class=\"zmdi zmdi-delete\"></i>"+
                "</button>"+
                "</div>"+
                "</td>"+
                "</tr>"
          }else{
            flag = false;
          }
        }
        if (flag){
          $("#search_info").append(str);
        } else{
          alert("无查找结果");
        }
      }
    });
  }

    // $(document).ready(function(){
    //
    // })
}

function changeStatus(i) {
  var element = "checkBox_"+ i +"" ;
  var flag = 0;
  if (document.getElementById(element).checked){
    flag = 1;
  } else{
    flag = 0;
  }
  $.ajax({
    //几个参数需要注意一下
    type: "POST",//方法类型
    dataType: "json",//预期服务器返回的数据类型
    url: "/manage/changeStatus" ,//url
    data: {applyId : i, status: flag},
    success: function (res) {
      alert(res.message)
    }
  });
}

function changeOrderStatus(i) {
  var element = "checkBox_"+ i +"" ;
  // console.log(element);
  var flag = 0;
  if (document.getElementById(element).checked){
    flag = 1;
  } else{
    flag = 0;
  }
  $.ajax({
    //几个参数需要注意一下
    type: "POST",//方法类型
    dataType: "json",//预期服务器返回的数据类型
    url: "/manage/changeOrderStatus" ,//url
    data: {applyId : i, status: flag},
    success: function (res) {
      alert(res.message)
    }
  });
}




