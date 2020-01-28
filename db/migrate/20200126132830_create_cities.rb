class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.bigint :ext_id
      t.references :state, :foreign_key => true, :index => true
      t.string :name, :null => false

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
