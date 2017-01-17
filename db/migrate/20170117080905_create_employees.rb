class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :job, :foreign_key => true
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
