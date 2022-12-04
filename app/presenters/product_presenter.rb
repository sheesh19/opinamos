class ProductPresenter < SimpleDelegator
  def initialize(model)
    @model = model
    super(@model)
  end

  def to_schema
    schema = {
      '@type': 'Product',
      'name': @model.title,
      'url': '' # self referring url,
      'brand': {
        '@type': 'Brand',
        'name': @model.brand,
        'logo': @model.company.image
      },
      'image': @model.image,
      'aggregateRating': {
        '@type': 'AggregateRating',
        'bestRating': 5,
        'worstRating': 1,
        'ratingValue': 1.7 # To fix with methods,
        'reviewCount': 3
      }
    }
  end
end
