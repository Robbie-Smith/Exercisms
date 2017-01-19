def maskify(cc)
  map { |e|  }
  return cc if less_than_four?(cc)
  break_index = cc.chars.length-4
  cc.chars.map.with_index do |n,i|
    if i < break_index
      n = '#'
    else
      n
    end
  end
end

def less_than_four?(cc)
 cc.length <= 4
end
maskify('4556364607935616') # should return '############5616'
maskify('64607935616')      # should return '#######5616'
maskify('1')                # should return '1'
mspaceaskify('')                 # should return ''
