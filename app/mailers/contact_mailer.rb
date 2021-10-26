class ContactMailer < ApplicationMailer

  def send_mail(contact)
    @contact = contact
    @customer = Customer.find(@contact.customer_id)
    mail to:   ENV['TOMAIL'], subject: '【お問い合わせ】' + @contact.subject
  end

end
