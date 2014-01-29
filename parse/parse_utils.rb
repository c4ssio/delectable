class Array
  def hash_array_to_tsv
    _ha = self
    if _ha.first.nil? or _ha.first.class!=Hash
      return ""
    end
    _max_row_length  = _ha.map{|h| h.keys.length}.max
    _header_keys     = _ha.select{|h| h.keys.length == _max_row_length}.first.keys
    _header          = _header_keys.join("\t")
    _rows = _ha.map do |r|
      _header_keys.map{|k| r[k].to_s.clear_delims}.join("\t")
    end
    ([_header] + _rows).join("\n")
  end
end

class String
  def clear_delims
    self.gsub("\n"," ").gsub("\t"," ")
  end
end
