FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Purpose of this program: enqueue PDF, check latest version in legacy editor, or look up query_ptool for a given colid in Textbook-Dev only     � 	 	   P u r p o s e   o f   t h i s   p r o g r a m :   e n q u e u e   P D F ,   c h e c k   l a t e s t   v e r s i o n   i n   l e g a c y   e d i t o r ,   o r   l o o k   u p   q u e r y _ p t o o l   f o r   a   g i v e n   c o l i d   i n   T e x t b o o k - D e v   o n l y   
  
 l     ��  ��      INITIALIZE VARIABLES     �   *   I N I T I A L I Z E   V A R I A B L E S      p         �� �� 0 collectionid collectionID  �� �� 0 	cidlength    �� �� 0 validid validID  �� �� 0 statusbutton    ������ 0 statusid statusID��        l     ����  r         m     ��
�� boovfals  o      ���� 0 validid validID��  ��        l    ����  r        m    ����   o      ���� 0 serverid serverID��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $  
 FUNCTIONS    % � & &    F U N C T I O N S #  ' ( ' l     �� ) *��   )   User input    * � + +    U s e r   i n p u t (  , - , i      . / . I      �������� 0 inputcid inputCID��  ��   / k     M 0 0  1 2 1 r      3 4 3 I    �� 5 6
�� .sysodlogaskr        TEXT 5 m      7 7 � 8 8 � T e x t b o o k - D e v   M e g a T o o l   ( t h e r e   w i l l   b e   n o   c o n f i r m a t i o n s ! ) :   
 	 
 	 E n t e r   c o l l e c t i o n   I D   a n d   c h o o s e   a c t i o n   b e l o w : 6 �� 9 :
�� 
dtxt 9 m     ; ; � < < ^ e i t h e r   c o l 1 2 3 4 5   o r   1 2 3 4 5 ;   o r   m 1 2 3 4 5   ( v i e w   o n l y ) : �� =��
�� 
btns = J    	 > >  ? @ ? m     A A � B B  E n q u e u e   P D F @  C D C m     E E � F F  q u e r y _ p t o o l D  G�� G m     H H � I I : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r��  ��   4 o      ���� 0 	userinput   2  J K J l   ��������  ��  ��   K  L M L r     N O N n     P Q P 1    ��
�� 
ttxt Q o    ���� 0 	userinput   O o      ���� 0 collectionid collectionID M  R S R r     T U T n     V W V 1    ��
�� 
bhit W o    ���� 0 	userinput   U o      ���� 0 statusbutton   S  X Y X Z    C Z [ \�� Z =     ] ^ ] o    ���� 0 statusbutton   ^ m     _ _ � ` `  E n q u e u e   P D F [ r   " % a b a m   " #����  b o      ���� 0 statusid statusID \  c d c =   ( + e f e o   ( )���� 0 statusbutton   f m   ) * g g � h h  q u e r y _ p t o o l d  i j i r   . 1 k l k m   . /����  l o      ���� 0 statusid statusID j  m n m =   4 9 o p o o   4 5���� 0 statusbutton   p m   5 8 q q � r r : V i e w   l a t e s t   v e r s i o n   i n   e d i t o r n  s�� s r   < ? t u t m   < =����  u o      ���� 0 statusid statusID��  ��   Y  v�� v r   D M w x w n   D I y z y 1   E I��
�� 
leng z o   D E���� 0 collectionid collectionID x o      ���� 0 	cidlength  ��   -  { | { l     ��������  ��  ��   |  } ~ } l     ��  ���       Error check of user input    � � � � 4   E r r o r   c h e c k   o f   u s e r   i n p u t ~  � � � i     � � � I      �������� 0 lengthcheck  ��  ��   � Z     + � � � � � G      � � � =      � � � o     ���� 0 	cidlength   � m    ����  � =    	 � � � o    ���� 0 	cidlength   � m    ����  � r     � � � m    ��
�� boovtrue � o      ���� 0 validid validID �  � � � F     � � � =     � � � o    ���� 0 	cidlength   � m    ����  � C     � � � o    ���� 0 collectionid collectionID � m     � � � � �  m �  ��� � r   " % � � � m   " #��
�� boovtrue � o      ���� 0 validid validID��   � r   ( + � � � m   ( )��
�� boovfals � o      ���� 0 validid validID �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Main function, runs if CID is the correct length    � � � � b   M a i n   f u n c t i o n ,   r u n s   i f   C I D   i s   t h e   c o r r e c t   l e n g t h �  � � � i     � � � I      �������� 0 statusaction  ��  ��   � k     � � �  � � � l     �� � ���   �  enqueue    � � � �  e n q u e u e �  � � � Z     � � � ��� � =     � � � o     ���� 0 statusid statusID � m    ����  � k    + � �  � � � Z    ) � ��� � � G     � � � C    	 � � � o    ���� 0 collectionid collectionID � m     � � � � �  c o l � C     � � � o    ���� 0 collectionid collectionID � m     � � � � �  m � I   �� ���
�� .GURLGURLnull��� ��� TEXT � b     � � � b     � � � m     � � � � � V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / � o    ���� 0 collectionid collectionID � m     � � � � �  / l a t e s t / e n q u e u e��  ��   � I    )�� ���
�� .GURLGURLnull��� ��� TEXT � b     % � � � b     # � � � m     ! � � � � � \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l � o   ! "���� 0 collectionid collectionID � m   # $ � � � � �  / l a t e s t / e n q u e u e��   �  � � � l  * *��������  ��  ��   �  ��� � l  * *�� � ���   �   query_ptool    � � � �    q u e r y _ p t o o l��   �  � � � =  . 1 � � � o   . /���� 0 statusid statusID � m   / 0����  �  � � � k   4 Y � �  � � � Z   4 W � ��� � � G   4 ? � � � C   4 7 � � � o   4 5���� 0 collectionid collectionID � m   5 6 � � � � �  c o l � C   : = � � � o   : ;���� 0 collectionid collectionID � m   ; < � � � � �  m � I  B K�� ���
�� .GURLGURLnull��� ��� TEXT � b   B G � � � b   B E � � � m   B C � � � � � V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / � o   C D���� 0 collectionid collectionID � m   E F � � � � � & / l a t e s t / q u e r y _ p t o o l��  ��   � I  N W�� ��
�� .GURLGURLnull��� ��� TEXT  b   N S b   N Q m   N O � \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l o   O P���� 0 collectionid collectionID m   Q R � & / l a t e s t / q u e r y _ p t o o l��   � 	
	 l  X X��������  ��  ��  
 �� l  X X����     view latest    �    v i e w   l a t e s t��   �  =  \ _ o   \ ]���� 0 statusid statusID m   ] ^����  �� Z   b ��� G   b q C   b g o   b c���� 0 collectionid collectionID m   c f �  c o l C   j o o   j k���� 0 collectionid collectionID m   k n �    m I  t ���!��
