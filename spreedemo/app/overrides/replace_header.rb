Deface::Override.new(virtual_path: "spree/shared/_header",
                     replace: "*",
                     partial: "spree/shared/header_mine",
                     name: "header")