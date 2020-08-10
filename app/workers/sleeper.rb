class Sleeper
  @queue=:sleep

  class<<self
    def perform seconds
      sleep(seconds)
      puts "job completed"
    end
  end
end