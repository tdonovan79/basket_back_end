class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.references :check
      t.integer :amount
      t.boolean :credit
      t.string :last_four
      t.string :stripe_id
      t.timestamps
    end
  end
end
