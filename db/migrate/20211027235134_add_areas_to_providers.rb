class AddAreasToProviders < ActiveRecord::Migration[6.1]
  def change
    add_column :providers, :area, :string
  end
end
