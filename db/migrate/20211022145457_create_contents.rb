class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :url
      t.string :image
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
