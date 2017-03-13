with Ada.Unchecked_Conversion;

limited with Gade.Input_Reader;
limited with Gade.Video_Buffer;

package Gade is

private

   Byte_Size : constant := 8;
   Word_Size : constant := 16;

   type Bit is mod 2;

   type Byte is mod 2 ** 8;
   for Byte'Size use Byte_Size;

   type Signed_Byte is range -128..127;
   for Signed_Byte'Size use Byte_Size;

   type Word is mod 2 ** 16;
   for Word'Size use Word_Size;

   -- To use the target machine's native integer type (no representation
   -- clause is used). Guarantees that the architecture supports at least
   -- 17 bits which are used for fast carry checks on 16 bit operations.
   type Native_Unsigned is mod 2 ** 17;

   function To_Signed is
      new Ada.Unchecked_Conversion (Source => Byte,
                                    Target => Signed_Byte);

end Gade;