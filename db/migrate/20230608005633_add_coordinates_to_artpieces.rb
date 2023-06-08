class AddCoordinatesToArtpieces < ActiveRecord::Migration[7.0]
  def change
    add_column :artpieces, :latitude, :float
    add_column :artpieces, :longitude, :float
  end
end
