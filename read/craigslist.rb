require 'yql'
require 'json'
_yql              = Yql::Client.new
_query            = Yql::QueryBuilder.new 'craigslist.search'
_query.conditions = {:type => 'sss', :location => 'sfbay', :query => 'wine'}
_yql.query        = _query
_yql.format       = 'json'
_response         = _yql.get
puts                _response.show
