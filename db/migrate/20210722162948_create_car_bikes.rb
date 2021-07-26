class CreateCarBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :car_bikes do |t|
      t.references :user, null: false, foreign_key: true
      t.integer    :category, null: false
      t.text       :charm
      t.timestamps
    end
  end
end
