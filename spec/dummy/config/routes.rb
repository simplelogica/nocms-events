Rails.application.routes.draw do
  mount NoCms::Events::Engine => "/"
end
