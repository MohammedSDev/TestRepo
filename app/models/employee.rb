class Employee < ActiveRecord::Base

	belongs_to :job

	def touch

		puts
		puts " Touch Me... Employee..:: #{self.id}"
		puts
	end

	after_touch do |job|
		puts
		puts "After Touch Employee..:)"
		puts
	end
end
