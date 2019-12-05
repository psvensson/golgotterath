initialization - private
menuCommandOn: aBuilder 
    "Add a custom menu item to the world menu"    
    <worldMenu> 
    
    (aBuilder item: #'Golgotterath')
        order: 0.8; 
        "icon: self icon; "
        help: 'A nice game';
        action: [ self open ]