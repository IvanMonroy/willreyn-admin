# app/admin/products.rb
ActiveAdmin.register Product, :as => "Productos" do

  actions :all
  permit_params :name, :price, :description ,:mark ,:imgurl ,:available ,:image, :category
  # Create sections on the index screen
  index do
    id_column
    column  "Nombre", :name
    column  "Precio", :price
    column  "Descripción", :description
    column  "Marca", :mark
    column  "Disponible", :available
    column  "Categoría", :category
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
      f.input :imgurl, :as => :file, label: "Imagen 1"
      f.input :image, :as => :file, label: "Imagen 2"
      f.input :available, label: "Disponibilidad"
      f.input :category, label: "Categoría"

    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
    def create
      @product = Product.new(product_params)
      print product_params
      #@product.imgurl = Base64.encode64(product_params[:imgurl].read).gsub(/[\r\n]+/, '')
      @product.image = Base64.encode64(product_params[:image].read).gsub(/[\r\n]+/, '')
      @product.save

    rescue Exception => e
      print e
    end

    private
    def product_params
      params.require(:product).permit(:name, :price, :description ,:mark ,:imgurl ,:available ,:image, :category )
    end


  end

end