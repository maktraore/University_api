class CreateCampus < ActiveRecord::Migration[5.0]
  def change
    create_table :campus do |t|
      t.string :address
      t.integer :university_id

      t.timestamps
    end
  end
end
