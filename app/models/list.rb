class List < ApplicationRecord
  has_many :tasks
  belongs_to :user

  # Generate a CSV File of All Movie Records
  def self.to_csv(fields = column_names, options={})
    CSV.generate(options) do |csv|
      all.each do |list|
        list.tasks.all.each do |task|
          csv << [list.title ,task.attributes.values_at(*fields)]
        end
      end
    end
  end
end
