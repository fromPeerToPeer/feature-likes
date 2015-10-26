nicky   = User.create(name: 'Nicky', email: 'nicky@peertopeer.io')
melinda = User.create(name: 'Melinda', email: 'melinda@peertopeer.io')
drew    = User.create(name: 'Drew', email: 'drew@peertopeer.io')

keyboard_feature = FeatureRequest.create(title: 'Allow for keyboard-only use')
mouse_feature    = FeatureRequest.create(title: 'Allow for mouse-only use')
reader_feature   = FeatureRequest.create(title: 'Allow for screenreader use')
colour_feature   = FeatureRequest.create(title: 'Be not hostile to the colour blind')
