class CreateConfigs < ActiveRecord::Migration[7.1]
  def change
    create_table :configs do |t|
      t.string :name
      t.json :schema

      t.timestamps
    end
  end
end
