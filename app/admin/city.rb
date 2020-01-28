# frozen_string_literal: true

ActiveAdmin.register City do
  permit_params :ext_id, :state_id, :name
  menu parent: "Organisations Management"
  index do
    id_column
    column :name
    column :state_id do |city| 
      link_to State.find(city.state_id).name, "/admin/states/#{city.state_id}"
    end
    actions
  end

  filter :name
  filter :state_id do |city| 
    link_to State.find(city.state_id).name, "/admin/states/#{city.state_id}"
  end
  filter :created_at

  show do
    attributes_table do
      row :name
      row :state_id do |city| 
        if city.state_id
          link_to State.find(city.state_id).name, "/admin/states/#{city.state_id}"
        end
        
      end
      row :created_at
    end
  end

  form do |f|
    f.inputs "City Details" do
      f.input :name
      f.input :state_id, label: "State", as: :select, collection: State.all.map { |state|
        [state.name.to_s, state.id]
      }
    end
    f.actions
  end
end
