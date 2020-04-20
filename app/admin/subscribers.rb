# app/admin/products.rb
ActiveAdmin.register Subscriber, :as => "Suscripciones" do

  actions :all
  permit_params :name, :subject, :email ,:phone ,:mesagge ,:is_subscriber

  config.clear_action_items!


  action_item :only => :index do
    link_to "Enviar correos masivos", "suscripciones/new"
  end

  index do
    id_column
    column  "Nombre", :name
    column  "Asunto", :subject
    column  "Email", :email
    column  "Teléfono", :phone
    column  "Está suscrito?", :is_subscriber
    actions
    end
  # Filterable attributes on the index screen
  filter :id
  filter :name
  filter :is_subscriber
  filter :email


  form(:html => { :multipart => true }) do |f|
    if f.object.new_record?
      f.inputs do
        f.select :id, options_for_select(IndexNew.all.map {|u| ["#{u.title}", u.id]} || default_value)
      end
    else
      f.inputs "Agregar suscriptor" do
        f.input :name, label: "Nombre"
        f.input :subject, label: "Asunto"
        f.input :email, label: "Email"
        f.input :phone, label: "Teléfono"
        f.input :mesagge, label: "Mensage"
        f.input :is_subscriber, :as => :check_boxes, label: "Enviar correos?"
      end
    end

    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do

    def create
      news = IndexNew.where("id != ?", params[:subscriber]['id']).select("id,img_url_one,bodyone, title").limit(3).order("id desc")
      new = IndexNew.find(params[:subscriber]['id'])
      Subscriber.where(:is_subscriber => "true").each do |sub|
        NewEmailMailer.new_email(new.title, new.bodyone, new.subtitle, new.subtitletwo, new.bodytwho, new.bodythree, new.img_url_one, new.img_url_two, new.img_url_three, new.autor, new.note_1, new.note_2, sub.name, sub.email, news).deliver_now
      end
    end
   private
    def product_params
      params.require(:suscribers).permit(:name, :subject, :email ,:phone ,:mesagge ,:is_subscriber )
    end


  end



end