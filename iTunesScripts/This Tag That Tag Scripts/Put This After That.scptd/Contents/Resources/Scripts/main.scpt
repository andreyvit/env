FasdUAS 1.101.10   ��   ��    k             l      ��  ��   c] Put This After That (This Tag, That Tag Scripts)

v2.0 april 22 2008
- runs as universal binary
- adds "Show" tag
- consolidated code
- saved as script bundle

v1.7 October 3, 2006
- adds "Album Artist" as option

v1.6 October 28, 2004
- works around iTunes 4.7 selection bug

v1.5 ('04/1)-- adds "grouping" tag

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html

     � 	 	�   P u t   T h i s   A f t e r   T h a t   ( T h i s   T a g ,   T h a t   T a g   S c r i p t s ) 
 
 v 2 . 0   a p r i l   2 2   2 0 0 8 
 -   r u n s   a s   u n i v e r s a l   b i n a r y 
 -   a d d s   " S h o w "   t a g 
 -   c o n s o l i d a t e d   c o d e 
 -   s a v e d   a s   s c r i p t   b u n d l e 
 
 v 1 . 7   O c t o b e r   3 ,   2 0 0 6 
 -   a d d s   " A l b u m   A r t i s t "   a s   o p t i o n 
 
 v 1 . 6   O c t o b e r   2 8 ,   2 0 0 4 
 -   w o r k s   a r o u n d   i T u n e s   4 . 7   s e l e c t i o n   b u g 
 
 v 1 . 5   ( ' 0 4 / 1 ) - -   a d d s   " g r o u p i n g "   t a g 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
 
   
  
 l     ��  ��     
 CONSTANTS     �      C O N S T A N T S      j     �� �� 0 
alloptions 
allOptions  J            m        �    S o n g   N a m e      m       �    A r t i s t      m       �   
 A l b u m       m     ! ! � " "  A l b u m   A r t i s t    # $ # m     % % � & &  C o m p o s e r $  ' ( ' m     ) ) � * * 
 G e n r e (  + , + m     - - � . .  C o m m e n t s ,  / 0 / m     1 1 � 2 2  S h o w 0  3�� 3 m    	 4 4 � 5 5  G r o u p i n g��     6 7 6 j    �� 8�� 0 my_title   8 m     9 9 � : : & P u t   T h i s   A f t e r   T h a t 7  ; < ; l      = > ? = j    �� @�� 0 	separator   @ m     A A � B B    -   >   default    ? � C C    d e f a u l t <  D E D p     F F �� G�� 0 thistag thisTag G �� H�� 0 thattag thatTag H �� I�� 0 
thenewtags 
theNewTags I �� J�� "0 theoriginaltags theOriginalTags J ������ 0 yn  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O   +++++++++++++++++++++    P � Q Q ,   + + + + + + + + + + + + + + + + + + + + + N  R S R l   $ T���� T O    $ U V U l  # W X Y W Z   # Z [�� \ Z >   
 ] ^ ] 1    ��
�� 
sele ^ J    	����   [ l   _ ` a _ k    b b  c d c r     e f e 1    ��
�� 
sele f o      ���� 0 sel   d  g h g r     i j i l    k���� k n     l m l 1    ��
�� 
leng m o    ���� 0 sel  ��  ��   j o      ���� 0 	numtracks 	numTracks h  n o n r     p q p m     r r � s s  s q o      ���� 0 s   o  t u t Z   * v w���� v =     x y x o    ���� 0 	numtracks 	numTracks y m    ����  w r   # & z { z m   # $ | | � } }   { o      ���� 0 s  ��  ��   u  ~  ~ l  + +��������  ��  ��     � � � I  + S�� � �
�� .sysodlogaskr        TEXT � b   + 8 � � � b   + 0 � � � b   + . � � � m   + , � � � � � � A p p e n d s   t h e   d a t a   f r o m   o n e   t a g   t o   t h e   e n d   o f     a n o t h e r   t a g   i n   a l l   t h e   s e l e c t e d   t r a c k s ,   w i t h   o p t i o n   t o   d e l e t e   d a t a   i n   f i r s t   t a g . � o   , -��
�� 
ret  � o   . /��
�� 
ret  � l  0 7 ����� � b   0 7 � � � b   0 5 � � � b   0 3 � � � o   0 1���� 0 	numtracks 	numTracks � m   1 2 � � � � �    t r a c k � o   3 4���� 0 s   � m   5 6 � � � � �    s e l e c t e d .��  ��   � �� � �
�� 
btns � J   9 = � �  � � � m   9 : � � � � �  C a n c e l �  ��� � m   : ; � � � � �  C o n t i n u e��   � �� � �
�� 
dflt � m   > ?����  � �� � �
�� 
appr � o   B G���� 0 my_title   � �� ���
�� 
givu � m   J M���� ��   �  � � � l  T T��������  ��  ��   �  � � � n  T Y � � � I   U Y�������� 0 choose_this_tag  ��  ��   �  f   T U �  � � � l  Z Z��������  ��  ��   �  � � � n  Z _ � � � I   [ _�������� 0 choose_that_tag  ��  ��   �  f   Z [ �  � � � l  ` `��������  ��  ��   �  � � � T   ` � � � k   e � � �  � � � Q   e � � � � � r   h � � � � n   h � � � � 1   � ���
�� 
ttxt � l  h � ����� � I  h ��� � �
�� .sysodlogaskr        TEXT � m   h k � � � � � V U s e   t h e   t e x t   s t r i n g   b e l o w   a s   t h e   s e p a r a t o r : � �� � �
�� 
dtxt � o   n s���� 0 	separator   � �� � �
�� 
appr � o   v {���� 0 my_title   � �� ���
�� 
givu � m   ~ ����� ��  ��  ��   � o      ���� 0 new_separator   � R      ������
�� .ascrerr ****      � ****��  ��   � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������   �  ��� � Z   � � � ����� � >  � � � � � o   � ����� 0 new_separator   � m   � � � � � � �   � k   � � � �  � � � r   � � � � � o   � ����� 0 new_separator   � o      ���� 0 	separator   �  ��� �  S   � ���  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � l  � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � �  D e l e t e   d a t a   i n   � o   � ����� 0 thistag thisTag � m   � � � � � � �    a f t e r w a r d s ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
appr � o   � ����� 0 my_title   � �� ���
�� 
givu � m   � ����� -��  ��  ��   � m   � � � � �    Y e s��  ��   � o      ���� 0 yn   �  l  � ���������  ��  ��    r   � 1   � ���
�� 
pFix o      ���� 	0 oldfi    r  		
	 m  ��
�� boovtrue
 1  ��
�� 
pFix  l 

��������  ��  ��    Y  
����� O  � k  !�  r  !_ J  ![  e  !' 1  !'�
� 
pnam  e  '- 1  '-�~
�~ 
pArt  !  e  -3"" 1  -3�}
�} 
pAlb! #$# e  39%% 1  39�|
�| 
pAlA$ &'& e  9?(( 1  9?�{
�{ 
pCmp' )*) e  ?E++ 1  ?E�z
�z 
pGen* ,-, e  EK.. 1  EK�y
�y 
pCmt- /0/ e  KQ11 1  KQ�x
�x 
pShw0 2�w2 e  QW33 1  QW�v
�v 
pGrp�w   o      �u�u "0 theoriginaltags theOriginalTags 454 r  `g676 o  `c�t�t "0 theoriginaltags theOriginalTags7 o      �s�s 0 
thenewtags 
theNewTags5 898 n hm:;: I  im�r�q�p�r 
0 do_put  �q  �p  ;  f  hi9 <=< r  n�>?> o  nq�o�o 0 
thenewtags 
theNewTags? J      @@ ABA 1  x}�n
�n 
pnamB CDC 1  ���m
�m 
pArtD EFE 1  ���l
�l 
pAlbF GHG 1  ���k
�k 
pAlAH IJI 1  ���j
�j 
pCmpJ KLK 1  ���i
�i 
pGenL MNM 1  ���h
�h 
pCmtN OPO 1  ���g
�g 
pShwP Q�fQ 1  ���e
�e 
pGrp�f  = R�dR l ���c�b�a�c  �b  �a  �d   n  STS 1  �`
�` 
pcntT n  UVU 4  �_W
�_ 
cobjW o  �^�^ 0 t  V o  �]�] 0 sel  �� 0 t   m  �\�\  o  �[�[ 0 	numtracks 	numTracks��   X�ZX r  �YZY o  ���Y�Y 	0 oldfi  Z 1  ��X
�X 
pFix�Z   `    if tracks are selected...    a �[[ 4   i f   t r a c k s   a r e   s e l e c t e d . . .��   \ I #�W\]
�W .sysodlogaskr        TEXT\ m  ^^ �__ : N o   t r a c k s   h a v e   b e e n   s e l e c t e d .] �V`a
�V 
btns` J  bb c�Uc m  dd �ee  C a n c e l�U  a �Tfg
�T 
dfltf m  �S�S g �Rhi
�R 
disph m  �Q�Q  i �Pj�O
�P 
givuj m  �N�N �O   X   no selection	    Y �kk    n o   s e l e c t i o n 	 V m     ll�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   S mnm l     �M�L�K�M  �L  �K  n opo i   qrq I      �J�I�H�J 0 choose_this_tag  �I  �H  r O     /sts k    .uu vwv r    xyx l   z�G�Fz I   �E{|
�E .gtqpchltTEXT  @   @ TEXT{ o    	�D�D 0 
alloptions 
allOptions| �C}~
�C 
prmp} l  
 �B�A m   
 �� ��� < S e l e c t   a   t a g   t o   g e t   d a t a   f r o m :�B  �A  ~ �@��?
�@ 
appr� o    �>�> 0 my_title  �?  �G  �F  y o      �=�= 0 n  w ��� Z   (���<�;� =   ��� o    �:�: 0 n  � m    �9
�9 boovfals� R    $�8�7�
�8 .ascrerr ****      � ****�7  � �6��5
�6 
errn� m     !�4�4���5  �<  �;  � ��3� r   ) .��� l  ) ,��2�1� c   ) ,��� o   ) *�0�0 0 n  � m   * +�/
�/ 
ctxt�2  �1  � o      �.�. 0 thistag thisTag�3  t m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  p ��� l     �-�,�+�-  �,  �+  � ��� i   ��� I      �*�)�(�* 0 choose_that_tag  �)  �(  � k     ^�� ��� r     ��� J     �'�'  � o      �&�& 0 o  � ��� X    .��%�� Z   )���$�#� >   ��� l   ��"�!� c    ��� o    � �  0 t  � m    �
� 
ctxt�"  �!  � o    �� 0 thistag thisTag� s   ! %��� o   ! "�� 0 t  � n      ���  ;   # $� o   " #�� 0 o  �$  �#  �% 0 t  � o    �� 0 
alloptions 
allOptions� ��� l  / /����  �  �  � ��� O   / ^��� k   3 ]�� ��� r   3 F��� I  3 D���
� .gtqpchltTEXT  @   @ TEXT� o   3 4�� 0 o  � ���
� 
prmp� l  5 :���� b   5 :��� b   5 8��� m   5 6�� ��� $ P u t   i n f o   f r o m   t h e  � o   6 7�� 0 thistag thisTag� m   8 9�� ��� *   t a g   A F T E R   d a t a   i n . . .�  �  � ���
� 
appr� o   ; @�� 0 my_title  �  � o      �� 0 n  � ��� Z  G W����� =  G J��� o   G H�
�
 0 n  � m   H I�	
�	 boovfals� R   M S���
� .ascrerr ****      � ****�  � ���
� 
errn� m   O P�����  �  �  � ��� r   X ]��� c   X [��� o   X Y�� 0 n  � m   Y Z�
� 
ctxt� o      � �  0 thattag thatTag�  � m   / 0���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  �  � ��� l     ��������  ��  ��  � ���� i   ��� I      �������� 
0 do_put  ��  ��  � k     ��� ��� Q     ������ k    ��� ��� Y    2�������� Z    -������� =   ��� o    ���� 0 thistag thisTag� l   ������ n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 
alloptions 
allOptions��  ��  � k   ! )�� ��� r   ! '��� l  ! %������ n   ! %��� 4   " %���
�� 
cobj� o   # $���� 0 i  � o   ! "���� "0 theoriginaltags theOriginalTags��  ��  � o      ���� 0 thistag_sto thisTag_sto� ����  S   ( )��  ��  ��  �� 0 i  � m    ���� � l   ������ n    ��� 1    ��
�� 
leng� o    ���� 0 
alloptions 
allOptions��  ��  ��  � ��� l  3 3��������  ��  ��  � ��� Y   3 m�������� Z   D h������� =  D N   o   D E���� 0 thattag thatTag l  E M���� n   E M 4   J M��
�� 
cobj o   K L���� 0 i   o   E J���� 0 
alloptions 
allOptions��  ��  � k   Q d  r   Q b	
	 l  Q ]���� b   Q ] b   Q [ l  Q U���� n   Q U 4   R U��
�� 
cobj o   S T���� 0 i   o   Q R���� "0 theoriginaltags theOriginalTags��  ��   o   U Z���� 0 	separator   o   [ \���� 0 thistag_sto thisTag_sto��  ��  
 l     ���� n       4   ^ a��
�� 
cobj o   _ `���� 0 i   o   ] ^���� 0 
thenewtags 
theNewTags��  ��   ��  S   c d��  ��  ��  �� 0 i  � m   6 7���� � l  7 ?���� n   7 ? 1   < >��
�� 
leng o   7 <���� 0 
alloptions 
allOptions��  ��  ��  �  l  n n��������  ��  ��    Z   n � !����  o   n o���� 0 yn  ! Y   r �"��#$��" Z   � �%&����% =  � �'(' o   � ����� 0 thistag thisTag( l  � �)����) n   � �*+* 4   � ���,
�� 
cobj, o   � ����� 0 i  + o   � ����� 0 
alloptions 
allOptions��  ��  & k   � �-- ./. r   � �010 m   � �22 �33  1 l     4����4 n      565 4   � ���7
�� 
cobj7 o   � ����� 0 i  6 o   � ����� 0 
thenewtags 
theNewTags��  ��  / 8��8  S   � ���  ��  ��  �� 0 i  # m   u v���� $ l  v ~9����9 n   v ~:;: 1   { }��
�� 
leng; o   v {���� 0 
alloptions 
allOptions��  ��  ��  ��  ��   <��< l  � ���������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � =��= l  � ���������  ��  ��  ��  ��       	��>? 9 A@ABC��  > ���������������� 0 
alloptions 
allOptions�� 0 my_title  �� 0 	separator  �� 0 choose_this_tag  �� 0 choose_that_tag  �� 
0 do_put  
�� .aevtoappnull  �   � ****? ��D�� 	D 	     ! % ) - 1 4@ ��r����EF���� 0 choose_this_tag  ��  ��  E ���� 0 n  F 
������������������
�� 
prmp
�� 
appr�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
errn����
�� 
ctxt�� 0 thistag thisTag�� 0� ,b   ���b  � E�O�f  )��lhY hO��&E�UA �������GH���� 0 choose_that_tag  ��  ��  G ����~�� 0 o  � 0 t  �~ 0 n  H �}�|�{�z�y��x���w�v�u�t�s�r
�} 
kocl
�| 
cobj
�{ .corecnte****       ****
�z 
ctxt�y 0 thistag thisTag
�x 
prmp
�w 
appr�v 
�u .gtqpchltTEXT  @   @ TEXT
�t 
errn�s���r 0 thattag thatTag�� _jvE�O (b   [��l kh ��&� 	��6GY h[OY��O� ,����%�%�b  � E�O�f  )��lhY hO��&E�UB �q��p�oIJ�n�q 
0 do_put  �p  �o  I �m�l�m 0 i  �l 0 thistag_sto thisTag_stoJ 
�k�j�i�h�g�f�e2�d�c
�k 
leng�j 0 thistag thisTag
�i 
cobj�h "0 theoriginaltags theOriginalTags�g 0 thattag thatTag�f 0 
thenewtags 
theNewTags�e 0 yn  �d  �c  �n � � .kb   �,Ekh  �b   �/  ��/E�OY h[OY��O 9kb   �,Ekh  �b   �/  ��/b  %�%��/FOY h[OY��O� 4 .kb   �,Ekh  �b   �/  ���/FOY h[OY��Y hOPW X  	hOPC �bK�a�`LM�_
�b .aevtoappnull  �   � ****K k    $NN  R�^�^  �a  �`  L �]�] 0 t  M Al�\�[�Z�Y r�X | ��W � ��V � ��U�T�S�R�Q�P�O�N ��M�L�K�J�I�H�G�F � ��E � � ��D�C ��B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.^d�-
�\ 
sele�[ 0 sel  
�Z 
leng�Y 0 	numtracks 	numTracks�X 0 s  
�W 
ret 
�V 
btns
�U 
dflt
�T 
appr
�S 
givu�R �Q 
�P .sysodlogaskr        TEXT�O 0 choose_this_tag  �N 0 choose_that_tag  
�M 
dtxt�L 
�K 
ttxt�J 0 new_separator  �I  �H  
�G 
errn�F���E 0 thistag thisTag�D -
�C 
bhit�B 0 yn  
�A 
pFix�@ 	0 oldfi  
�? 
cobj
�> 
pcnt
�= 
pnam
�< 
pArt
�; 
pAlb
�: 
pAlA
�9 
pCmp
�8 
pGen
�7 
pCmt
�6 
pShw
�5 
pGrp�4 	�3 "0 theoriginaltags theOriginalTags�2 0 
thenewtags 
theNewTags�1 
0 do_put  �0 �/ �. 
�- 
disp�_%�!*�,jv�*�,E�O��,E�O�E�O�k  �E�Y hO��%�%��%�%�%%���lv�la b  a a a  O)j+ O)j+ O _hZ ,a a b  a b  a a a  a ,E` W X  )a a lhO_ a   _ Ec  OY h[OY��Oa !_ "%a #%�a $a %lv�la b  a a &a  a ',a ( E` )O*a *,E` +Oe*a *,FO �k�kh  �a ,�/a -, �*a .,E*a /,E*a 0,E*a 1,E*a 2,E*a 3,E*a 4,E*a 5,E*a 6,Ea 7vE` 8O_ 8E` 9O)j+ :O_ 9E[a ,k/*a .,FZ[a ,l/*a /,FZ[a ,m/*a 0,FZ[a ,a ;/*a 1,FZ[a ,a </*a 2,FZ[a ,a /*a 3,FZ[a ,a =/*a 4,FZ[a ,a /*a 5,FZ[a ,a 7/*a 6,FZOPU[OY�O_ +*a *,FY a >�a ?kv�ka @ja a a  Uascr  ��ޭ