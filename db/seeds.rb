require 'csv'

csv_names = [
  ["accounts", Account],
]

csv_names.each do |fileName, className|
  path = Rails.root.join('db', 'csv', "#{fileName}.csv")
  if File.exist?(path)
    csv_data = CSV.read(path, headers: true)
    csv_data.each do |data|
      className.create!(data.to_hash)
    end
    puts "finished import CSV #{fileName}"
  end
end
