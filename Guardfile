# More info at https://github.com/guard/guard#readme

guard 'cucumber' do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end

#guard 'minitest' do
#  watch(%r|^spec/(.*)_spec\.rb|)
#  watch(%r|^lib/(.*)([^/]+)\.rb|) { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
#  watch(%r|^spec/spec_helper\.rb|) { "spec" }
#end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  watch(/^.+\.gemspec/)
end
