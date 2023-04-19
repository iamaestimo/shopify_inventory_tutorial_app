Rails.application.routes.draw do
  post "/inventory/update", to: "home#inventory_webhook"
  root "home#welcome"
end
