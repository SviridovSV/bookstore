class CheckoutMailer < ApplicationMailer
  def complete_email(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: "Your order R #{@order.id} is accepted")
  end
end
