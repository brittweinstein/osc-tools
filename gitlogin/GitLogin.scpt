FasdUAS 1.101.10   ��   ��    k             l     ��  ��    r l Purpose: automate terminal logging in to git, and also looking up realtime transforms based on collectionID     � 	 	 �   P u r p o s e :   a u t o m a t e   t e r m i n a l   l o g g i n g   i n   t o   g i t ,   a n d   a l s o   l o o k i n g   u p   r e a l t i m e   t r a n s f o r m s   b a s e d   o n   c o l l e c t i o n I D   
  
 l     ��  ��      initialize variables     �   *   i n i t i a l i z e   v a r i a b l e s      p         �� �� 0 username    �� �� 0 sudopassword    �� �� 0 collectionid collectionID  �� �� 0 	cidlength    ������ 0 validid validID��        l     ����  r         m     ��
�� boovfals  o      ���� 0 validid validID��  ��        l     ��������  ��  ��        l     ��   ��     	Functions      � ! !  F u n c t i o n s   " # " l     �� $ %��   $ 3 - define username @legacy-textbook-dev.cnx.org    % � & & Z   d e f i n e   u s e r n a m e   @ l e g a c y - t e x t b o o k - d e v . c n x . o r g #  ' ( ' l     �� ) *��   )  on textbookdevuser()    * � + + ( o n   t e x t b o o k d e v u s e r ( ) (  , - , l     �� . /��   . � �	set username to the text returned of (display dialog "What is your username @legacy-textbook-dev.cnx.org?" default answer "kerwin")    / � 0 0 	 s e t   u s e r n a m e   t o   t h e   t e x t   r e t u r n e d   o f   ( d i s p l a y   d i a l o g   " W h a t   i s   y o u r   u s e r n a m e   @ l e g a c y - t e x t b o o k - d e v . c n x . o r g ? "   d e f a u l t   a n s w e r   " k e r w i n " ) -  1 2 1 l     �� 3 4��   3  end textbookdevuser    4 � 5 5 & e n d   t e x t b o o k d e v u s e r 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   : $  enter sudo password after ssh    ; � < < <   e n t e r   s u d o   p a s s w o r d   a f t e r   s s h 9  = > = i      ? @ ? I      �������� 0 sudopwd  ��  ��   @ r      A B A l     C���� C n      D E D 1   	 ��
�� 
ttxt E l    	 F���� F I    	�� G H
�� .sysodlogaskr        TEXT G m      I I � J J F K e r w i n ,   w h a t   i s   y o u r   s u d o   p a s s w o r d ? H �� K L
�� 
dtxt K m     M M � N N   L �� O��
�� 
htxt O m    ��
�� boovtrue��  ��  ��  ��  ��   B o      ���� 0 sudopassword   >  P Q P l     ��������  ��  ��   Q  R S R l     �� T U��   T  execute login process    U � V V * e x e c u t e   l o g i n   p r o c e s s S  W X W i     Y Z Y I      �������� 0 executelogin  ��  ��   Z O     [ [ \ [ k    Z ] ]  ^ _ ^ l   ��������  ��  ��   _  ` a ` I   �� b c
�� .coredoscnull��� ��� ctxt b m     d d � e e L s s h   k e r w i n @ l e g a c y - t e x t b o o k - d e v . c n x . o r g c �� f��
�� 
kfil f 4    
�� g
�� 
cwin g m    	���� ��   a  h i h I   ������
�� .miscactvnull��� ��� null��  ��   i  j k j I   �� l��
�� .sysodelanull��� ��� nmbr l m    ���� ��   k  m n m I   %�� o p
�� .coredoscnull��� ��� ctxt o m     q q � r r @ s u d o   - H   - u   w w w - d a t a   - s   / b i n / b a s h p �� s��
�� 
kfil s 4    !�� t
�� 
cwin t m     ���� ��   n  u v u I  & +�� w��
�� .sysodelanull��� ��� nmbr w m   & '���� ��   v  x y x I  , 6�� z {
�� .coredoscnull��� ��� ctxt z o   , -���� 0 sudopassword   { �� |��
�� 
kfil | 4   . 2�� }
�� 
cwin } m   0 1���� ��   y  ~  ~ I  7 <�� ���
�� .sysodelanull��� ��� nmbr � m   7 8���� ��     � � � I  = G�� � �
�� .coredoscnull��� ��� ctxt � m   = > � � � � � � c d   / o p t / c n x - b u i l d o u t / s r c / P r o d u c t s . R h a p t o s P r i n t / P r o d u c t s / R h a p t o s P r i n t / e p u b � �� ���
�� 
kfil � 4   ? C�� �
�� 
cwin � m   A B���� ��   �  � � � I  H M�� ���
�� .sysodelanull��� ��� nmbr � m   H I���� ��   �  � � � I  N X�� � �
�� .coredoscnull��� ��� ctxt � m   N O � � � � �  g i t   b r a n c h   - a � �� ���
�� 
kfil � 4   P T�� �
�� 
cwin � m   R S���� ��   �  ��� � l  Y Y��������  ��  ��  ��   \ m      � ��                                                                                      @ alis    l  Macintosh HD               ЉG�H+   ��Terminal.app                                                    �"�����        ����  	                	Utilities     Љ�J      ���"     �� �-�  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��   X  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & get collection ID to check transforms    � � � � L   g e t   c o l l e c t i o n   I D   t o   c h e c k   t r a n s f o r m s �  � � � i     � � � I      �������� 0 
entercolid 
entercolID��  ��   � k     N � �  � � � r      � � � l     ����� � n      � � � 1    ��
�� 
ttxt � l     ����� � I    �� � �
�� .sysodlogaskr        TEXT � m      � � � � � \ E n t e r   5 - d i g i t   I D   o f   t h e   c o l l e c t i o n   t o   m o n i t o r : � �� � �
�� 
dtxt � m     � � � � � H y o u   c a n   u s e   e i t h e r   c o l 1 2 3 4 5   o r   1 2 3 4 5 � �� � �
�� 
btns � J     � �  � � � m     � � � � �  C a n c e l �  ��� � m     � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   	 
 � � � � �  C o n t i n u e��  ��  ��  ��  ��   � o      ���� 0 collectionid collectionID �  � � � r     � � � n     � � � 1    ��
