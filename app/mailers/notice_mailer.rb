class NoticeMailer < ApplicationMailer
  
  default from: 'andowspc@yahoo.co.jp',
            cc: 'andowspc@facebook.com'
  
  def notice(customer)
    @customer = customer
    mail to: customer.email,
        subject: 'ユーザーご登録有り難うございます。'
  end
  
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: '私の素敵なサイトへようこそ')
  end
  
end
