# app/admin/products.rb
ActiveAdmin.register Work, :as => "Trabajos"  do

  actions :all
  permit_params :title, :category ,:description ,:first_image ,:first_header ,:first_description,:second_image, :second_header ,:second_description,:third_image, :third_header ,:third_description,:fourth_image, :fourth_header ,:fourth_description,:fifth_image, :fifth_header ,:fifth_description,:sixth_image, :sixth_header ,:sixth_description, :img_url_one, :img_url_two, :img_url_three, :img_url_fourth, :img_url_fifth, :img_url_sixth

  # Create sections on the index screen
  index do
    id_column
    column  "Titulo", :title
    column  "Categoría", :category
    column  "Descripción", :description
    actions
    end
  # Filterable attributes on the index screen

  filter  :title
  filter  :category
  filter  :description


  form(:html => { :multipart => true }) do |f|
    f.inputs "Crear trabajos" do

      f.input :title, label: "Titulo"
      f.input :category, label: "Categoría"
      f.input :description, label: "Descripción"
      f.input :first_image, :as => :file, label: "Primera imagen"
      f.input :first_header, label: "Cabecera 1"
      f.input :first_description, label: "Descripción 1"
      f.input :second_image, :as => :file , label: "Segunda Imagen"
      f.input :second_header, label: "Cabecera 2"
      f.input :second_description, label: "Descripción 2"
      f.input :third_image, :as => :file, label: "Tercera Imagen"
      f.input :third_header, label: "Cabecera 3"
      f.input :third_description, label: "Descripción 3"
      f.input :fourth_image, :as => :file, label: "Cuarta Imagen"
      f.input :fourth_header, label: "Cabecera 4"
      f.input :fourth_description, label: "Descripción cuatro"
      f.input :fifth_image, :as => :file, label: "Quinta Imagen"
      f.input :fifth_header, label: "Cabecera 5"
      f.input :fifth_description, label: "Descripción 5"
      f.input :sixth_image, :as => :file, label: "Sexta Imagen"
      f.input :sixth_header, label: "Cabecera 6"
      f.input :sixth_description, label: "Descripción 6"
      f.input :img_url_one, label: "Imagen Url 1"
      f.input :img_url_two, label: "Imagen Url 2"
      f.input :img_url_three, label: "Imagen Url 3"
      f.input :img_url_fourth, label: "Imagen Url 4"
      f.input :img_url_fifth, label: "Imagen Url 5"
      f.input :img_url_sixth, label: "Imagen Url 6"

    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
   def work_params
     params.require(:work).permit(:title, :category ,:description ,:first_image ,:first_header ,:first_description,:second_image, :second_header ,:second_description,:third_image, :third_header ,:third_description,:fourth_image, :fourth_header ,:fourth_description,:fifth_image, :fifth_header ,:fifth_description,:sixth_image, :sixth_header ,:sixth_description, :img_url_one, :img_url_two, :img_url_three, :img_url_fourth, :img_url_fifth, :img_url_sixth )
   end

  end

end