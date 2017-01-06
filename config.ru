class Application
end

run Application

at_exit { puts "This runs with 'torquebox run' but not as a jar" }
