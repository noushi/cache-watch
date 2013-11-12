require 'rb-inotify'

class Sentinel
  def initialize()
    @notifier = INotify::Notifier.new
    
  end
  


  def add_watch(file, &block) 
    
  end


  def run
    @notifier.run
  end

end
