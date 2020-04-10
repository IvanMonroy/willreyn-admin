ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc {"Tecni hidráulicos JB" }

  content title: proc { "Tecni hidráulicos JB" } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Bienvenido al administrador de Tecni hidráulicos JB"
        small "Aquí podrá registrar el contenido de la página web."
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
