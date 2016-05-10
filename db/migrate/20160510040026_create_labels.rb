class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.references :ticket, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
