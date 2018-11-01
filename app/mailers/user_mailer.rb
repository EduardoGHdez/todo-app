class UserMailer < ActionMailer::Base

    def welcome_email(user_id: 9)
        @user = User.find(user_id)
        mail(   :to => @user.email, :subject => "Welcome") do |format|
            format.text
            format.html
        end
    end

    def reminder_email(user_id: 9)
        @user = User.find(user_id)
        @lists = @user.lists
        mail(   :to => @user.email, :subject => "TODO App: Weekly reminder") do |format|
            format.text
            format.html
        end
    end
end
