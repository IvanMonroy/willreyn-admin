# app/admin/products.rb
ActiveAdmin.register Product do

  actions :all

  # Create sections on the index screen

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
      f.input :name
      f.input :price
      f.input :description
      f.input :mark
      f.input :imgurl
      f.input :available
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
      f.input :category

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