require             'json'
require             './parse_utils'
_input            = File.read 'stage1.out'
_hash             = JSON.parse _input
_items            = _hash['query']['results']['RDF']['item']
puts                _items.hash_array_to_tsv
