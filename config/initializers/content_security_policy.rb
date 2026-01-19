# Be sure to restart your server when you modify this file.
require 'securerandom'

Rails.application.configure do
  # Desabilita CSP completamente em produção
  unless Rails.env.production?
    config.content_security_policy do |policy|
      policy.default_src :self, :https
      policy.font_src    :self, :https, :data
      policy.img_src     :self, :https, :data
      policy.object_src  :none
      
      policy.script_src  :self, :https, :unsafe_inline, :unsafe_eval,
                         "https://www.gstatic.com",
                         "https://*.googleapis.com"
      
      policy.style_src   :self, :https, :unsafe_inline
      
      policy.connect_src :self, :https,
                         "https://*.googleapis.com",
                         "https://*.gstatic.com", 
                         "https://*.firebase.com",
                         "https://*.firebaseapp.com",
                         "https://securetoken.googleapis.com",
                         "https://identitytoolkit.googleapis.com"
      
      policy.frame_src   :self,
                         "https://*.firebaseapp.com",
                         "https://accounts.google.com",
                         "https://content.googleapis.com"
      
      policy.child_src   :self,
                         "https://*.firebaseapp.com", 
                         "https://accounts.google.com"
      
      policy.form_action :self,
                         "https://*.firebaseapp.com",
                         "https://accounts.google.com"
    end

    config.content_security_policy_nonce_generator = ->(_request) { SecureRandom.base64(16) }
    config.content_security_policy_nonce_directives = %w(style-src)
  end
end