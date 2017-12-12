class CreateUseTypes < ActiveRecord::Migration
  def change
    create_table :use_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
