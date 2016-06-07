#---
# Excerpted from "Crafting Rails 4 Applications",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/jvrails2 for more book information.
#---
class SampleMail < MailForm::Base
  attributes :name, :email

  attributes :nickname
  validates :nickname, absence: true

  before_deliver do
    evaluated_callbacks << :before
  end
  after_deliver do
    evaluated_callbacks << :after
  end
  def evaluated_callbacks
    @evaluated_callbacks ||= []
  end

  def headers
    { to: "recipient@example.com", from: self.email }
  end
end
