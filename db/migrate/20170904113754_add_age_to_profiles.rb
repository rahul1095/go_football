class AddAgeToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :age, :integer
    add_column :profiles, :country, :string
    add_column :profiles, :city_town, :string
    add_column :profiles, :resident_address, :string
    add_column :profiles, :my_football_possition, :string
  end
end
