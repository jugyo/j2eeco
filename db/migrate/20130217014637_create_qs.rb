class CreateQs < ActiveRecord::Migration
  def change
    create_table :qs do |t|
      t.string :text, null: false
      t.string :to, null: false
      t.timestamps
    end
  end
end
