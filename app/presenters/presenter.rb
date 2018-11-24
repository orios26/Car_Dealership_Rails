class Presenter

  def initialize(model)
    @model = model
  end

  def as_json
    raise 'as_json called on parent.'
  end

end
