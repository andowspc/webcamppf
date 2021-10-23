class AdminContactMailer < ApplicationMailer
  
  def send_mail(contact)
    @contact = contact
    @customer = Customer.find(@contact.customer_id)
    mail to: @customer.email, subject: '【お問い合わせの返信】' + @contact.subject
  end
  
end
