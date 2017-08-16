class AnswerMailer < ActionMailer::Base
  default from: 'Any Questions <noreply@anyquestions.scoop.co.nz>'

  def asker_notification(answer)
    @answer = answer
    @question = @answer.question
    @user = @question.user
    @rep = @answer.rep
    @party = @rep.party
    mail(to: @user.email,
      subject: "#{@party.name} answered your question!")
  end
end
