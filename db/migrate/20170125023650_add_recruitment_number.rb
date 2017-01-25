class AddRecruitmentNumber < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :recruitment_number, :integer
  end
end
