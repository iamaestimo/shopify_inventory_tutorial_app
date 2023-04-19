class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :inventory_webhook # skips cross-site protection checks since this is an API request

  def welcome
    @inventories = Inventory.order('created_at DESC')
  end

  def inventory_webhook
    if Inventory.create(
          title: params[:title],
          body_html: params[:body_html],
          vendor: params[:vendor],
          status: params[:status],
          product_type: params[:product_type],
          handle: params[:handle],
          edited_at: params[:updated_at],
          published_at: params[:published_at]
        )
      
      render json: {}, status: 200
    else
      render json: {}, status: :unprocessable_entity
    end

  end

end
