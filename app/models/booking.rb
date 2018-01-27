class Booking < ApplicationRecord
  belongs_to :car
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "wpisz poprawny adres e-mail" }
  validates :phone, presence: true, length: 12
  validates :started_at, presence: {message: "wpisz pczątek rezerwacji"}
  validates :ended_at, presence: {message: "wpisz koniec rezerwacji"}
end
