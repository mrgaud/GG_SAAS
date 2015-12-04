class ContactMailer < ActionMailer::Base
    default to: "michael.G224@gmail.com"
    
    def contact_email(name, email, body)
        @name = name
        @email = email 
        @body = body 
        
        mail(from: email, subject: "Contact from message")
    end
    
end