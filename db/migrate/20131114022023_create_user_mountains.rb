class CreateUserMountains < ActiveRecord::Migration
  def change
    create_table :user_mountains do |t|
      t.references :user, index: true
      t.references :mountain, index: true

      t.timestamps
    end
  end
end
