class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :index
      t.string :show
      t.string :edit
      t.string :new

      t.timestamps null: false
    end
  end
end
