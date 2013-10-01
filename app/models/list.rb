class List < ActiveRecord::Base
  attr_accessible :approved, :approved_at, :approved_by, :canceled, :canceled_at, :canceled_by, :list_code, :comments, :conversion_rejects, :converted_quantity, :date_received, :declared_quantity, :expected_quantity, :job_id, :list_name, :po, :received_quantity, :segment, :segment2, :status, :list_type

  validates :list_type, presence: true
  validates :po, presence: true
  validates :list_code, presence: true
  validates :list_name, presence: true
  validates :segment, presence: true
  validates :segment2, presence: true
  validates :expected_quantity, numericality: true
  validates :converted_quantity,numericality: true
  validates :declared_quantity, numericality: true
  validates :received_quantity, numericality: true

  belongs_to :job, :dependent => :destroy

end