�� 
leng � o    ���� 0 collectionid collectionID � o      ���� 0 	cidlength   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � * $ standarize collection ID formatting    � � � � H   s t a n d a r i z e   c o l l e c t i o n   I D   f o r m a t t i n g �  � � � Z    * � ��� � � C     � � � o    ���� 0 collectionid collectionID � m     � � � � �  c o l � r    " � � � o     ���� 0 collectionid collectionID � o      ���� 0 collectionid collectionID��   � r   % * � � � b   % ( � � � m   % & � � � � �  c o l � o   & '���� 0 collectionid collectionID � o      ���� 0 collectionid collectionID �  � � � l  + +�������  ��  �   �  � � � l  + +�~ � ��~   �   for error checking    � � � � &   f o r   e r r o r   c h e c k i n g �  � � � Z   + L � ��} � � G   + < � � � =   + 0 � � � o   + ,�|�| 0 	cidlength   � m   , /�{�{  � =   3 8 � � � o   3 4�z�z 0 	cidlength   � m   4 7�y�y  � r   ? D � � � m   ? @�x
�x boovtrue � o      �w�w 0 validid validID�}   � r   G L � � � m   G H�v
�v boovfals � o      �u�u 0 validid validID �  ��t � l  M M�s�r�q�s  �r  �q  �t   �  � � � l     �p�o�n�p  �o  �n   �  � � � l     �m � ��m   � ' ! check on transforms in real-time    � � � � B   c h e c k   o n   t r a n s f o r m s   i n   r e a l - t i m e �  � � � i     � � � I      �l�k�j�l 0 monitortransform  �k  �j   � O     7 �  � k    6  I   �i
�i .coredoscnull��� ��� ctxt m     �  c d   / t m p �h�g
�h 
kfil 4    
�f	
�f 
cwin	 m    	�e�e �g   

 I   �d�c
