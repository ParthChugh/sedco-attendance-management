# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :email,:created_at,:updated_at,:password,:password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :created_at

  show do
    attributes_table do
      row :email
      row :password
      row :password_confirmation
    end
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
