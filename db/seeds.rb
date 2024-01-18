terms_of_service_content = File.read(Rails.root.join('legal', 'terms_of_service.txt'))
code_of_conduct_content = File.read(Rails.root.join('legal', 'code_of_conduct.txt'))

LegalDocument.create(name: 'Terms of Service', content: terms_of_service_content)
LegalDocument.create(name: 'Code of Conduct', content: code_of_conduct_content)
