# app/admin/products.rb
ActiveAdmin.register Product, :as => "Productos" do

  actions :all

  # Create sections on the index screen
  index do
    id_column
    column  "Nombre", :name
    column  "Precio", :price
    column  "Descripción", :description
    column  "Marca", :mark
    column  "Url de imagen", :imgurl
    column  "Disponible", :available
    column  "Categoría", :category
    column "Imagen" do |product|
      image_tag product.image.url, class: 'my_image_size'
    end
    actions
    end
  # Filterable attributes on the index screen
  filter :id
  filter :name
  filter :price
  filter :description
  filter :mark
  filter :imgurl
  filter :available
  filter :category

  form(:html => { :multipart => true }) do |f|
    f.inputs "Agregar productos" do
      f.input :name, label: "Nombre"
      f.input :price, label: "Precio"
      f.input :description, label: "Descripción"
      f.input :mark, label: "Marca"
      f.input :imgurl, label: "Url de Imagen"
      f.input :available, label: "Disponibilidad"
      f.input :image, :as => :file, label: "Imagen"
      f.input :category, label: "Categoría"

    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
   private
    def product_params
      params.require(:product).permit(:name, :price, :description ,:mark ,:imgurl ,:available ,:image, :category )
    end

  end

end