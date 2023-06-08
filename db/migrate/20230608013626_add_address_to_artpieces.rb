class AddAddressToArtpieces < ActiveRecord::Migration[7.0]
  def change
    add_column :artpieces, :address, :string
  end
end
