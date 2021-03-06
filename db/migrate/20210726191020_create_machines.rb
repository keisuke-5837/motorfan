class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.references :user, null: false, foreign_key: true
      t.text       :charm
      t.string     :name
      t.integer    :category_id, null: false
      t.timestamps
    end
  end
end
