HTMLWidgets.widget({

  name: 'highstock',

  type: 'output',

  initialize: function(el, width, height) {

    return {
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, x, instance) {

    $('#' + el.id).highcharts('StockChart', {
      series : [
        {name : x.name, data : x.data}
      ]
    });

  },

  resize: function(el, width, height, instance) {

  }

});
