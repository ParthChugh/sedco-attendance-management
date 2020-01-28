# frozen_string_literal: true

ActiveAdmin.register Org do
  permit_params :ext_id, :parent_id, :name, :address_line1, :address_line2, :city_id, :state_id, :country, :pincode, :phone

  menu parent: "Organisations Management"

  index do
    selectable_column 
    column :name  
    column :state_id do |org| 
      link_to State.find(org.state_id).name, "/admin/states/#{org.state_id}"
    end
    column :city_id do |org| 
      if(org.city_id) 
        link_to City.find(org.city_id).name, "/admin/cities/#{org.city_id}"
      end
      
    end
    column :city_id
    column :address_line1
    column :address_line2
    column :pincode
    column :phone
    actions
  end

  filter :name
  filter :ext_id
  filter :state_id, label: "State", as: :select, collection: State.all.map { |state|
    [state.name.to_s, state.id]
  }
  filter :city_id
  filter :address_line1
  filter :address_line2
  filter :pincode
  filter :phone
  filter :country
  filter :created_at

  show do
    attributes_table do
      row :name
      row :state_id do |org| 
        link_to State.find(org.state_id).name, "/admin/states/#{org.state_id}"
      end
      row :city_id do |org| 
        link_to City.find(org.city_id).name, "/admin/states/#{org.city_id}"
      end
      row :address_line1
      row :address_line2
      row :pincode
      row :phone
      row :country
      row :created_at
    end
  end

  form do |f|
    f.inputs "State Details" do
      f.input :name
      f.input :ext_id
      f.input :state_id, label: "State", as: :select, collection: State.all.map { |state|
        [state.name.to_s, state.id]
      }
      f.input :city_id , label: "City", as: :select, collection: City.all
      f.input :address_line1
      f.input :address_line2
      f.input :country, as: :country, priority_countries: ["IN"]
      f.input :pincode
      f.input :phone
    end
    f.actions
  end
end
