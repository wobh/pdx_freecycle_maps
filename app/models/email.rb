class Email < ActiveRecord::Base
  attr_accessible :message_body, :message_date, :message_id, :subject
end
