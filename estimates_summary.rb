class Estimates_summary < ActiveRecord::Base

  self.table_name='estimates_summary'
  validates :state, presence: true,
                    length: { minimum: 2 }

end