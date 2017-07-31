require "administrate/base_dashboard"

class BookDealDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    book: Field::BelongsTo,
    user: Field::BelongsTo,
    id: Field::Number,
    condition: EnumField,
    status: EnumField,
    publish_at: Field::DateTime,
    edition: Field::String,
    release_date: Field::DateTime,
    description: Field::Text,
    price: Field::String.with_options(searchable: false),
    return_date: Field::DateTime,
    deal_id: Field::Number,
    deal_type: EnumField,
    deal_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :book,
    :user,
    :id,
    :condition,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :book,
    :user,
    :id,
    :condition,
    :status,
    :publish_at,
    :edition,
    :release_date,
    :description,
    :price,
    :return_date,
    :deal_id,
    :deal_type,
    :deal_date,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :book,
    :user,
    :condition,
    :status,
    :publish_at,
    :edition,
    :release_date,
    :description,
    :price,
    :return_date,
    :deal_id,
    :deal_type,
    :deal_date,
  ].freeze

  # Overwrite this method to customize how book deals are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(book_deal)
  #   "BookDeal ##{book_deal.id}"
  # end
end
