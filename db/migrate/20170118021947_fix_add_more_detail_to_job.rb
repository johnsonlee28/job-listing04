class FixAddMoreDetailToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company_name, :integer
    add_column :jobs, :place, :integer
  end
end
