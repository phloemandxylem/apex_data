class Account < ApplicationRecord
  def self.to_csv
    attributes = %w{id email name}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |account|
      csv << attributes.value_at(*attributes)
      end
    end
  end
end
