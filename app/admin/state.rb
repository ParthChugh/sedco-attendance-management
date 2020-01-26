# frozen_string_literal: true

ActiveAdmin.register State do
  permit_params :ext_id, :country, :name, :state_code

  menu parent: "Orgs Management"

  index do
    selectable_column
    id_column
    column :name
    column :ext_id
    column :state_code
    column :country
    column :created_at
    actions
  end

  filter :name
  filter :ext_id
  filter :state_code
  filter :country
  filter :created_at

  show do
    attributes_table do
      row :name
      row :ext_id
      row :state_code
      row :country
      row :created_at
    end
  end

  form do |f|
    f.inputs "State Details" do
      f.input :name
      f.input :ext_id
      f.input :state_code
      f.input :country
    end
    f.actions
  end
end
