class CreateTreks < ActiveRecord::Migration
  def change
    create_table :treks do |t|
      t.string :name

      t.timestamps
    end
  end
end
