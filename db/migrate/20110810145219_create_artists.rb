class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :url

      t.timestamps
    end
  end
end
