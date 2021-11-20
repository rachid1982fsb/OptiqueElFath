class OrderNotifierMailer < ApplicationMailer
    default :from => 'rakaa.rachid@gmail.com'
  
    # send a signup email to the user, pass in the user object that   contains the user's email address
    def send_order_email(order)
      @order = order
      mail( :to => @order.customer.email,
      :subject => 'Thanks for Ordering Glasses at OpticTop' )
    end
  end