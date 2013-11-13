class CreateTreks < ActiveRecord::Migration
  def change
    create_table :treks do |t|
      t.string :name
      t.string :url
      t.string :diff
      t.float :distance
      t.string :duration
      t.text :desc

      t.timestamps
    end
  end
end
