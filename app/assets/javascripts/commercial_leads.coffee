# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  Morris.Bar
    element: 'commercial_leads_chart'
    data: [
      { contact_date: '2016-06-11', budget_max: 700 }
      { contact_date: '2016-04-22', budget_max: 1500 }
      { contact_date: '2016-02-15', budget_max: 2200 }
    ]
    xkey: 'contact_date'
    ykeys: ['budget_max']
    labels: ['Series A']