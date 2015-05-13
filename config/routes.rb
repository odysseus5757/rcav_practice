Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "sqrt"})
  get("/square/:id", { :controller => "calculations", :action => "square"})
  get("/payment/:interest_rate/:number_of_payments/:principal_value", { :controller => "calculations", :action => "pmt"})
end
