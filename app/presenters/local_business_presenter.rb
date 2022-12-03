class LocalBusinessPresenter < SimpleDelegator
  def initialize(model)
    @model = model
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
      'address': {
          '@type': 'PostalAddress',
          'streetAddress': @model.address,
          'addressCountry': @model.country # To be changed to 2 digit.
        },
      'telephone': @model.phone_number,
      'aggregateRating': {
        '@type': 'AggregateRating',
        'bestRating': 5, #methods to be calculated
        'worstRating': 1,
        'ratingValue': 5,
        'reviewCount': 1,
      }
    }
    # Still to add all the Reviews without the ItemReviewed part.
  end
end
