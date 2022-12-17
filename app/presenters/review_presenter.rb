class ReviewPresenter < SimpleDelegator
  def initialize(model)
    @model = model # Review.
    super(@model)
  end

  def to_schema
    schema = {
      '@type': 'Review',
      '@id': 'review id url',
      'itemReviewed': {
        '@type': 'Organization',
        'image': @model.company.image,
        'name': @model.company.name,
        '@id': 'x', #company url schema like Trustpilot
        'url': 'x', #company show url
        'sameAs': @model.company.website,
        'address': {
          '@type': 'PostalAddress',
          'streetAddress': @model.company.address,
          'addressCountry': @model.company.country # To be changed to 2 digit.
        }
      },
      'author': {
        '@type': 'Person',
        'name': @model.user ? @model.user.first_name : 'Anonymous'
      },
      'datePublished': @model.updated_at.to_time.iso8601,
      'headline': @model.title,
      'reviewBody': @model.description,
      'reviewRating': {
        '@type': 'Rating',
        'ratingValue': @model.score,
        'bestRating': 5,
        'worstRating': 1
      },
      'publisher': {
        '@type': 'Organization',
        'name': 'Opinamos',
        'sameAs': 'https://www.opinamos.io/'
      },
      'inLanguage': 'es'
    }
  end
end
