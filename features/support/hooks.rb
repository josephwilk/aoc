# Before('@cucumis,@sativus') do
#   # This will only run before scenarios tagged
#   # with @cucumis OR @sativus.
# end
# 
# Before do
#   # Do something before each scenario.
# end
# 
# Before('@cucumis', '@sativus') do
#   # This will only run before scenarios tagged
#   # with @cucumis AND @sativus.
# end
# 
# After do |s| 
#   # Tell Cucumber to quit after this scenario is done - if it failed.
#   Cucumber.wants_to_quit = true if s.failed?
# end
# 
# After do |scenario|
#   # Do something after each scenario.
#   # The +scenario+ argument is optional, but
#   # if you use it, you can inspect status with
#   # the #failed?, #passed? and #exception methods.
# 
#   if(scenario.failed?)
#     subject = "[Project X] #{scenario.exception.message}"
#     send_failure_email(subject)
#   end
# end
# 
# Around('@fast') do |scenario, block|
#   Timeout.timeout(0.5) do
#     block.call
#   end
# end
# 
# AfterConfiguration do |config|
#   puts "Features dwell in #{config.feature_dirs}"
# end
# 
# AfterStep do |scenario|
#   # Do something after each step.
# end
# 
# at_exit do
#   my_heavy_object.undo_it
# end