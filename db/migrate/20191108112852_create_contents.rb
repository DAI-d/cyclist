class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title, null: false
      t.references :prefecture, null: false, foregin_key: true
      t.text :landscape_image
      t.text :route_image
      t.text :route_url, null:false
      t.integer :distance, null:false
      t.integer :max_elevation, null:false
      t.integer :total_elevation, null:false
      t.timestamps
    end
  end
end
