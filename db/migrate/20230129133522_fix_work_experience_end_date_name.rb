class FixWorkExperienceEndDateName < ActiveRecord::Migration[7.0]
  def change
    rename_column :work_experiences, :end_end, :end_date
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
