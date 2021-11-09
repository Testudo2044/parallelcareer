class ThanxMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanx_mailer.complete_registration.subject
  #

    def complete_registration(email,name)
     @name = name
    mail to: email, bcc: "ytk0202@outlook.jp", subject: '【パラキャリ】会員登録完了のお知らせ'
    end

end
