require "./employee.rb"
require "./reportable.rb"

module Actualize
  class Manager < Employee
    include Reportable

    attr_reader :employees

    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    def send_report
      puts "Sending email..."
      # use email sending library...
      puts "Email sent!"
    end

    def give_all_raises
      employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      employees.each do |employee|
        employee.active = false
      end
    end
  end
end