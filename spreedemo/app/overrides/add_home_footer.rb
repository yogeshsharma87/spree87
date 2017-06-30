Deface::Override.new(virtual_path: "spree/layouts/spree_application",
                     insert_bottom: "[data-hook='body']",
                     partial: "spree/shared/footer",
                     name: "footer")