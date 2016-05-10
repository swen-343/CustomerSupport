class AddAddressToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :address, :string
  end
end
