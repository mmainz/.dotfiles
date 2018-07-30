begin
  require 'bundler'
  Bundler.require
  $LOAD_PATH << File.join(Dir.pwd, 'lib')
rescue
end

begin
  require 'irbtools'
rescue
end
