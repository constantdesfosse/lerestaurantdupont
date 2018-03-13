class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :telephone,      :validate => /\A\d{10}\z/
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Message pour le Restaurant du Pont",
      :to => "sask2mc@gmail.com",
      :from => %("#{nom}" <#{email}>),
      :telephone => %("#{telephone}")
    }
  end
end
