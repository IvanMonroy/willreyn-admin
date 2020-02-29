# app/admin/products.rb
ActiveAdmin.register IndexNew, :as => "Noticias"  do

  actions :all
  permit_params :title, :bodyone ,:subtitle ,:bodytwho ,:subtitletwo ,:bodythree,:imageone, :imagetwo ,:imagethree

  # Create sections on the index screen
  index do
    id_column
    column  "Nombre", :name
    column  "Titulo", :title
    column  "Cuerpo 1", :bodyone
    column  "Subtitlo 1", :subtitle
    column  "Cuerpo 2", :bodytwho
    column  "Subtitulo 2", :subtitletwo
    column  "Cuerpo 3", :bodythree
    column "Imagen 1" do |product|
      image_tag product.imageone.url, class: 'my_image_size'
    end
    column "Imagen 2" do |product|
      image_tag product.imagetwo.url, class: 'my_image_size'
    end
    column "Imagen 3" do |product|
      image_tag product.imagethree.url, class: 'my_image_size'
    end
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
      f.input :imageone, :as => :file, label: "Imagen 1"
      f.input :imagetwo, :as => :file, label: "Imagen 2"
      f.input :imagethree, :as => :file, label: "Imagen 3"
    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
    def index_new_params
      params.require(:index_new).permit(:title, :bodyone ,:subtitle ,:bodytwho ,:subtitletwo ,:bodythree,:imageone, :imagetwo ,:imagethree )
    end


  end

end