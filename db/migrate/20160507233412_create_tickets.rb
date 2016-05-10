class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :status, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.datetime :closed_at

      t.timestamps null: false
    end
  end
end
