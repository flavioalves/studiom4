class ContactMailer < ActionMailer::Base
  default from: "flaviof.alves@gmail.com"

  def contact_mail(contact)
    puts "==" * 30
    @contact = contact
    mail(to: @contact.email, subject: '[StudioM4] Contato pelo site')
  end

end
