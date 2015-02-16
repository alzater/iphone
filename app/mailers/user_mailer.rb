class UserMailer < ActionMailer::Base
  default from: "alzater@mail.ru"
  
  def new_order_email(order)
    @order = order
    mail(:to => "alzater@mail.ru", :subject => "New Order")
  end
end
