var BiasView = Backbone.View.extend({
     
  events: function() {
    return {
    }
  },

  initialize: function(){
    _.bindAll(this, 'render');
    var that = this;
  },

  render: function(column){
    var that = this;
    console.log(1);
  },
});
