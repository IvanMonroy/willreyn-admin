# app/admin/products.rb
ActiveAdmin.register Product, :as => "Productos" do

  actions :all
  permit_params :name, :price, :description ,:mark ,:imgurl ,:available ,:imageurltwo, :category
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
  filter :available
  filter :category

  form(:html => { :multipart => true }) do |f|
    f.inputs "Agregar productos" do
      f.input :name, label: "Nombre"
      f.input :price, label: "Precio"
      f.input :description, label: "Descripción"
      f.input :mark, label: "Marca"
      f.input :imgurl, :as => :file, label: "Imagen 1"
      f.input :imageurltwo, :as => :file, label: "Imagen 2"
      DISPONIBILIDADES = [["Sí","true"], ["No","false"]]
      f.input :available, :label => 'Disponibles', :as => :select, :collection => DISPONIBILIDADES

      f.input :category, label: "Categoría"

    end
    f.actions
  end
  # Customize columns displayed on the index screen in the table
  controller do
    def create
      @product = Product.new(product_params)
      print product_params
      @product.imgurl = Base64.encode64(product_params[:imgurl].read).gsub(/[\r\n]+/, '')
      @product.imageurltwo = Base64.encode64(product_params[:imageurltwo].read).gsub(/[\r\n]+/, '')
      if @product.save
        redirect_to productos_path
      end
    rescue Exception => e
      print e
    end

    def update
      @product = Product.find_by_id(params[:id])

      @product.name = product_params[:name]
      @product.price = product_params[:price]
      @product.description = product_params[:description]
      @product.mark = product_params[:mark]
      @product.available = product_params[:available]
      @product.category = product_params[:category]

      unless product_params[:imgurl].nil?
        @product.imgurl = Base64.encode64(product_params[:imgurl].read).gsub(/[\r\n]+/, '')
      end

      unless product_params[:imageurltwo].nil?
        print 'compa image no llefo null'
        @product.imageurltwo = Base64.encode64(product_params[:imageurltwo].read).gsub(/[\r\n]+/, '')
      end

      if @product.save
         redirect_to productos_path
      end
    rescue Exception => e
      print e
    end

    private
    def product_params
      params.require(:product).permit(:name, :price, :description ,:mark ,:imgurl ,:available ,:imageurltwo, :category )
    end


  end

end