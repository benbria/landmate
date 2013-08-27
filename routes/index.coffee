# Home

exports.index = (req, res) ->
  res.render 'index', {title: 'Hit the Ground Running'}

exports.hotelFlow = (req, res) ->
  res.render 'hotel-flow/index', {title: 'Hotel Flow'}
