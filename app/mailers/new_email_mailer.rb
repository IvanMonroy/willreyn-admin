class NewEmailMailer < ApplicationMailer
  default from: "noreply@tecnihidraulicos-jb.com"
  def new_email(title, bodyone, subtitle, subtitletwo, bodytwho, bodythree, img_url_one, img_url_two, img_url_three, autor, note_1, note_2, name, recipient)
    @title = title
    @bodyone = bodyone
    @subtitle = subtitle
    @subtitletwo = subtitletwo
    @bodytwho = bodytwho
    @bodythree = bodythree
    @img_url_one = img_url_one
    @img_url_two = img_url_two
    @img_url_three = img_url_three
    @autor = autor
    @note_1 = note_1
    @note_2 = note_2

    @name = name
    @subject = @title

    mail(to:  "ivan.monroy@hrinteractive.co", :reply_to => "ivan.monroy@hrinteractive.co", name:  "ivan.monroy@hrinteractive.co", subject:  "ivan.monroy@hrinteractive.co")
  end
end
