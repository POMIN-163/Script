O p t i o n   E x p l i c i t 
 
 D i m   o b j s h e l l , p a t h , D i g i t a l I D ,   R e s u l t 
 
 S e t   o b j s h e l l   =   C r e a t e O b j e c t ( " W S c r i p t . S h e l l " ) 
 
 ' S e t   r e g i s t r y   k e y   p a t h 
 
 P a t h   =   " H K L M \ S O F T W A R E \ M i c r o s o f t \ W i n d o w s   N T \ C u r r e n t V e r s i o n \ " 
 
 ' R e g i s t r y   k e y   v a l u e 
 
 D i g i t a l I D   =   o b j s h e l l . R e g R e a d ( P a t h   &   " D i g i t a l P r o d u c t I d " ) 
 
 D i m   P r o d u c t N a m e , P r o d u c t I D , P r o d u c t K e y , P r o d u c t D a t a 
 
 ' G e t   P r o d u c t N a m e ,   P r o d u c t I D ,   P r o d u c t K e y 
 
 P r o d u c t N a m e   =   " �|�~T�y�"   &   o b j s h e l l . R e g R e a d ( P a t h   &   " P r o d u c t N a m e " ) 
 
 P r o d u c t I D   =   " �N�TI D �"   &   o b j s h e l l . R e g R e a d ( P a t h   &   " P r o d u c t I D " ) 
 
 P r o d u c t K e y   =   " �]�[ň�[���"   &   C o n v e r t T o K e y ( D i g i t a l I D ) 
 
 P r o d u c t D a t a   =   P r o d u c t N a m e   &   v b N e w L i n e   &   P r o d u c t I D   &   v b N e w L i n e   &   P r o d u c t K e y 
 
 ' S h o w   m e s s b o x   i f   s a v e   t o   a   f i l e 
 
 ' I f   v b Y e s   =   M s g B o x ( P r o d u c t D a t a   &   v b l f   &   v b l f   &   " ��\�[���OX[0R�e�NT�" ,   v b Y e s N o   +   v b Q u e s t i o n ,   " W i n d o w s �[���Oo`" )   t h e n 
 
 S a v e   P r o d u c t D a t a 
 
 ' E n d   I f 
 
 ' C o n v e r t   b i n a r y   t o   c h a r s 
 
 F u n c t i o n   C o n v e r t T o K e y ( K e y ) 
 
 C o n s t   K e y O f f s e t   =   5 2 
 
 D i m   i s W i n 1 0 ,   M a p s ,   i ,   j ,   C u r r e n t ,   K e y O u t p u t ,   L a s t ,   k e y p a r t 1 ,   i n s e r t 
 
 ' C h e c k   i f   O S   i s   W i n d o w s   1 0 
 
 i s W i n 1 0   =   ( K e y ( 6 6 )   \   6 )   A n d   1 
 
 K e y ( 6 6 )   =   ( K e y ( 6 6 )   A n d   & H F 7 )   O r   ( ( i s W i n 1 0   A n d   2 )   *   4 ) 
 
 i   =   2 4 
 
 M a p s   =   " B C D F G H J K M P Q R T V W X Y 2 3 4 6 7 8 9 " 
 
 D o 
 
 C u r r e n t =   0 
 
 j   =   1 4 
 
 D o 
 
 C u r r e n t   =   C u r r e n t *   2 5 6 
 
 C u r r e n t   =   K e y ( j   +   K e y O f f s e t )   +   C u r r e n t 
 
 K e y ( j   +   K e y O f f s e t )   =   ( C u r r e n t   \   2 4 ) 
 
 C u r r e n t = C u r r e n t   M o d   2 4 
 
 j   =   j   - 1 
 
 L o o p   W h i l e   j   > =   0 
 
 i   =   i   - 1 
 
 K e y O u t p u t   =   M i d ( M a p s , C u r r e n t +   1 ,   1 )   &   K e y O u t p u t 
 
 L a s t   =   C u r r e n t 
 
 L o o p   W h i l e   i   > =   0 
 
 I f   ( i s W i n 1 0   =   1 )   T h e n 
 
 k e y p a r t 1   =   M i d ( K e y O u t p u t ,   2 ,   L a s t ) 
 
 i n s e r t   =   " N " 
 
 K e y O u t p u t   =   R e p l a c e ( K e y O u t p u t ,   k e y p a r t 1 ,   k e y p a r t 1   &   i n s e r t ,   2 ,   1 ,   0 ) 
 
 I f   L a s t   =   0   T h e n   K e y O u t p u t   =   i n s e r t   &   K e y O u t p u t 
 
 E n d   I f 
 
 C o n v e r t T o K e y   =   M i d ( K e y O u t p u t ,   1 ,   5 )   &   " - "   &   M i d ( K e y O u t p u t ,   6 ,   5 )   &   " - "   &   M i d ( K e y O u t p u t ,   1 1 ,   5 )   &   " - "   &   M i d ( K e y O u t p u t ,   1 6 ,   5 )   &   " - "   &   M i d ( K e y O u t p u t ,   2 1 ,   5 ) 
 
 E n d   F u n c t i o n 
 
 ' S a v e   d a t a   t o   a   f i l e 
 
 F u n c t i o n   S a v e ( D a t a ) 
 
 D i m   f s o ,   f N a m e ,   t x t , o b j s h e l l , U s e r N a m e 
 
 S e t   o b j s h e l l   =   C r e a t e O b j e c t ( " w s c r i p t . s h e l l " ) 
 
 ' G e t   c u r r e n t   u s e r   n a m e 
 
 U s e r N a m e   =   o b j s h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % U s e r N a m e % " ) 
 
 ' C r e a t e   a   t e x t   f i l e   o n   d e s k t o p 
 
 f N a m e   =   o b j s h e l l . E x p a n d E n v i r o n m e n t S t r i n g s ( " % T E M P % " )   &   " \ W i n d o w s K e y . t x t " 
 
 S e t   f s o   =   C r e a t e O b j e c t ( " S c r i p t i n g . F i l e S y s t e m O b j e c t " ) 
 
 S e t   t x t   =   f s o . C r e a t e T e x t F i l e ( f N a m e ) 
 
 t x t . W r i t e l i n e   D a t a 
 
 t x t . C l o s e 
 
 E n d   F u n c t i o n 