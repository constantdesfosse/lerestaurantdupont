class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Nouveau message sur IDA",
      :to => "idaguyot@gmail.com",
      :from => %("#{nom}" <#{email}>)
    }
  end
end
