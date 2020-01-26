class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.bigint :ext_id
      t.string :country, :default => 'IN'
      t.string :state_code, :null => false
      t.string :name, :null => false

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
