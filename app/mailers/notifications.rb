class Notifications < ActionMailer::Base
  def login_message(user)
    @user = user
    mail :to => user.email, :from => 'joe.waine@gmail.com', :subject => "You have reserved"
  end
  def return_message(user)
    @user = user
    mail :to => user.email, :from => 'joe.waine@gmail.com', :subject => "Your Book is ready for you."
  end


end