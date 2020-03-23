# app/admin/products.rb
ActiveAdmin.register Subscriber, :as => "Suscripciones" do

  actions :all
  permit_params :name, :subject, :email ,:phone ,:mesagge ,:is_subscriber
  # Create sections on the index screen
  #
  #       t.string :name
  #       t.string :subject
  #       t.string :email
  #       t.string :phone
  #       t.string :mesagge
  #       t.string :is_subscriber
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
    f.inputs "Agregar suscriptor" do
       f.input :name, label: "Nombre"
      f.input :subject, label: "Asunto"
      f.input :email, label: "Email"
      f.input :phone, label: "Teléfono"
      f.input :mesagge, label: "Mensage"
      f.input :is_subscriber, :as => :check_boxes, label: "Enviar correos?"
    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
    def product_params
      params.require(:suscribers).permit(:name, :subject, :email ,:phone ,:mesagge ,:is_subscriber )
    end

  end

end