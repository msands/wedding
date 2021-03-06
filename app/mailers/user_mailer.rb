class UserMailer < ActionMailer::Base
  default from: "alerts@marcelandkim.com"

  def rsvp_confirmation(rsvp)
    @rsvp = rsvp

    mail to: rsvp.guest_email,
      cc: "marcelandkim2014@gmail.com",
      subject: "RSVP Confirmation"
  end

  def signup_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def comment_notification(comment, user)
    @comment = comment
    @pin = user

    mail to: user.email,
      subject: "New Comment"
  end
end
