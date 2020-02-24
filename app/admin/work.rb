# app/admin/products.rb
ActiveAdmin.register Work, :as => "Trabajos"  do

  actions :all
  permit_params :title, :category ,:description ,:first_image ,:first_header ,:first_description,:second_image, :second_header ,:second_description,:third_image, :third_header ,:third_description,:fourth_image, :fourth_header ,:fourth_description,:fifth_image, :fifth_header ,:fifth_description,:sixth_image, :sixth_header ,:sixth_description

  # Create sections on the index screen
  index do
    id_column
    column  :title
    column  :category
    column  :description
    actions
    end
  # Filterable attributes on the index screen

  filter  :title
  filter  :category
  filter  :description


  form(:html => { :multipart => true }) do |f|
    f.inputs "Crear trabajos" do

      f.input :title
      f.input :category
      f.input :description
      f.input :first_image, :as => :file
      f.input :first_header
      f.input :first_description
      f.input :second_image, :as => :file
      f.input :second_header
      f.input :second_description
      f.input :third_image, :as => :file
      f.input :third_header
      f.input :third_description
      f.input :fourth_image, :as => :file
      f.input :fourth_header
      f.input :fourth_description
      f.input :fifth_image, :as => :file
      f.input :fifth_header
      f.input :fifth_description
      f.input :sixth_image, :as => :file
      f.input :sixth_header
      f.input :sixth_description
    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
   def work_params
     params.require(:work).permit(:title, :category ,:description ,:first_image ,:first_header ,:first_description,:second_image, :second_header ,:second_description,:third_image, :third_header ,:third_description,:fourth_image, :fourth_header ,:fourth_description,:fifth_image, :fifth_header ,:fifth_description,:sixth_image, :sixth_header ,:sixth_description )
   end

  end

end