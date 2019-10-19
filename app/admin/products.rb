# app/admin/products.rb
ActiveAdmin.register Product do

  actions :all

  # Create sections on the index screen

  # Filterable attributes on the index screen
  filter :id
  filter :quantity
  filter :name
  filter :price

  # Customize columns displayed on the index screen in the table
  controller do
   private
    def product_params
      params.require(:product).permit(:name, :quantity, :price)
    end

  end

end