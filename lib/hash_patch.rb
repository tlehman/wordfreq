class Hash
  def to_table
    columns = self.sort_by { |k,v| -v.to_i }
    max_len = columns.map { |p| p.first.length }.max
    width = max_len + 1
    return columns.map { |p| p.first.ljust(width) + p.last.to_s }.join("\n")
  end
end