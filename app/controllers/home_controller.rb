class HomeController < ApplicationController
  def welcome
  end

  def inventory(payload)
    @inventory = Inventory.create(details: payload)
  end
end
