class CreateGrocessoris < ActiveRecord::Migration
  def change
    create_table :grocessoris do |t|
      t.string :fruit
      t.string :vegetable

      t.timestamps null: false
    end
  end
end
