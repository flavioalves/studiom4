class ContactMailer < ActionMailer::Base
  default from: "contato@studiom4.com.br"

  def contact_mail(contact)
    puts "==" * 30
    @contact = contact
    mail(to: @contact.email, subject: '[StudioM4] Contato pelo site')
  end

end
