# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        user = User.find(9)
        UserMailer.welcome_email(user.id)
    end
end
