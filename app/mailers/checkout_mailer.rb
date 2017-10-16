class CheckoutMailer < ApplicationMailer
  def complete_email(user, order) #парамметры email должны быть скалярного типа user_id, order_id
    @user = user #@user = User.find(user_id)
    @order = order #@order = Order.find(order_id)
    mail(to: @user.email, subject: "Your order R #{@order.id} is accepted")
  end
end
