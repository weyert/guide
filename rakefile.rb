# Import the extra rakefiles 
Dir.glob('rakefiles/*.rb').each { |r| import r }


require 'sprout'
# Optionally load gems from a server other than rubyforge:
# set_sources 'http://gems.projectsprouts.org'
sprout 'as3'

############################################
# Configure your Project Model
project_model :model do |m|
  m.project_name            = 'TVGuide'
  m.language                = 'as3'
  m.background_color        = '#FFFFFF'
  m.width                   = 1024
  m.height                  = 600
  # m.use_fdb               = true
  # m.use_fcsh              = true
  # m.preprocessor          = 'cpp -D__DEBUG=false -P - - | tail -c +3'
  # m.preprocessed_path     = '.preprocessed'
  m.src_dir                 = 'flash/src'
  m.lib_dir                 = 'flash/lib/src'
  m.swc_dir                 = 'flash/lib/swc'
  m.bin_dir                 = 'flash/bin'
  m.test_dir                = 'test'
  # m.doc_dir               = 'doc'
  m.asset_dir               = 'flash/assets'
  m.compiler_gem_name       = 'sprout-flex4sdk-tool'
  m.compiler_gem_version    = '>= 4.0.0'

  m.source_path           << "#{m.lib_dir}/robotlegs"
  m.source_path           << "#{m.lib_dir}/greensock"
    
  m.support_dir             = 'support'  

  # m.source_path           << "#{m.lib_dir}/somelib"
  # m.libraries             << :corelib
end

desc 'Compile and debug the application'
debug :debug do |t|
  t.load_config           << "dev/constants-config.xml"
  t.source_path           << "support" 
  t.debug                  = true
end

desc 'Compile run the test harness'
unit :test do |t|
  t.source_path           << "support" 
  t.source_path           << "flash/lib/src/mockolate"  
  t.library_path          << 'flash/lib/swc/asx.swc'
  t.library_path          << 'flash/lib/swc/hamcrest.swc'
  t.library_path          << 'flash/lib/swc/FLoxy.swc'
end

desc 'Compile the optimized deployment'
deploy :deploy do |t|
end

desc 'Create documentation'
document :doc

desc 'Compile a SWC file'
swc :swc

desc 'Compile and run the test harness for CI'
ci :cruise

# set up the default rake task
task :default => :debug
