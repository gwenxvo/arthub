class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.text :content
      t.references :artpiece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
