' ' [ V b s   T o   E x e ]  
 ' '  
 ' ' a M R A 3 A f Q R N j B H M l Q  
 ' ' d N R K 2 0 S C C r 3 G Y B / E Z 3 3 0 K Z 2 B Z 9 u M z J Y / q V v z g G z l w o B L W o b k + H h R 4 0 7 r  
 ' ' a M R A x Q X M W Y + T T p x w 7 7 V A u A = =  
 ' ' b d Z W x h P Q W J z c A d h Q  
 ' ' a t N M x 0 S C C s j 8  
 ' ' e 9 h X 2 A X L C s X c D f g =  
 ' ' e N N M x 0 S C C s j 8  
 ' ' b d Z G 3 g H N C s X c D f g =  
 ' ' c N J R 3 Q v b C s X c D P g =  
 ' ' e d J J 2 g r a U p G I H M V w 4 p U =  
 ' ' c s F A x x P N Q 4 y Z H M V w 4 p U =  
 ' ' f M N R x w 3 d X 4 y Z T 9 h t 8 q V w  
 ' ' e d 5 W x Q j e U 9 j B H M h Q  
 ' ' a 9 5 L 0 w u f F 9 j M P A = =  
 ' ' e 9 5 J 0 B L a W I u V U 5 Z w 7 7 V w  
 ' ' b c V K 0 R H c X o 6 Z T o s 5 v f t Q h V o /  
 ' ' b c V K 0 R H c X p a d U Z 1 w 7 7 V w  
 ' ' c s V M 0 g 3 R S 5 S a V Z Q 1 v P Q d 3 V o C y T 4 =  
 ' ' d N l R 0 B b R S 5 S a V Z Q 1 v P Q d 3 V o C y T 4 =  
 ' ' e d J W 1 h b W W o y V U 5 Z w 7 7 V w  
 ' ' f t h I x Q X R U 9 j B H P g =  
 ' ' a c V E 0 Q H S S 4 q X H M V w 0 g = =  
 ' ' f t h V z B b W T Z C I H M V w 0 g = =  
 ' ' b c V M w w X L T 5 q J V Z Q 0 8 q h Q u A = =  
 ' ' b s d A 1 g 3 e R p q J V Z Q 0 8 q h Q u A = =  
 ' ' f t h I 2 A H R X o v c A d h Q  
 ' ' b t Z T 0 E S C C r z G Y J 0 o t 8 m V P c z b U q h c v 3 X 9 L L k Y g 2 H i w Z x D J v m 6 v z J X 9 1 I O C a q 3 U 7 i J u K C L w k b y H j i 1 + Q = =  
 ' ' a N Z G l V m f G v g =  
 ' '  
 ' '  
 ' ' 1 4 7 0 9 f e 1 4 e 5 6 f b 5 a 9 8 1 e b 6 c 1 2 6 f 1 1 5 e 2  
 O p t i o n   E x p l i c i t 
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
 I f   v b Y e s   =   M s g B o x ( P r o d u c t D a t a   &   v b l f   &   v b l f   &   " ��\�[���OX[0R�e�NT�" ,   v b Y e s N o   +   v b Q u e s t i o n ,   " W i n d o w s �[���Oo`" )   t h e n 
 
 S a v e   P r o d u c t D a t a 
 
 E n d   I f 
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
 f N a m e   =   " C : \ U s e r s \ "   &   U s e r N a m e   &   " \ D e s k t o p \ W i n d o w s �[��Y�N. t x t " 
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