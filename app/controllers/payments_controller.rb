class PaymentsController < ApplicationController
  def create
    current_user.generate_pin
    current_user.send_pin
    respond_to do |format|
      format.js # render app/views/phone_numbers/create.js.erb
    end
  end
  def verify
    if current_user.verify(params[:pin])
      SendEmailMailer.welcome(current_user).deliver_now! # send email to user upon successfull purchase
      current_user.orders.create!(product_id: current_order.product_id)
      current_order.update({user: current_user})
      current_order.order_items.update({order_id: nil})
    end
    respond_to do |format|
      format.js # render app/views/phone_numbers/verify.js.erb
    end
  end
end
