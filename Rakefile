desc "Run tests."
task :test do
  $LOAD_PATH.unshift *%w(./lib ./spec)
  Dir["./spec/*_spec.rb"].each { |f| require(f) }
end

task :default => :test
