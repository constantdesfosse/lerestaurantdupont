class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :telephone,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Message pour le Restaurant du Pont",
      :to => "contact@restaurant-du-pont.fr",
      :from => %("#{nom}" <#{email}>),
      :telephone => %("#{telephone}")
    }
  end
end
