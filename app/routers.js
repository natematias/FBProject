var GRouter = Backbone.Router.extend({
  routes: {
    ":acct": "twitter_account",
    "": "default"
  },
  
  default: function(){
  },

  twitter_account: function(acct){
  },
});

window.launch();
