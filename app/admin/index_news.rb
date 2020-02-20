# app/admin/products.rb
ActiveAdmin.register IndexNew do

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
    actions
    end
  # Filterable attributes on the index screen

  filter  :name
  filter  :title
  filter  :bodyone
  filter  :subtitle
  filter  :bodytwho
  filter  :subtitletwo
  filter  :bodythree

  form(:html => { :multipart => true }) do |f|
    f.inputs "Agregar noticias" do
      f.input  :name
      f.input  :title
      f.input  :bodyone
      f.input  :subtitle
      f.input  :bodytwho
      f.input  :subtitletwo
      f.input  :bodythree
    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
    def index_new_params
      params.require(:index_new).permit(:name, :title, :bodyone ,:subtitle ,:bodytwho ,:subtitletwo ,:bodythree )
    end


  end

end