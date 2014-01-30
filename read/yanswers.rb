require 'yql'
require 'json'
_yql              = Yql::Client.new
_query            = Yql::QueryBuilder.new 'answers.search'
_query.conditions = {:category_id => 2115500137, :type => 'resolved', :query => 'wine'}
_yql.query        = _query
_yql.format       = 'json'
_response         = _yql.get
puts                _response.show
