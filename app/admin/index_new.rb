# app/admin/products.rb
ActiveAdmin.register IndexNew, :as => "Noticias"  do

  actions :all

  # Create sections on the index screen
  index do
    id_column
    column  :name
    column  :title
    column  :bodyone
    column  :subtitle
    column  :bodytwho
    column  :subtitletwo
    column  :bodythree
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
      f.input  :title
      f.input  :bodyone
      f.input  :subtitle
      f.input  :bodytwho
      f.input  :subtitletwo
      f.input  :bodythree
      f.input :imageone, :as => :file
      f.input :imagetwo, :as => :file
      f.input :imagethree, :as => :file
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