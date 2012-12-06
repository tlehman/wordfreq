require_relative '../../lib/input_handler'

describe InputHandler do
  let (:content) { 'an improbable string indeed' }

  context "ARGV nonempty" do

    before(:each) do
      File.stub_chain([:open, :read]).and_return(content)
    end

    context "filename" do
      it "returns the contents of file" do
        File.stub(:exist?).and_return(true)
        input_handler = InputHandler.new(['filename.txt'], STDIN)
        input_handler.content.should == content
      end
    end

    context "no filename" do
      it "returns the arguments, joined" do
        File.stub(:exist?).and_return(false)
        input_handler = InputHandler.new(['bogus.txt', 'other', 'stuff'], STDIN)
        input_handler.content.should == 'bogus.txt other stuff'
      end
    end
  end

  context "ARGV empty" do
    it "read contents of STDIN and return a string" do
      STDIN.stub(:readlines).and_return(content)
      input_handler = InputHandler.new([], STDIN)
      input_handler.content.should == content
    end
  end
end
