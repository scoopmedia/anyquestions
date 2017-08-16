class InvitationMailer < ActionMailer::Base
  default from: '"Any Questions" <noreply@anyquestions.scoop.co.nz>'

  def to_join_party(invitation)
    @invitation = invitation
    mail(to: invitation.email,
         subject: "#{invitation.inviter.name} has invited you to Any Questions")
  end
end
