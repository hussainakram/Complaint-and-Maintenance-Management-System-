class UserNotifierMailer < ApplicationMailer
	default from: 'UET<info@uet.com>'

  def send_complain_email(user)
    @user = user
    mail( to: @user.email, subject: 'Your complain has been completed')
  end

  def sign_up(user)
  	@user = user
    mail( to: @user.email, subject: 'Welcome to UET Complaint and Management System!')
  end

  def accepted_complain(user)
  	@user = user
    mail( to: @user.email, subject: 'Your complain has been "Accepted" by DCO')
  end

  def rejected_complain(user)
  	@user = user
    mail( to: @user.email, subject: 'Your complain has been "Rejected" by DCO')
  end
end
