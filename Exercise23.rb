# frozen_string_literal: true

require 'CSV'
csvfile = File.open('read.csv', 'r')

employees = Hash.new { |h, k| h[k] = [] }

CSV.foreach('read.csv', headers: true) do |row|
  employees[:"#{row['Designation']}"] << "#{row['Name']} (EmpId: #{row['EmpId']})"
end

# employees.sort.to_h
employees = employees.sort_by { |_h, k| k }.to_h
# employees.sort.map


File.open('23.txt', 'w') do |i|
  employees.each do |h, v|
    if v.count > 1
      i.write("#{h}s: #{v}\n")
    else
      i.write("#{h}: #{v}\n")
    end
  end
end
