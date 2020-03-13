class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :login
      t.string :name
      t.string :password_digest
    end
  end
end
