class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :total, precision: 5, scale: 2

      t.timestamps
    end
  end
end
