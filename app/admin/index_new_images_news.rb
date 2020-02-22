# app/admin/products.rb
ActiveAdmin.register ImagesNew do
  belongs_to :index_new
  navigation_menu :index_new
  actions :all

  # Create sections on the index screen
  index do
    id_column
    column "Imagen 1" do |product|
      image_tag product.imageone.url, class: 'my_image_size'
    end
    column "Imagen 2" do |product|
      image_tag product.imagetwo.url, class: 'my_image_size'
    end
    column "Imagen 3" do |product|
      image_tag product.imagethree.url, class: 'my_image_size'
    end
    actions
    end
  # Filterable attributes on the index screen
  filter :id

  form(:html => { :multipart => true }) do |f|
      f.inputs do
        f.input :index_news_id, :label => 'Noticia ', :as => :select, :collection => IndexNew.all.map {|u| ["#{u.title}" , u.id]} || default_value
        f.input :imageone, :as => :file
        f.input :imagetho, :as => :file
        f.input :imagethree, :as => :file
        f.actions
      end
      end

  # Customize columns displayed on the index screen in the table
  controller do
    alias_method :index_new, :parent
    helper_method :index_new
   private
    def index_new_images_news_params
      params.require(:images_new).permit(:imageone, :index_news_id, :imagetho ,:imagethree )
    end

  end

end