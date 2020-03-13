class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.references :product
      t.references :check
      t.timestamps
    end
  end
end
