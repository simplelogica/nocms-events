Rails.application.routes.draw do

  mount NoCms::Events::Engine => "/no_cms/events"
end
