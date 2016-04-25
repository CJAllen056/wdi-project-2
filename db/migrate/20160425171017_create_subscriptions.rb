class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :user_id
      t.string :group_id
      t.string :user_type

      t.timestamps null: false
    end
  end
end
