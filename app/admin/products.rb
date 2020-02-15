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
  filter :image
  filter :image
  filter :category

  # Customize columns displayed on the index screen in the table
  controller do
   private
    def product_params
      params.require(:product).permit(:name, :quantity, :price)
    end

  end

end