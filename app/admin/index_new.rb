# app/admin/products.rb
ActiveAdmin.register IndexNew, :as => "Noticias"  do

  actions :all
  permit_params :title, :bodyone ,:subtitle ,:bodytwho ,:subtitletwo ,:bodythree,:imageone, :imagetwo ,:imagethree, :img_url_one, :img_url_two, :img_url_three, :autor, :note_1, :note_2

  # Create sections on the index screen
  index do
    id_column
    column  "Nombre", :name
    column  "Titulo", :title
    column  "Subtitlo 1", :subtitle
    column  "Subtitulo 2", :subtitletwo
    column  "Autor", :autor
    column  "Nota 1", :none_1
    actions
    end
  # Filterable attributes on the index screen

  filter  :title
  filter  :bodyone
  filter  :subtitle
  filter  :bodytwho
  filter  :subtitletwo
  filter  :bodythree

  form(:html => { :multipart => true }) do |f|
    f.inputs "Agregar noticias" do
      f.input  :title, label: "Titulo"
      f.input  :bodyone, label: "Cuerpo 1"
      f.input  :subtitle, label: "Subtitulo"
      f.input  :bodytwho, label: "Cuerpo 2"
      f.input  :subtitletwo, label: "Subtitulo 2"
      f.input  :bodythree, label: "Cuerpo 3"
      f.input  :img_url_one, label: "Url imagen 1"
      f.input  :img_url_two, label: "Url imagen 2"
      f.input  :img_url_three, label: "Url imagen 3"
      f.input  :autor, label: "Información del autor"
      f.input  :note_1, label: "Nota 1"
      f.input  :note_2, label: "Nota 2"
      # f.input :imageone, :as => :file, label: "Imagen 1"
      # f.input :imagetwo, :as => :file, label: "Imagen 2"
      # f.input :imagethree, :as => :file, label: "Imagen 3"
    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
    def index_new_params
      params.require(:index_new).permit(:title, :bodyone ,:subtitle ,:bodytwho ,:subtitletwo ,:bodythree,:imageone, :imagetwo ,:imagethree, :img_url_one, :img_url_two, :img_url_three , :autor, :note_1, :note_2)
    end


  end

end