class CreateClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :clicks do |t|
      t.integer :click, default: 0
      t.string :city, index: true, default: 'Mars'
    end
  end
end
