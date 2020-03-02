class Doctor <ApplicationRecord
  validates_presence_of :name, :specialty, :university
  belongs_to :hospital
  has_many :patient_doctors
  has_many :patients, through: :patient_doctors

  def patients_sorted
    patients.order(age: :desc)
  end

  def remove_patient
  end
end
