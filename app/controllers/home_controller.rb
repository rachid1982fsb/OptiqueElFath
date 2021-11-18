class HomeController < ApplicationController
    def about
    end
    def admin
        @orders = Order.order(params[:sort])

    end
end
  