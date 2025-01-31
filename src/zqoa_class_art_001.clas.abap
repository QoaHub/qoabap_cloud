CLASS zqoa_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zqoa_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zqoa_tab_art.

  it_art = VALUE #(
      ( client = sy-mandt
        id_art = 1
        descr = 'minicolores'
        desc2 = 'un mini estuche'
        color = 'varios'
        piezas = 12
        stock = 10
        url = 'https://upload.wikimedia.org/wikipedia/commons/5/59/SAP_2011_logo.svg' )
      ( client = sy-mandt
        id_art = 2
        descr = 'lapices'
        desc2 = 'un estuche de lápices'
        color = 'rojo'
        piezas = 24
        stock = 50
        url = 'https://plazavea.vteximg.com.br/arquivos/ids/6501540-1000-1000/20145485.jpg' )
      ( client = sy-mandt
        id_art = 3
        descr = 'libreta'
        desc2 = 'libreta de notas'
        color = 'azul'
        piezas = 5
        stock = 20
        url = 'https://plazavea.vteximg.com.br/arquivos/ids/19741969-1000-1000/20289488.jpg' )
    ).

    INSERT zqoa_tab_art from   table @it_art.
    if sy-subrc = 0.
    out->write( 'insersion successful' ).
    ELSE.
    out->write( 'insersion wrong' ).
    endif.


  ENDMETHOD.
ENDCLASS.
