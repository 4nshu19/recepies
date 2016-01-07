class CreateRecepies < ActiveRecord::Migration
  def change
    create_table :recepies do |t|
    t.string :name
    t.text :summary
    t.text :description
    t.timestamps
    end
  end
end
