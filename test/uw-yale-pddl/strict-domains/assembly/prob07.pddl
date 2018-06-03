(DEFINE (PROBLEM ASSEM-5)
   (:DOMAIN ASSEMBLY)
   (:OBJECTS WIDGET PLUG SOCKET HOOZAWHATSIE CONTRAPTION DOODAD
             VALVE SPROCKET FROB THINGUMBOB FOOBAR FASTENER BRACKET
             WHATSIS CONNECTOR - ASSEMBLY
             TWEEZERS - RESOURCE)
   (:INIT (AVAILABLE SOCKET)
          (AVAILABLE HOOZAWHATSIE)
          (AVAILABLE CONTRAPTION)
          (AVAILABLE DOODAD)
          (AVAILABLE VALVE)
          (AVAILABLE SPROCKET)
          (AVAILABLE FOOBAR)
          (AVAILABLE FASTENER)
          (AVAILABLE WHATSIS)
          (AVAILABLE CONNECTOR)
          (REQUIRES PLUG TWEEZERS)
          (REQUIRES FROB TWEEZERS)
          (PART-OF PLUG WIDGET)
          (PART-OF FROB WIDGET)
          (PART-OF SOCKET PLUG)
          (PART-OF HOOZAWHATSIE PLUG)
          (PART-OF CONTRAPTION PLUG)
          (PART-OF DOODAD PLUG)
          (PART-OF VALVE PLUG)
          (PART-OF SPROCKET PLUG)
          (PART-OF THINGUMBOB FROB)
          (PART-OF BRACKET FROB)
          (PART-OF FOOBAR THINGUMBOB)
          (PART-OF FASTENER THINGUMBOB)
          (PART-OF WHATSIS BRACKET)
          (PART-OF CONNECTOR BRACKET)
          (ASSEMBLE-ORDER PLUG FROB WIDGET)
          (ASSEMBLE-ORDER SOCKET DOODAD PLUG)
          (ASSEMBLE-ORDER DOODAD CONTRAPTION PLUG)
          (ASSEMBLE-ORDER SPROCKET HOOZAWHATSIE PLUG)
          (ASSEMBLE-ORDER THINGUMBOB BRACKET FROB)
          (ASSEMBLE-ORDER CONNECTOR WHATSIS BRACKET))
   (:GOAL (COMPLETE WIDGET)))