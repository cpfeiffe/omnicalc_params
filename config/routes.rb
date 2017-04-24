Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:apr/:years/:principal", {:controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "flex_random"})



  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square_results"})


  get("/square_root/new", {:controller => "calculations", :action => "squareroot_form"})
  get("/square_root/results", {:controller => "calculations", :action => "squareroot_results"})

  get("/payment/new", {:controller => "calculations", :action => "payment_form"})
  get("/payment/results", {:controller => "calculations", :action => "payment_results"})


end
