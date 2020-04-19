Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# /app/assets
Rails.application.config.assets.precompile += %w( admins.js admins.scss
                                                  admin_devise.js admin_devise.scss )

# /lib/assets
Rails.application.config.assets.precompile += %w( custom.js custom.css
                                                  img.jpg
                                                  animate.css )
# /vendor/assets
#Rails.application.config.assets.precompile += %w(  )