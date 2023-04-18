Rails.application.routes.draw do
  post "/inventory/update", to: "home#inventory"
  root "home#welcome"
end
