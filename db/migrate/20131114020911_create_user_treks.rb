class CreateUserTreks < ActiveRecord::Migration
  def change
    create_table :user_treks do |t|
      t.references :user, index: true
      t.references :trek, index: true

      t.timestamps
    end
  end
end