�� .GURLGURLnull��� ��� TEXT! b   t }"#" b   t y$%$ m   t w&& �'' V h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t /% o   w x���� 0 collectionid collectionID# m   y |(( �))  / l a t e s t��  ��   I  � ���*��
�� .GURLGURLnull��� ��� TEXT* b   � �+,+ b   � �-.- m   � �// �00 \ h t t p : / / l e g a c y - t e x t b o o k - d e v . c n x . o r g / c o n t e n t / c o l. o   � ��� 0 collectionid collectionID, m   � �11 �22  / l a t e s t��  ��  ��   � 3�~3 l  � ��}�|�{�}  �|  �{  �~   � 454 l     �z�y�x�z  �y  �x  5 676 l     �w�v�u�w  �v  �u  7 898 l     �t:;�t  : 0 * CALL FUNCTIONS, with error-checking logic   ; �<< T   C A L L   F U N C T I O N S ,   w i t h   e r r o r - c h e c k i n g   l o g i c9 =>= l   ;?�s�r? W    ;@A@ k    6BB CDC I    �q�p�o�q 0 inputcid inputCID�p  �o  D EFE I    �n�m�l�n 0 lengthcheck  �m  �l  F G�kG Z    6HI�jJH =   KLK o    �i�i 0 validid validIDL m    �h
�h boovfalsI I  " .�gMN
�g .sysodlogaskr        TEXTM m   " #OO �PP l C o l l e c t i o n   I D   f o r m a t t e d   i n c o r r e c t l y ,   c l i c k   O K   t o   r e t r yN �fQR
�f 
btnsQ J   $ (SS TUT m   $ %VV �WW  C a n c e lU X�eX m   % &YY �ZZ  O K�e  R �d[�c
�d 
dflt[ m   ) *\\ �]]  O K�c  �j  J I   1 6�b�a�`�b 0 statusaction  �a  �`  �k  A =   ^_^ o    �_�_ 0 validid validID_ m    �^
�^ boovtrue�s  �r  > `�]` l     �\�[�Z�\  �[  �Z  �]       �Yabcde�Y  a �X�W�V�U�X 0 inputcid inputCID�W 0 lengthcheck  �V 0 statusaction  
�U .aevtoappnull  �   � ****b �T /�S�Rfg�Q�T 0 inputcid inputCID�S  �R  f �P�P 0 	userinput  g  7�O ;�N A E H�M�L�K�J�I�H _�G g q�F�E
�O 
dtxt
�N 
btns�M 
�L .sysodlogaskr        TEXT
�K 
ttxt�J 0 collectionid collectionID
�I 
bhit�H 0 statusbutton  �G 0 statusid statusID
�F 
leng�E 0 	cidlength  �Q N�������mv� E�O��,E�O��,E�O��  kE�Y ��  lE�Y �a   mE�Y hO�a ,E` c �D ��C�Bhi�A�D 0 lengthcheck  �C  �B  h  i �@�?�>�=�<�;�: ��@ 0 	cidlength  �? �> 
�= 
bool�< 0 validid validID�; �: 0 collectionid collectionID�A ,�� 
 �� �& eE�Y �� 	 ���& eE�Y fE�d �9 ��8�7jk�6�9 0 statusaction  �8  �7  j  k �5�4 � ��3 � ��2 � � � � � �&(/1�5 0 statusid statusID�4 0 collectionid collectionID
�3 
bool
�2 .GURLGURLnull��� ��� TEXT�6 ��k  *��
 ���& ��%�%j Y ��%�%j OPY i�l  *��
 ���& ��%�%j Y ��%�%j OPY ;�m  4�a 
 	�a �& a �%a %j Y a �%a %j Y hOPe �1l�0�/mn�.
�1 .aevtoappnull  �   � ****l k     ;oo  pp  qq =�-�-  �0  �/  m  n �,�+�*�)O�(VY�'\�&�%�$�, 0 validid validID�+ 0 serverid serverID�* 0 inputcid inputCID�) 0 lengthcheck  
�( 
btns
�' 
dflt�& 
�% .sysodlogaskr        TEXT�$ 0 statusaction  �. <fE�OkE�O 2h�e *j+ O*j+ O�f  ����lv��� Y *j+ [OY�� ascr  ��ޭ