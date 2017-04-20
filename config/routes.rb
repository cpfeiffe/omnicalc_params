Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flex_square"})
  get("/flexible/squareroot/:number", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:apr/:years/:principal", {:controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})



  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square_results"})

  
  get("/squareroot/new", {:controller => "calculations", :action => "squareroot_form"})
  get("/squareroot/results", {:controller => "calculations", :action => "squareroot_results"})


end
