class LocalBusinessPresenter < SimpleDelegator
  def initialize(model)
    @model = model # Company
    super(@model)
  end

  def to_schema
    schema = {
      '@type': 'LocalBusiness',
      '@id': 'show url',
      'url': 'show url',
      'sameAs': @model.website,
      'name': @model.name,
      'image': @model.image,
      'telephone': @model.phone_number,
      'address': {
          '@type': 'PostalAddress',
          'streetAddress': @model.address,
          'addressCountry': @model.country # To be changed to 2 digit.
        },
      'aggregateRating': {
        '@type': 'AggregateRating',
        'bestRating': 5, #methods to be calculated
        'worstRating': 1,
        'ratingValue': 5,
        'reviewCount': 1,
      }
    }
  end
end
