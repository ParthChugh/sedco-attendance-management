class CreateOrgs < ActiveRecord::Migration[6.0]
  def change
    create_table :orgs do |t|
      t.bigint :parent_id
      t.bigint :ext_id
      t.string :name, :null => false
      t.string :address_line1
      t.string :address_line2
      t.references :city, :foreign_key => true, index: true
      t.references :state, :foreign_key => true, index: true
      t.string :country, :default => 'IN'
      t.integer :pincode, :limit => 6 
      t.string :phone
      t.datetime :deleted_at

      t.timestamps
    end
  end
end

