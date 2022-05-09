with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada,Integer_Text_IO;

procedure Biblioteca is
   libros: array(1..5) of int:=(2,2,2,2,2);

begin
   procedure Coger_Libro is
   begin
      Put("Introduce el libro que deseas coger:");
      Get(l);
      Skip_Line;
      if libros(l)<1 then
         Put("No hay copias disponibles");
      else
         Put("Libro cogido");
         libros(l)=libros'Image(l)-1;
   end Coger_Libro;

   procedure Dejar_Libro is
   begin
      Put("Introduce el libro que deseas dejar:");
      Get(l);
      Skip_Line;
      Put("Libro devuelto");
      libros(l)=libros'Image(l)+1;
   end Dejar_Libro;

   procedure Consultar_Copias is
   begin
      for i in libros'Range loop
          Put(libros'Image(i));
      end loop;
   end Consultar_Copias;

end Biblioteca;
