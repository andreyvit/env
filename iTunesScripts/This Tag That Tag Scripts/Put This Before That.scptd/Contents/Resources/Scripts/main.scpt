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
 G e n r e (  + , + m     - - � . .  C o m m e n t s ,  / 0 / m     1 1 � 2 2  S h o w 0  3�� 3 m    	 4 4 � 5 5  G r o u p i n g��     6 7 6 j    �� 8�� 0 my_title   8 m     9 9 � : : ( P u t   T h i s   B e f o r e   T h a t 7  ; < ; l      = > ? = j    �� @�� 0 	separator   @ m     A A � B B    -   >   default    ? � C C    d e f a u l t <  D E D p     F F �� G�� 0 thistag thisTag G �� H�� 0 thattag thatTag H �� I�� 0 
thenewtags 
theNewTags I �� J�� "0 theoriginaltags theOriginalTags J ������ 0 yn  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O   +++++++++++++++++++++    P � Q Q ,   + + + + + + + + + + + + + + + + + + + + + N  R S R l   7 T���� T O    7 U V U l  6 W X Y W Z   6 Z [�� \ Z >   
 ] ^ ] 1    ��
�� 
sele ^ J    	����   [ l   _ ` a _ k    b b  c d c r     e f e 1    ��
�� 
sele f o      ���� 0 sel   d  g h g r     i j i l    k���� k n     l m l 1    ��
�� 
leng m o    ���� 0 sel  ��  ��   j o      ���� 0 	numtracks 	numTracks h  n o n r     p q p m     r r � s s  s q o      ���� 0 s   o  t u t Z   * v w���� v =     x y x o    ���� 0 	numtracks 	numTracks y m    ����  w r   # & z { z m   # $ | | � } }   { o      ���� 0 s  ��  ��   u  ~  ~ l  + +��������  ��  ��     � � � I  + S�� � �
�� .sysodlogaskr        TEXT � b   + 8 � � � b   + 0 � � � b   + . � � � m   + , � � � � � A p p e n d s   t h e   d a t a   f r o m   o n e   t a g   t o   t h e   b e g i n n i n g   o f   a n o t h e r   t a g   i n   a l l   t h e   s e l e c t e d   t r a c k s ,   w i t h   o p t i o n   t o   d e l e t e   d a t a   i n   f i r s t   t a g . � o   , -��
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
givu � m   J M���� ��   �  � � � Z  T f � ����� � =  T ] � � � n   T [ � � � 1   W [��
�� 
gavu � 1   T W��
�� 
rslt � m   [ \��
�� boovtrue � L   ` b����  ��  ��   �  � � � l  g g��������  ��  ��   �  � � � n  g l � � � I   h l�������� 0 choose_this_tag  ��  ��   �  f   g h �  � � � l  m m��������  ��  ��   �  � � � n  m r � � � I   n r�������� 0 choose_that_tag  ��  ��   �  f   m n �  � � � l  s s��������  ��  ��   �  � � � T   s � � � k   x � � �  � � � Q   x � � � � � r   { � � � � n   { � � � � 1   � ���
�� 
ttxt � l  { � ����� � I  { ��� � �
�� .sysodlogaskr        TEXT � m   { ~ � � � � � V U s e   t h e   t e x t   s t r i n g   b e l o w   a s   t h e   s e p a r a t o r : � �� � �
�� 
dtxt � o   � ����� 0 	separator   � �� � �
�� 
appr � o   � ����� 0 my_title   � �� ���
�� 
givu � m   � ����� ��  ��  ��   � o      ���� 0 new_separator   � R      ������
�� .ascrerr ****      � ****��  ��   � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������   �  ��� � Z   � � � ����� � >  � � � � � o   � ����� 0 new_separator   � m   � � � � � � �   � k   � � � �  � � � r   � � � � � o   � ����� 0 new_separator   � o      ���� 0 	separator   �  ��� �  S   � ���  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   �
 � � � l  � ����� � =  � � � � n   � � � � 1   ���
�� 
bhit � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � m   � � � � � � �  D e l e t e   d a t a   i n   � o   � ����� 0 thistag thisTag � m   � � � � � � �    a f t e r w a r d s ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  Y e s �  ��� � m   � �   �  N o��   � ��
�� 
dflt m   � �����  ��
�� 
appr o   � ����� 0 my_title   ����
�� 
givu m   � ����� -��  ��  ��   � m   �  Y e s��  ��   � o      ���� 0 yn   � 	
	 l ��������  ��  ��  
  r   1  ��
�� 
pFix o      ���� 	0 oldfi    r   m  ��
�� boovtrue 1  �
� 
pFix  l �~�}�|�~  �}  �|    Y  �{�z O  '	 k  4  r  4r  J  4n!! "#" e  4:$$ 1  4:�y
�y 
pnam# %&% e  :@'' 1  :@�x
�x 
pArt& ()( e  @F** 1  @F�w
�w 
pAlb) +,+ e  FL-- 1  FL�v
�v 
pAlA, ./. e  LR00 1  LR�u
�u 
pCmp/ 121 e  RX33 1  RX�t
�t 
pGen2 454 e  X^66 1  X^�s
�s 
pCmt5 787 e  ^d99 1  ^d�r
�r 
pShw8 :�q: e  dj;; 1  dj�p
�p 
pGrp�q    o      �o�o "0 theoriginaltags theOriginalTags <=< r  sz>?> o  sv�n�n "0 theoriginaltags theOriginalTags? o      �m�m 0 
thenewtags 
theNewTags= @A@ n {�BCB I  |��l�k�j�l 
0 do_put  �k  �j  C  f  {|A DED r  �FGF o  ���i�i 0 
thenewtags 
theNewTagsG J      HH IJI 1  ���h
�h 
pnamJ KLK 1  ���g
�g 
pArtL MNM 1  ���f
�f 
pAlbN OPO 1  ���e
�e 
pAlAP QRQ 1  ���d
�d 
pCmpR STS 1  ���c
�c 
pGenT UVU 1  ���b
�b 
pCmtV WXW 1  ���a
�a 
pShwX Y�`Y 1  ��_
�_ 
pGrp�`  E Z�^Z l �]�\�[�]  �\  �[  �^   n  '1[\[ 1  -1�Z
�Z 
pcnt\ n  '-]^] 4  (-�Y_
�Y 
cobj_ o  +,�X�X 0 t  ^ o  '(�W�W 0 sel  �{ 0 t   m   !�V�V  o  !"�U�U 0 	numtracks 	numTracks�z   `�T` r  aba o  �S�S 	0 oldfi  b 1  �R
�R 
pFix�T   `    if tracks are selected...    a �cc 4   i f   t r a c k s   a r e   s e l e c t e d . . .��   \ I 6�Qde
�Q .sysodlogaskr        TEXTd m  ff �gg : N o   t r a c k s   h a v e   b e e n   s e l e c t e d .e �Phi
�P 
btnsh J  $jj k�Ok m  "ll �mm  C a n c e l�O  i �Nno
�N 
dfltn m  %&�M�M o �Lpq
�L 
dispp m  )*�K�K  q �Jr�I
�J 
givur m  -0�H�H �I   X   no selection	    Y �ss    n o   s e l e c t i o n 	 V m     tt�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   S uvu l     �G�F�E�G  �F  �E  v wxw i   yzy I      �D�C�B�D 0 choose_this_tag  �C  �B  z O     /{|{ k    .}} ~~ r    ��� l   ��A�@� I   �?��
�? .gtqpchltTEXT  @   @ TEXT� o    	�>�> 0 
alloptions 
allOptions� �=��
�= 
prmp� l  
 ��<�;� m   
 �� ��� < S e l e c t   a   t a g   t o   g e t   d a t a   f r o m :�<  �;  � �:��9
�: 
appr� o    �8�8 0 my_title  �9  �A  �@  � o      �7�7 0 n   ��� Z   (���6�5� =   ��� o    �4�4 0 n  � m    �3
�3 boovfals� R    $�2�1�
�2 .ascrerr ****      � ****�1  � �0��/
�0 
errn� m     !�.�.���/  �6  �5  � ��-� r   ) .��� l  ) ,��,�+� c   ) ,��� o   ) *�*�* 0 n  � m   * +�)
�) 
ctxt�,  �+  � o      �(�( 0 thistag thisTag�-  | m     ���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  x ��� l     �'�&�%�'  �&  �%  � ��� i   ��� I      �$�#�"�$ 0 choose_that_tag  �#  �"  � k     ^�� ��� r     ��� J     �!�!  � o      � �  0 o  � ��� X    .���� Z   )����� >   ��� l   ���� c    ��� o    �� 0 t  � m    �
� 
ctxt�  �  � o    �� 0 thistag thisTag� s   ! %��� o   ! "�� 0 t  � n      ���  ;   # $� o   " #�� 0 o  �  �  � 0 t  � o    �� 0 
alloptions 
allOptions� ��� l  / /����  �  �  � ��� O   / ^��� k   3 ]�� ��� r   3 F��� I  3 D���
� .gtqpchltTEXT  @   @ TEXT� o   3 4�� 0 o  � ���
� 
prmp� l  5 :���� b   5 :��� b   5 8��� m   5 6�� ��� $ P u t   i n f o   f r o m   t h e  � o   6 7�� 0 thistag thisTag� m   8 9�� ��� ,   t a g   B E F O R E   d a t a   i n . . .�  �  � �
��	
�
 
appr� o   ; @�� 0 my_title  �	  � o      �� 0 n  � ��� Z  G W����� =  G J��� o   G H�� 0 n  � m   H I�
� boovfals� R   M S���
� .ascrerr ****      � ****�  � � ���
�  
errn� m   O P��������  �  �  � ���� r   X ]��� c   X [��� o   X Y���� 0 n  � m   Y Z��
�� 
ctxt� o      ���� 0 thattag thatTag��  � m   / 0���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  �  � ��� l     ��������  ��  ��  � ���� i   ��� I      �������� 
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
allOptions��  ��  ��  � � � l  3 3��������  ��  ��     Y   3 m���� Z   D h���� =  D N	 o   D E���� 0 thattag thatTag	 l  E M
����
 n   E M 4   J M��
�� 
cobj o   K L���� 0 i   o   E J���� 0 
alloptions 
allOptions��  ��   k   Q d  r   Q b l  Q ]���� b   Q ] b   Q X o   Q R���� 0 thistag_sto thisTag_sto o   R W���� 0 	separator   l  X \���� n   X \ 4   Y \��
�� 
cobj o   Z [���� 0 i   o   X Y���� "0 theoriginaltags theOriginalTags��  ��  ��  ��   l     ���� n       4   ^ a��
�� 
cobj o   _ `���� 0 i   o   ] ^���� 0 
thenewtags 
theNewTags��  ��    ��   S   c d��  ��  ��  �� 0 i   m   6 7����  l  7 ?!����! n   7 ?"#" 1   < >��
�� 
leng# o   7 <���� 0 
alloptions 
allOptions��  ��  ��   $%$ l  n n��������  ��  ��  % &'& Z   n �()����( o   n o���� 0 yn  ) Y   r �*��+,��* Z   � �-.����- =  � �/0/ o   � ����� 0 thistag thisTag0 l  � �1����1 n   � �232 4   � ���4
�� 
cobj4 o   � ����� 0 i  3 o   � ����� 0 
alloptions 
allOptions��  ��  . k   � �55 676 r   � �898 m   � �:: �;;  9 l     <����< n      =>= 4   � ���?
�� 
cobj? o   � ����� 0 i  > o   � ����� 0 
thenewtags 
theNewTags��  ��  7 @��@  S   � ���  ��  ��  �� 0 i  + m   u v���� , l  v ~A����A n   v ~BCB 1   { }��
�� 
lengC o   v {���� 0 
alloptions 
allOptions��  ��  ��  ��  ��  ' D��D l  � ���������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � E��E l  � ���������  ��  ��  ��  ��       	��FG 9 AHIJK��  F ���������������� 0 
alloptions 
allOptions�� 0 my_title  �� 0 	separator  �� 0 choose_this_tag  �� 0 choose_that_tag  �� 
0 do_put  
�� .aevtoappnull  �   � ****G ��L�� 	L 	     ! % ) - 1 4H ��z����MN���� 0 choose_this_tag  ��  ��  M ���� 0 n  N 
�����������������
�� 
prmp
�� 
appr�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
errn����
�� 
ctxt� 0 thistag thisTag�� 0� ,b   ���b  � E�O�f  )��lhY hO��&E�UI �~��}�|OP�{�~ 0 choose_that_tag  �}  �|  O �z�y�x�z 0 o  �y 0 t  �x 0 n  P �w�v�u�t�s��r���q�p�o�n�m�l
�w 
kocl
�v 
cobj
�u .corecnte****       ****
�t 
ctxt�s 0 thistag thisTag
�r 
prmp
�q 
appr�p 
�o .gtqpchltTEXT  @   @ TEXT
�n 
errn�m���l 0 thattag thatTag�{ _jvE�O (b   [��l kh ��&� 	��6GY h[OY��O� ,����%�%�b  � E�O�f  )��lhY hO��&E�UJ �k��j�iQR�h�k 
0 do_put  �j  �i  Q �g�f�g 0 i  �f 0 thistag_sto thisTag_stoR 
�e�d�c�b�a�`�_:�^�]
�e 
leng�d 0 thistag thisTag
�c 
cobj�b "0 theoriginaltags theOriginalTags�a 0 thattag thatTag�` 0 
thenewtags 
theNewTags�_ 0 yn  �^  �]  �h � � .kb   �,Ekh  �b   �/  ��/E�OY h[OY��O 9kb   �,Ekh  �b   �/  �b  %��/%��/FOY h[OY��O� 4 .kb   �,Ekh  �b   �/  ���/FOY h[OY��Y hOPW X  	hOPK �\S�[�ZTU�Y
�\ .aevtoappnull  �   � ****S k    7VV  R�X�X  �[  �Z  T �W�W 0 t  U Ct�V�U�T�S r�R | ��Q � ��P � ��O�N�M�L�K�J�I�H�G�F ��E�D�C�B�A�@�?�> � ��= � � �<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&fl�%
�V 
sele�U 0 sel  
�T 
leng�S 0 	numtracks 	numTracks�R 0 s  
�Q 
ret 
�P 
btns
�O 
dflt
�N 
appr
�M 
givu�L �K 
�J .sysodlogaskr        TEXT
�I 
rslt
�H 
gavu�G 0 choose_this_tag  �F 0 choose_that_tag  
�E 
dtxt�D 
�C 
ttxt�B 0 new_separator  �A  �@  
�? 
errn�>���= 0 thistag thisTag�< -
�; 
bhit�: 0 yn  
�9 
pFix�8 	0 oldfi  
�7 
cobj
�6 
pcnt
�5 
pnam
�4 
pArt
�3 
pAlb
�2 
pAlA
�1 
pCmp
�0 
pGen
�/ 
pCmt
�. 
pShw
�- 
pGrp�, 	�+ "0 theoriginaltags theOriginalTags�* 0 
thenewtags 
theNewTags�) 
0 do_put  �( �' �& 
�% 
disp�Y8�4*�,jv*�,E�O��,E�O�E�O�k  �E�Y hO��%�%��%�%�%%���lv�la b  a a a  O_ a ,e  hY hO)j+ O)j+ O _hZ ,a a b  a b  a a a  a ,E` W X  )a  a !lhO_ a " _ Ec  OY h[OY��Oa #_ $%a %%�a &a 'lv�la b  a a (a  a ),a * E` +O*a ,,E` -Oe*a ,,FO �k�kh  �a .�/a /, �*a 0,E*a 1,E*a 2,E*a 3,E*a 4,E*a 5,E*a 6,E*a 7,E*a 8,Ea 9vE` :O_ :E` ;O)j+ <O_ ;E[a .k/*a 0,FZ[a .l/*a 1,FZ[a .m/*a 2,FZ[a .a =/*a 3,FZ[a .a >/*a 4,FZ[a .a /*a 5,FZ[a .a ?/*a 6,FZ[a .a /*a 7,FZ[a .a 9/*a 8,FZOPU[OY�O_ -*a ,,FY a @�a Akv�ka Bja a a  U ascr  ��ޭ