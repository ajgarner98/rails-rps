Rails.application.routes.draw do
  get("/rock", { :controller => "zebra", :action =>  "giraffe"})
  get("/paper", { :controller => "zebra", :action => "tiger"})
  get("/scissors", {:controller => "zebra", :action => "elephant"})
  get("/", {:controller => "zebra", :action => "shark"})
end
