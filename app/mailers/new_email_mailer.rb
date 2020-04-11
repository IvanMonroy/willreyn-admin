class NewEmailMailer < ApplicationMailer
  default from: "tecnihidraulicosjb@gmail.com"
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

    mail(to:  "inter250296@hotmail.com", :reply_to => "inter250296@hotmail.com", name:  "inter250296@hotmail.com", subject:  "inter250296@hotmail.com")
  end
end
