class InputHandler
  def initialize(argv, io)
    @content = (argv.empty?) ? handle_io(io) : handle_args(argv)
  end

  def content
    @content.gsub(/[\n\#]/, '') rescue ""
  end

  private

  def handle_args(argv)
    filenames = argv.select { |a| File.exist? a }

    if filenames.empty?
      return argv.join(' ')      
    else
      return filenames.map do |f| 
        File.open(f).read()
      end.join(' ') 
    end
  end

  def handle_io(io)
    r = io.readlines()
    (r.class.respond_to? :join) ? r.join(' ') : r
  end
end
