require 'rubygems'
require 'roo'

class Job < ActiveRecord::Base
  attr_accessible :name, :number, :file

  has_attached_file :file ,
                    :storage => :s3,
                    :s3_credentials => {
                        :bucket => ENV['s3_bucket'],
                        :access_key_id => ENV['s3_access_key_id'],
                        :secret_access_key => ENV['s3_secret_access_key']
                    }

  validates :name, presence: true
  validates :number, presence: true, numericality: true

  has_many :lists

  after_save :save_lol



  def save_lol
    spreadsheet = Roo::Excel.new(self.file.url)
    (3..spreadsheet.count).each do |no|
      data = {}
      cell = spreadsheet.row(no)
      data[:job_id] = self.id
      data[:list_type] = cell[0]
      data[:po]    = cell[1]
      data[:list_code] = cell[2]
      data[:list_name]  = cell[3]
      data[:segment] = cell[4]
      data[:segment2]   = cell[5]
      data[:expected_quantity] = cell[6]
      data[:date_received] = cell[7]
      data[:declared_quantity] = cell[8]
      data[:received_quantity] = cell[9]
      data[:converted_quantity] = cell[10]
      puts data
      List.create(data)
    end
  end
end
