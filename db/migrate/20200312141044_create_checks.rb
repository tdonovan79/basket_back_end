class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.references :employee
      t.boolean :open
      t.timestamps
    end
  end
end