�d .sysodelanull��� ��� nmbr m    �b�b �c    I   �a
�a .coredoscnull��� ��� ctxt m     �  l s   - l t r �`�_
�` 
kfil 4    �^
�^ 
cwin m    �]�] �_    I    %�\�[
�\ .sysodelanull��� ��� nmbr m     !�Z�Z �[    I  & 4�Y
�Y .coredoscnull��� ��� ctxt b   & + b   & ) m   & '   �!!  t a i l   c o l p r i n t _ o   ' (�X�X 0 collectionid collectionID m   ) *"" �##  . s t d e r r   - f �W$�V
�W 
kfil$ 4   , 0�U%
�U 
cwin% m   . /�T�T �V   &�S& l  5 5�R�Q�P�R  �Q  �P  �S    m     ''�                                                                                      @ alis    l  Macintosh HD               ЉG�H+   ��Terminal.app                                                    �"�����        ����  	                	Utilities     Љ�J      ���"     �� �-�  2Macintosh HD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   H D  #Applications/Utilities/Terminal.app   / ��   � ()( l     �O�N�M�O  �N  �M  ) *+* l     �L�K�J�L  �K  �J  + ,-, l     �I./�I  . 0 * Run the thing! determine which flow to do   / �00 T   R u n   t h e   t h i n g !   d e t e r m i n e   w h i c h   f l o w   t o   d o- 121 l   3�H�G3 I   �F45
�F .sysodlogaskr        TEXT4 m    66 �77 V G i t L o g i n   T o o l   3 . 0 :   
 W h a t   d o   y o u   w a n t   t o   d o ?5 �E89
�E 
btns8 J    :: ;<; m    == �>>  C a n c e l< ?@? m    AA �BB  G i t   l o g i n   o n l y@ C�DC m    	DD �EE F G i t   l o g i n   w i t h   t r a n s f o r m   m o n i t o r i n g�D  9 �CF�B
�C 
dfltF m    GG �HH  G i t   l o g i n   o n l y�B  �H  �G  2 IJI l   wK�A�@K Z    wLMN�?L =    OPO 1    �>
�> 
rsltP K    QQ �=R�<
�= 
bhitR m    SS �TT  G i t   l o g i n   o n l y�<  M k    &UU VWV l   �;XY�;  X  textbookdevuser()   Y �ZZ " t e x t b o o k d e v u s e r ( )W [\[ I     �:�9�8�: 0 sudopwd  �9  �8  \ ]�7] I   ! &�6�5�4�6 0 executelogin  �5  �4  �7  N ^_^ =   ) /`a` 1   ) *�3
�3 
rslta K   * .bb �2c�1
�2 
bhitc m   + ,dd �ee F G i t   l o g i n   w i t h   t r a n s f o r m   m o n i t o r i n g�1  _ f�0f W   2 sghg k   : nii jkj I   : ?�/�.�-�/ 0 
entercolid 
entercolID�.  �-  k l�,l Z   @ nmn�+om =  @ Cpqp o   @ A�*�* 0 validid validIDq m   A B�)
�) boovfalsn I  F Z�(rs
�( .sysodlogaskr        TEXTr m   F Itt �uu l C o l l e c t i o n   I D   f o r m a t t e d   i n c o r r e c t l y ,   c l i c k   O K   t o   r e t r ys �'vw
�' 
btnsv J   J Rxx yzy m   J M{{ �||  C a n c e lz }�&} m   M P~~ �  O K�&  w �%��$
�% 
dflt� m   S V�� ���  O K�$  �+  o k   ] n�� ��� l  ] ]�#���#  �  textbookdevuser()   � ��� " t e x t b o o k d e v u s e r ( )� ��� I   ] b�"�!� �" 0 sudopwd  �!  �   � ��� I   c h���� 0 executelogin  �  �  � ��� I   i n���� 0 monitortransform  �  �  �  �,  h =  6 9��� o   6 7�� 0 validid validID� m   7 8�
� boovtrue�0  �?  �A  �@  J ��� l     ����  �  �  �       ��������  � ������ 0 sudopwd  � 0 executelogin  � 0 
entercolid 
entercolID� 0 monitortransform  
� .aevtoappnull  �   � ****� � @��
���	� 0 sudopwd  �  �
  �  �  I� M�����
� 
dtxt
� 
htxt� 
� .sysodlogaskr        TEXT
� 
ttxt� 0 sudopassword  �	 ����e� �,E�� � Z�� ����� 0 executelogin  �  �   �  �  � d���������� q�� � �
�� 
kfil
�� 
cwin
�� .coredoscnull��� ��� ctxt
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr�� 0 sudopassword  �� \� X��*�k/l O*j Omj O��*�k/l Omj O��*�k/l Olj O��*�k/l Olj O��*�k/l OPU� �� ����������� 0 
entercolid 
entercolID��  ��  �  �  ��� ��� � ��� ������������� � ���������
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
ttxt�� 0 collectionid collectionID
�� 
leng�� 0 	cidlength  �� �� 
�� 
bool�� 0 validid validID�� O������lv��� 	�,E�O��,E�O�� �E�Y ��%E�O�a  
 �a  a & 
eE` Y fE` OP� �� ����������� 0 monitortransform  ��  ��  �  � '���������� ��"
�� 
kfil
�� 
cwin
�� .coredoscnull��� ��� ctxt
�� .sysodelanull��� ��� nmbr�� �� 0 collectionid collectionID�� 8� 4��*�k/l Okj O��*�k/l O�j O��%�%�*�k/l OPU� �����������
�� .aevtoappnull  �   � ****� k     w��  �� 1�� I����  ��  ��  �  � ��6��=AD��G��������S����d��t{~����� 0 validid validID
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 sudopwd  �� 0 executelogin  �� 0 
entercolid 
entercolID�� 0 monitortransform  �� xfE�O�����mv��� 	O���l  *j+ O*j+ Y P���l  F @h�e *j+ O�f  a �a a lv�a � 	Y *j+ O*j+ O*j+ [OY��Y h ascr  ��ޭ