class IntroduceMailer < ApplicationMailer
  def complete_introduction(introduceduser,provider,current_user)
    @introduceduser = introduceduser
    @provider = provider
    @current_user = current_user
    mail(
    to: 'ytk0202@outlook.jp',
    subject: '口コミのお知らせ'
    )
  end
end
