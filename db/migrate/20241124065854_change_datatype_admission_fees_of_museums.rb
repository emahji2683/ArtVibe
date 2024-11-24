class ChangeDatatypeAdmissionFeesOfMuseums < ActiveRecord::Migration[7.2]
  def change
    change_column :museums, :admission_fees, :text 
  end
end
