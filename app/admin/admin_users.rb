ActiveAdmin.register AdminUser, :as => "Usuarios" do
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column "Correo", :email
    column "Último ingreso", :current_sign_in_at
    column "Núero de ingresos", :sign_in_count
    column "Fecha de creación", :created_at
    actions
  end

  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email, label: "Correo"
      f.input :password, label: "Contraseña"
      f.input :password_confirmation, label: "Confirmación de contraseña"
    end
    f.actions
  end

end
