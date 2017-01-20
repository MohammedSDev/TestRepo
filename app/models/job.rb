class Job < ActiveRecord::Base

	has_many :employees

	after_touch do |job|
		puts
		puts "After Touch Job..:)"
		puts
	end

	after_initialize do |job|
		puts
		puts "After Initialize Man..:)"
		puts
	
	end

	after_find do |job|
		puts
		puts "After find Man..:)"
		puts
	
	end

	# def initialize x
	# 	super x
	# 	puts
	# 	puts "Initialize,x:: #{x.class} ,, X:::\n #{x}"
	# 	puts
	# end

	# before_validation :default_salary
	
	# before_save  do
	# 	puts
	# 	puts "before save"
	# 	puts
	# end
	# before_create  do
	# 	puts
	# 	puts "before Create"
	# 	puts
	# end


	# validates_presence_of :salary,message: 'Is Blank..man'


	private
	def default_salary
		self.salary = 1000 if self.salary.nil?

		puts
		puts "default_salary"
		puts
	end
end
