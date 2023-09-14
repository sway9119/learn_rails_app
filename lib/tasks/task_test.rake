namespace :task_test do
  desc "Hello worldを出力するタスク（rails task_test:helloで使用可能）"
  
  task :hello do
    puts 'Hello'
  end

  task :hello_world => [:hello] do
    puts 'world'
  end
end