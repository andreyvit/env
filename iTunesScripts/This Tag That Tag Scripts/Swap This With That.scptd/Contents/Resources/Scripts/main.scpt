FasdUAS 1.101.10   ��   ��    k             l      ��  ��   -' Swap This With That (This Tag, That Tag Scripts)

v2.0 april 22 2008
- runs as universal binary
- adds "Show" tag
- consolidated code
- saved as script bundle

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

     � 	 	N   S w a p   T h i s   W i t h   T h a t   ( T h i s   T a g ,   T h a t   T a g   S c r i p t s ) 
 
 v 2 . 0   a p r i l   2 2   2 0 0 8 
 -   r u n s   a s   u n i v e r s a l   b i n a r y 
 -   a d d s   " S h o w "   t a g 
 -   c o n s o l i d a t e d   c o d e 
 -   s a v e d   a s   s c r i p t   b u n d l e 
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
 G e n r e (  + , + m     - - � . .  C o m m e n t s ,  / 0 / m     1 1 � 2 2  S h o w 0  3�� 3 m    	 4 4 � 5 5  G r o u p i n g��     6 7 6 j    �� 8�� 0 my_title   8 m     9 9 � : : & S w a p   T h i s   W i t h   T h a t 7  ; < ; p     = = �� >�� 0 thistag thisTag > �� ?�� 0 thattag thatTag ? �� @�� 0 
thenewtags 
theNewTags @ ������ "0 theoriginaltags theOriginalTags��   <  A B A l     ��������  ��  ��   B  C D C l   � E���� E O    � F G F l  � H I J H Z   � K L�� M K >   
 N O N 1    ��
�� 
sele O J    	����   L l  ~ P Q R P k   ~ S S  T U T r     V W V 1    ��
�� 
sele W o      ���� 0 sel   U  X Y X r     Z [ Z l    \���� \ n     ] ^ ] 1    ��
�� 
leng ^ o    ���� 0 sel  ��  ��   [ o      ���� 0 	numtracks 	numTracks Y  _ ` _ r     a b a m     c c � d d  s b o      ���� 0 s   `  e f e Z   * g h���� g =     i j i o    ���� 0 	numtracks 	numTracks j m    ����  h r   # & k l k m   # $ m m � n n   l o      ���� 0 s  ��  ��   f  o p o I  + S�� q r
�� .sysodlogaskr        TEXT q b   + 8 s t s b   + 0 u v u b   + . w x w m   + , y y � z z � S w a p   t h e   d a t a   f r o m   o n e   t a g   w i t h   t h e   d a t a   f r o m   a n o t h e r   t a g   i n   a l l   t h e   s e l e c t e d   t r a c k s . x o   , -��
�� 
ret  v o   . /��
�� 
ret  t l  0 7 {���� { b   0 7 | } | b   0 5 ~  ~ b   0 3 � � � o   0 1���� 0 	numtracks 	numTracks � m   1 2 � � � � �    t r a c k  o   3 4���� 0 s   } m   5 6 � � � � �    s e l e c t e d .��  ��   r �� � �
�� 
btns � J   9 = � �  � � � m   9 : � � � � �  C a n c e l �  ��� � m   : ; � � � � �  C o n t i n u e��   � �� � �
�� 
dflt � m   > ?����  � �� � �
�� 
appr � o   B G���� 0 my_title   � �� ���
�� 
givu � m   J M���� ��   p  � � � Z  T f � ����� � =  T ] � � � n   T [ � � � 1   W [��
�� 
gavu � 1   T W��
�� 
rslt � m   [ \��
�� boovtrue � L   ` b����  ��  ��   �  � � � l  g g��������  ��  ��   �  � � � n  g l � � � I   h l�������� 0 choose_this_tag  ��  ��   �  f   g h �  � � � l  m m��������  ��  ��   �  � � � n  m r � � � I   n r�������� 0 choose_that_tag  ��  ��   �  f   m n �  � � � l  s s��������  ��  ��   �  � � � r   s | � � � 1   s x��
�� 
pFix � o      ���� 	0 oldfi   �  � � � r   } � � � � m   } ~��
�� boovtrue � 1   ~ ���
�� 
pFix �  � � � l  � ���������  ��  ��   �  � � � Y   �t ��� � ��� � O   �o � � � k   �n � �  � � � r   � � � � � J   � � � �  � � � e   � � � � 1   � ���
�� 
pnam �  � � � e   � � � � 1   � ���
�� 
pArt �  � � � e   � � � � 1   � ���
�� 
pAlb �  � � � e   � � � � 1   � ���
�� 
pAlA �  � � � e   � � � � 1   � ���
�� 
pCmp �  � � � e   � � � � 1   � ���
�� 
pGen �  � � � e   � � � � 1   � ���
�� 
pCmt �  � � � e   � � � � 1   � ���
�� 
pShw �  ��� � e   � � � � 1   � ���
�� 
pGrp��   � o      ���� "0 theoriginaltags theOriginalTags �  � � � r   � � � � � o   � ����� "0 theoriginaltags theOriginalTags � o      ���� 0 
thenewtags 
theNewTags �  � � � n  � � � � � I   � ��������� 0 do_swap  ��  ��   �  f   � � �  ��� � r   �n � � � o   � ����� 0 
thenewtags 
theNewTags � J       � �  � � � 1   � ���
�� 
pnam �  � � � 1   ��
�� 
pArt �  � � � 1  ��
�� 
pAlb �  � � � 1  !��
�� 
pAlA �  � � � 1  +0��
�� 
pCmp �  � � � 1  :?��
�� 
pGen �  � � � 1  IN��
�� 
pCmt �  � � � 1  X]��
�� 
pShw �  ��� � 1  gl��
�� 
pGrp��  ��   � n   � � � � � 1   � ���
�� 
pcnt � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 t   � o   � ����� 0 sel  �� 0 t   � m   � �����  � o   � ����� 0 	numtracks 	numTracks��   �  � � � l uu��������  ��  ��   �  ��  r  u~ o  ux���� 	0 oldfi   1  x}��
�� 
pFix��   Q    if tracks are selected...    R � 4   i f   t r a c k s   a r e   s e l e c t e d . . .��   M I ����
�� .sysodlogaskr        TEXT m  �� � : N o   t r a c k s   h a v e   b e e n   s e l e c t e d . ��	
�� 
btns J  ��

 �� m  �� �  C a n c e l��  	 ��
�� 
dflt m  ������  ��
�� 
disp m  ������   ����
�� 
givu m  ������ ��   I   no selection	    J �    n o   s e l e c t i o n 	 G m     �                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   D  l     ��~�}�  �~  �}    i    I      �|�{�z�| 0 choose_this_tag  �{  �z   O     / k    .  r     !  l   "�y�x" I   �w#$
�w .gtqpchltTEXT  @   @ TEXT# o    	�v�v 0 
alloptions 
allOptions$ �u%&
�u 
prmp% l  
 '�t�s' m   
 (( �)) 4 S e l e c t   a   t a g   t o   s w a p   f r o m :�t  �s  & �r*�q
�r 
appr* o    �p�p 0 my_title  �q  �y  �x  ! o      �o�o 0 n   +,+ Z   (-.�n�m- =   /0/ o    �l�l 0 n  0 m    �k
�k boovfals. R    $�j�i1
�j .ascrerr ****      � ****�i  1 �h2�g
�h 
errn2 m     !�f�f���g  �n  �m  , 3�e3 r   ) .454 l  ) ,6�d�c6 c   ) ,787 o   ) *�b�b 0 n  8 m   * +�a
�a 
ctxt�d  �c  5 o      �`�` 0 thistag thisTag�e   m     99�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��   :;: l     �_�^�]�_  �^  �]  ; <=< i   >?> I      �\�[�Z�\ 0 choose_that_tag  �[  �Z  ? k     ^@@ ABA r     CDC J     �Y�Y  D o      �X�X 0 o  B EFE X    .G�WHG Z   )IJ�V�UI >   KLK l   M�T�SM c    NON o    �R�R 0 t  O m    �Q
�Q 
ctxt�T  �S  L o    �P�P 0 thistag thisTagJ s   ! %PQP o   ! "�O�O 0 t  Q n      RSR  ;   # $S o   " #�N�N 0 o  �V  �U  �W 0 t  H o    �M�M 0 
alloptions 
allOptionsF TUT l  / /�L�K�J�L  �K  �J  U V�IV O   / ^WXW k   3 ]YY Z[Z r   3 F\]\ I  3 D�H^_
�H .gtqpchltTEXT  @   @ TEXT^ o   3 4�G�G 0 o  _ �F`a
�F 
prmp` l  5 :b�E�Db b   5 :cdc b   5 8efe m   5 6gg �hh & S w a p   i n f o   f r o m   t h e  f o   6 7�C�C 0 thistag thisTagd m   8 9ii �jj    t a g   w i t h . . .�E  �D  a �Bk�A
�B 
apprk o   ; @�@�@ 0 my_title  �A  ] o      �?�? 0 n  [ lml Z  G Wno�>�=n =  G Jpqp o   G H�<�< 0 n  q m   H I�;
�; boovfalso R   M S�:�9r
�: .ascrerr ****      � ****�9  r �8s�7
�8 
errns m   O P�6�6���7  �>  �=  m t�5t r   X ]uvu c   X [wxw o   X Y�4�4 0 n  x m   Y Z�3
�3 
ctxtv o      �2�2 0 thattag thatTag�5  X m   / 0yy�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  �I  = z{z l     �1�0�/�1  �0  �/  { |�.| i   }~} I      �-�,�+�- 0 do_swap  �,  �+  ~ Q     ���* k    ��� ��� Y    2��)���(� Z    -���'�&� =   ��� o    �%�% 0 thistag thisTag� l   ��$�#� n    ��� 4    �"�
�" 
cobj� o    �!�! 0 i  � o    � �  0 
alloptions 
allOptions�$  �#  � k   ! )�� ��� r   ! '��� l  ! %���� n   ! %��� 4   " %��
� 
cobj� o   # $�� 0 i  � o   ! "�� "0 theoriginaltags theOriginalTags�  �  � o      �� 0 thistag_sto thisTag_sto� ���  S   ( )�  �'  �&  �) 0 i  � m    �� � l   ���� n    ��� 1    �
� 
leng� o    �� 0 
alloptions 
allOptions�  �  �(  � ��� l  3 3����  �  �  � ��� Y   3 i������ Z   D d����� =  D N��� o   D E�� 0 thattag thatTag� l  E M���
� n   E M��� 4   J M�	�
�	 
cobj� o   K L�� 0 i  � o   E J�� 0 
alloptions 
allOptions�  �
  � k   Q `�� ��� r   Q W��� l  Q U���� n   Q U��� 4   R U��
� 
cobj� o   S T�� 0 i  � o   Q R�� "0 theoriginaltags theOriginalTags�  �  � o      �� 0 	temp_stow  � ��� r   X ^��� o   X Y� �  0 thistag_sto thisTag_sto� l     ������ n      ��� 4   Z ]���
�� 
cobj� o   [ \���� 0 i  � o   Y Z���� 0 
thenewtags 
theNewTags��  ��  � ����  S   _ `��  �  �  � 0 i  � m   6 7���� � l  7 ?������ n   7 ?��� 1   < >��
�� 
leng� o   7 <���� 0 
alloptions 
allOptions��  ��  �  � ��� l  j j��������  ��  ��  � ���� Y   j ��������� Z   { �������� =  { ���� o   { |���� 0 thistag thisTag� l  | ������� n   | ���� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   | ����� 0 
alloptions 
allOptions��  ��  � k   � ��� ��� r   � ���� o   � ����� 0 	temp_stow  � l     ������ n      ��� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 
thenewtags 
theNewTags��  ��  � ����  S   � ���  ��  ��  �� 0 i  � m   m n���� � l  n v������ n   n v��� 1   s u��
�� 
leng� o   n s���� 0 
alloptions 
allOptions��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �*  �.       ���� 9������  � �������������� 0 
alloptions 
allOptions�� 0 my_title  �� 0 choose_this_tag  �� 0 choose_that_tag  �� 0 do_swap  
�� .aevtoappnull  �   � ****� ����� 	� 	     ! % ) - 1 4� ������������ 0 choose_this_tag  ��  ��  � ���� 0 n  � 
9��(��������������
�� 
prmp
�� 
appr�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
errn����
�� 
ctxt�� 0 thistag thisTag�� 0� ,b   ���b  � E�O�f  )��lhY hO��&E�U� ��?���������� 0 choose_that_tag  ��  ��  � �������� 0 o  �� 0 t  �� 0 n  � ����������y��gi������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt�� 0 thistag thisTag
�� 
prmp
�� 
appr�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
errn������ 0 thattag thatTag�� _jvE�O (b   [��l kh ��&� 	��6GY h[OY��O� ,����%�%�b  � E�O�f  )��lhY hO��&E�U� ��~���������� 0 do_swap  ��  ��  � �������� 0 i  �� 0 thistag_sto thisTag_sto�� 0 	temp_stow  � ����������������
�� 
leng�� 0 thistag thisTag
�� 
cobj�� "0 theoriginaltags theOriginalTags�� 0 thattag thatTag�� 0 
thenewtags 
theNewTags��  ��  �� � � .kb   �,Ekh  �b   �/  ��/E�OY h[OY��O 5kb   �,Ekh  �b   �/  ��/E�O���/FOY h[OY��O .kb   �,Ekh  �b   �/  ���/FOY h[OY��W X  h� �����������
�� .aevtoappnull  �   � ****� k    ���  C����  ��  ��  � ���� 0 t  � 2�������� c�� m y�� � ��� � �������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s
�� 
sele�� 0 sel  
�� 
leng�� 0 	numtracks 	numTracks�� 0 s  
�� 
ret 
�� 
btns
�� 
dflt
�� 
appr
�� 
givu�� �� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
gavu�� 0 choose_this_tag  �� 0 choose_that_tag  
�� 
pFix�� 	0 oldfi  
�� 
cobj
�� 
pcnt
�� 
pnam
�� 
pArt
�� 
pAlb
�� 
pAlA
�� 
pCmp
�� 
pGen
� 
pCmt
�~ 
pShw
�} 
pGrp�| 	�{ "0 theoriginaltags theOriginalTags�z 0 
thenewtags 
theNewTags�y 0 do_swap  �x �w �v �u 
�t 
disp�s �����*�,jvv*�,E�O��,E�O�E�O�k  �E�Y hO��%�%��%�%�%%���lv�la b  a a a  O_ a ,e  hY hO)j+ O)j+ O*a ,E` Oe*a ,FO �k�kh  �a �/a , �*a ,E*a ,E*a ,E*a  ,E*a !,E*a ",E*a #,E*a $,E*a %,Ea &vE` 'O_ 'E` (O)j+ )O_ (E[a k/*a ,FZ[a l/*a ,FZ[a m/*a ,FZ[a a */*a  ,FZ[a a +/*a !,FZ[a a ,/*a ",FZ[a a -/*a #,FZ[a a /*a $,FZ[a a &/*a %,FZU[OY�O_ *a ,FY a .�a /kv�ka 0ja a 1a  Uascr  ��ޭ