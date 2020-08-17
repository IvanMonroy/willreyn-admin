# app/admin/products.rb
 require 'base64'
ActiveAdmin.register OurWork, :as => "Nuestros Trabajos V2"  do

  actions :all
  permit_params  :category, :name, :situation, :solution, :image_one, :image_two, :image_three, :image_fourth, :image_fifth



  # Create sections on the index screen
  index do
    id_column
    column "Caregoría", :category
    column "Nombre / Marca", :name
    column "Situación", :situation
    column "Solución", :solution
    actions
    end
  # Filterable attributes on the index screen

  filter  :category
  filter  :name


  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Crear trabajos" do

      f.input :category, label: "Caregoría"
      f.input :name, label: "Nombre / Marca"
      f.input :situation, label: "Situación"
      f.input :solution, label: "Solución"
      f.input :image_one, :as => :file,label: "Imagen 1"
      f.input :image_two, :as => :file,label: "Imagen 2"
      f.input :image_three, :as => :file,label: "Imagen 3"
      f.input :image_fourth, :as => :file,label: "Imagen 4"
      f.input :image_fifth, :as => :file,label: "Imagen 5"

    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
    def create

      @our_work = OurWork.new(our_work_params)
      @our_work.image_one = Base64.encode64(our_work_params[:image_one].read).gsub(/[\r\n]+/, '')
      @our_work.image_two = Base64.encode64(our_work_params[:image_two].read).gsub(/[\r\n]+/, '')
      @our_work.image_three = Base64.encode64(our_work_params[:image_three].read).gsub(/[\r\n]+/, '')
      @our_work.image_fourth = Base64.encode64(our_work_params[:image_fourth].read).gsub(/[\r\n]+/, '')
      @our_work.image_fifth = Base64.encode64(our_work_params[:image_fifth].read).gsub(/[\r\n]+/, '')
      @our_work.save

    rescue Exception => e
      print e
    end

   private
   def our_work_params
     params.require(:our_work).permit(:category, :name, :situation, :solution, :image_one, :image_two, :image_three, :image_fourth, :image_fifth)
   end

  end

end