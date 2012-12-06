class String
  def wordlike?
    return self.length > 0 && self =~ /^[a-z]+$/
  end
end