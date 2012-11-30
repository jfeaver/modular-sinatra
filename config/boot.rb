app_dir = File.expand_path("../", File.dirname(__FILE__))

require "#{app_dir}/application"

controller_files = File.join(app_dir, %w(controllers ** *_controller.rb))
lib_files = File.join(app_dir, %w(lib ** *))

files = [controller_files, lib_files]

Dir.glob(files).each {|lf| require lf }
