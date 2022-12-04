class ProductReviewPresenter < SimpleDelegator
  def initialize(model)
    @model = model # Product review.
    super(@model)
  end

  def to_schema
    schema = {
      '@type': 'Review',
      '@id': 'review id url',
      'itemReviewed': {
        '@type': 'Product',
        'image': @model.product.image,
        'name': @model.product.name,
        '@id': 'x', #product url schema like Trustpilot
        'url': 'x', #product show url
        'sameAs': @model.product.website
      },
      'author': {
        '@type': 'Person',
        'name': @model.user.first_name
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
