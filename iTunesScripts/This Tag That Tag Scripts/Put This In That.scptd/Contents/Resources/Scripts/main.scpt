FasdUAS 1.101.10   ��   ��    k             l      ��  ��   C= Put This In That

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

     � 	 	z   P u t   T h i s   I n   T h a t 
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
 G e n r e (  + , + m     - - � . .  C o m m e n t s ,  / 0 / m     1 1 � 2 2  S h o w 0  3�� 3 m    	 4 4 � 5 5  G r o u p i n g��     6 7 6 j    �� 8�� 0 my_title   8 m     9 9 � : :   P u t   T h i s   I n   T h a t 7  ; < ; p     = = �� >�� 0 thistag thisTag > �� ?�� 0 thattag thatTag ? �� @�� 0 
thenewtags 
theNewTags @ �� A�� "0 theoriginaltags theOriginalTags A ������ 0 yn  ��   <  B C B l     ��������  ��  ��   C  D E D l   � F���� F O    � G H G l  � I J K I Z   � L M�� N L >   
 O P O 1    ��
�� 
sele P J    	����   M l  � Q R S Q k   � T T  U V U r     W X W 1    ��
�� 
sele X o      ���� 0 sel   V  Y Z Y r     [ \ [ l    ]���� ] n     ^ _ ^ 1    ��
�� 
leng _ o    ���� 0 sel  ��  ��   \ o      ���� 0 	numtracks 	numTracks Z  ` a ` r     b c b m     d d � e e  s c o      ���� 0 s   a  f g f Z   * h i���� h =     j k j o    ���� 0 	numtracks 	numTracks k m    ����  i r   # & l m l m   # $ n n � o o   m o      ���� 0 s  ��  ��   g  p q p I  + S�� r s
�� .sysodlogaskr        TEXT r b   + 8 t u t b   + 0 v w v b   + . x y x m   + , z z � { { � T h e   d a t a   f r o m   o n e   t a g   R E P L A C E S   t h e   d a t a   i n   a n o t h e r   t a g   i n   a l l   t h e   s e l e c t e d   t r a c k s ,   w i t h   o p t i o n   t o   d e l e t e   d a t a   i n   f i r s t   t a g . y o   , -��
�� 
ret  w o   . /��
�� 
ret  u l  0 7 |���� | b   0 7 } ~ } b   0 5  �  b   0 3 � � � o   0 1���� 0 	numtracks 	numTracks � m   1 2 � � � � �    t r a c k � o   3 4���� 0 s   ~ m   5 6 � � � � �    s e l e c t e d .��  ��   s �� � �
�� 
btns � J   9 = � �  � � � m   9 : � � � � �  C a n c e l �  ��� � m   : ; � � � � �  C o n t i n u e��   � �� � �
�� 
dflt � m   > ?����  � �� � �
�� 
appr � o   B G���� 0 my_title   � �� ���
�� 
givu � m   J M���� ��   q  � � � Z  T f � ����� � =  T ] � � � n   T [ � � � 1   W [��
�� 
gavu � 1   T W��
�� 
rslt � m   [ \��
�� boovtrue � L   ` b����  ��  ��   �  � � � l  g g��������  ��  ��   �  � � � n  g l � � � I   h l�������� 0 choose_this_tag  ��  ��   �  f   g h �  � � � l  m m��������  ��  ��   �  � � � n  m r � � � I   n r�������� 0 choose_that_tag  ��  ��   �  f   m n �  � � � l  s s��������  ��  ��   �  � � � r   s � � � � l  s � ����� � =  s � � � � n   s � � � � 1   � ���
�� 
bhit � l  s � ����� � I  s ��� � �
�� .sysodlogaskr        TEXT � b   s ~ � � � b   s z � � � m   s v � � � � �  D e l e t e   d a t a   i n   � o   v y���� 0 thistag thisTag � m   z } � � � � �    a f t e r w a r d s ? � �� � �
�� 
btns � J    � � �  � � � m    � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� � �
�� 
dflt � m   � �����  � �� � �
�� 
appr � o   � ����� 0 my_title   � �� ���
�� 
givu � m   � ����� -��  ��  ��   � m   � � � � � � �  Y e s��  ��   � o      ���� 0 yn   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � 1   � ���
�� 
pFix � o      ���� 	0 oldfi   �  � � � r   � � � � � m   � ���
�� boovtrue � 1   � ���
�� 
pFix �  � � � l  � ���������  ��  ��   �  � � � Y   �� ��� � ��� � O   �� � � � k   �� � �  � � � r   � � � � J   � � �  � � � e   � � � � 1   � ���
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
pCmt �  �  � e   � 1   ���
�� 
pShw  �� e  	 1  	��
�� 
pGrp��   � o      ���� "0 theoriginaltags theOriginalTags �  r   o  ���� "0 theoriginaltags theOriginalTags o      ���� 0 
thenewtags 
theNewTags 	 n 

 I  �������� 
0 do_put  ��  ��    f  	 �� r   � o   #���� 0 
thenewtags 
theNewTags J        1  */��
�� 
pnam  1  7<��
�� 
pArt  1  DI��
�� 
pAlb  1  SX��
�� 
pAlA  1  bg��
�� 
pCmp  1  qv��
�� 
pGen  1  ����
�� 
pCmt  1  ����
�� 
pShw  ��  1  ����
�� 
pGrp��  ��   � n   � �!"! 1   � ���
�� 
pcnt" n   � �#$# 4   � ��%
� 
cobj% o   � ��~�~ 0 t  $ o   � ��}�} 0 sel  �� 0 t   � m   � ��|�|  � o   � ��{�{ 0 	numtracks 	numTracks��   � &'& l ���z�y�x�z  �y  �x  ' (�w( r  ��)*) o  ���v�v 	0 oldfi  * 1  ���u
�u 
pFix�w   R    if tracks are selected...    S �++ 4   i f   t r a c k s   a r e   s e l e c t e d . . .��   N I ���t,-
�t .sysodlogaskr        TEXT, m  ��.. �// : N o   t r a c k s   h a v e   b e e n   s e l e c t e d .- �s01
�s 
btns0 J  ��22 3�r3 m  ��44 �55  C a n c e l�r  1 �q67
�q 
dflt6 m  ���p�p 7 �o89
�o 
disp8 m  ���n�n  9 �m:�l
�m 
givu: m  ���k�k �l   J   no selection	    K �;;    n o   s e l e c t i o n 	 H m     <<�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  ��  ��   E =>= l     �j�i�h�j  �i  �h  > ?@? i   ABA I      �g�f�e�g 0 choose_this_tag  �f  �e  B O     /CDC k    .EE FGF r    HIH l   J�d�cJ I   �bKL
�b .gtqpchltTEXT  @   @ TEXTK o    	�a�a 0 
alloptions 
allOptionsL �`MN
�` 
prmpM l  
 O�_�^O m   
 PP �QQ < S e l e c t   a   t a g   t o   g e t   d a t a   f r o m :�_  �^  N �]R�\
�] 
apprR o    �[�[ 0 my_title  �\  �d  �c  I o      �Z�Z 0 n  G STS Z   (UV�Y�XU =   WXW o    �W�W 0 n  X m    �V
�V boovfalsV R    $�U�TY
�U .ascrerr ****      � ****�T  Y �SZ�R
�S 
errnZ m     !�Q�Q���R  �Y  �X  T [�P[ r   ) .\]\ l  ) ,^�O�N^ c   ) ,_`_ o   ) *�M�M 0 n  ` m   * +�L
�L 
ctxt�O  �N  ] o      �K�K 0 thistag thisTag�P  D m     aa�                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  @ bcb l     �J�I�H�J  �I  �H  c ded i   fgf I      �G�F�E�G 0 choose_that_tag  �F  �E  g k     ^hh iji r     klk J     �D�D  l o      �C�C 0 o  j mnm X    .o�Bpo Z   )qr�A�@q >   sts l   u�?�>u c    vwv o    �=�= 0 t  w m    �<
�< 
ctxt�?  �>  t o    �;�; 0 thistag thisTagr s   ! %xyx o   ! "�:�: 0 t  y n      z{z  ;   # ${ o   " #�9�9 0 o  �A  �@  �B 0 t  p o    �8�8 0 
alloptions 
allOptionsn |}| l  / /�7�6�5�7  �6  �5  } ~�4~ O   / ^� k   3 ]�� ��� r   3 F��� I  3 D�3��
�3 .gtqpchltTEXT  @   @ TEXT� o   3 4�2�2 0 o  � �1��
�1 
prmp� l  5 :��0�/� b   5 :��� b   5 8��� m   5 6�� ��� $ U s e   d a t a   f r o m   t h e  � o   6 7�.�. 0 thistag thisTag� m   8 9�� ��� 4   t a g   t o   R E P L A C E   d a t a   i n . . .�0  �/  � �-��,
�- 
appr� o   ; @�+�+ 0 my_title  �,  � o      �*�* 0 n  � ��� Z  G W���)�(� =  G J��� o   G H�'�' 0 n  � m   H I�&
�& boovfals� R   M S�%�$�
�% .ascrerr ****      � ****�$  � �#��"
�# 
errn� m   O P�!�!���"  �)  �(  � �� � r   X ]��� c   X [��� o   X Y�� 0 n  � m   Y Z�
� 
ctxt� o      �� 0 thattag thatTag�   � m   / 0���                                                                                  hook   alis    :  Mac HD                     �L�eH+     �
iTunes.app                                                      U3�0�        ����  	                Applications    �L�      �i1       �  Mac HD:Applications:iTunes.app   
 i T u n e s . a p p    M a c   H D  Applications/iTunes.app   / ��  �4  e ��� l     ����  �  �  � ��� i   ��� I      ���� 
0 do_put  �  �  � k     ��� ��� Q     ����� k    ��� ��� Y    2������ Z    -����� =   ��� o    �� 0 thistag thisTag� l   ���� n    ��� 4    ��
� 
cobj� o    �� 0 i  � o    �� 0 
alloptions 
allOptions�  �  � k   ! )�� ��� r   ! '��� l  ! %��
�	� n   ! %��� 4   " %��
� 
cobj� o   # $�� 0 i  � o   ! "�� "0 theoriginaltags theOriginalTags�
  �	  � o      �� 0 thistag_sto thisTag_sto� ���  S   ( )�  �  �  � 0 i  � m    �� � l   ���� n    ��� 1    � 
�  
leng� o    ���� 0 
alloptions 
allOptions�  �  �  � ��� l  3 3��������  ��  ��  � ��� Y   3 b�������� Z   D ]������� =  D N��� o   D E���� 0 thattag thatTag� l  E M������ n   E M��� 4   J M���
�� 
cobj� o   K L���� 0 i  � o   E J���� 0 
alloptions 
allOptions��  ��  � k   Q Y�� ��� r   Q W��� o   Q R���� 0 thistag_sto thisTag_sto� l     ������ n      ��� 4   S V���
�� 
cobj� o   T U���� 0 i  � o   R S���� 0 
thenewtags 
theNewTags��  ��  � ����  S   X Y��  ��  ��  �� 0 i  � m   6 7���� � l  7 ?������ n   7 ?��� 1   < >��
�� 
leng� o   7 <���� 0 
alloptions 
allOptions��  ��  ��  � ��� l  c c��������  ��  ��  � ��� Z   c �������� o   c d���� 0 yn  � Y   g ��������� Z   x �������� =  x ���� o   x y���� 0 thistag thisTag� l  y ������� n   y ���� 4   ~ ����
�� 
cobj� o    ����� 0 i  � o   y ~���� 0 
alloptions 
allOptions��  ��  � k   � ��� ��� r   � ���� m   � ��� ���  � l     ������ n      ��� 4   � ����
�� 
cobj� o   � ����� 0 i  � o   � ����� 0 
thenewtags 
theNewTags��  ��  � ����  S   � ���  ��  ��  �� 0 i  � m   j k���� � l  k s ����  n   k s 1   p r��
�� 
leng o   k p���� 0 
alloptions 
allOptions��  ��  ��  ��  ��  � �� l  � ���������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �  � �� l  � ���������  ��  ��  ��  �       �� 9	
��   �������������� 0 
alloptions 
allOptions�� 0 my_title  �� 0 choose_this_tag  �� 0 choose_that_tag  �� 
0 do_put  
�� .aevtoappnull  �   � **** ���� 	 	     ! % ) - 1 4 ��B�������� 0 choose_this_tag  ��  ��   ���� 0 n   
a��P��������������
�� 
prmp
�� 
appr�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
errn����
�� 
ctxt�� 0 thistag thisTag�� 0� ,b   ���b  � E�O�f  )��lhY hO��&E�U ��g�������� 0 choose_that_tag  ��  ��   �������� 0 o  �� 0 t  �� 0 n   ���������������������������
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
errn������ 0 thattag thatTag�� _jvE�O (b   [��l kh ��&� 	��6GY h[OY��O� ,����%�%�b  � E�O�f  )��lhY hO��&E�U	 ����������� 
0 do_put  ��  ��   ������ 0 i  �� 0 thistag_sto thisTag_sto 
�������������������
�� 
leng�� 0 thistag thisTag
�� 
cobj�� "0 theoriginaltags theOriginalTags�� 0 thattag thatTag�� 0 
thenewtags 
theNewTags�� 0 yn  ��  ��  �� � � .kb   �,Ekh  �b   �/  ��/E�OY h[OY��O .kb   �,Ekh  �b   �/  ���/FOY h[OY��O� 4 .kb   �,Ekh  �b   �/  ���/FOY h[OY��Y hOPW X  	hOP
 ��������
�� .aevtoappnull  �   � **** k    �  D����  ��  ��   ���� 0 t   :<������� d�~ n z�} � ��| � ��{�z�y�x�w�v�u�t�s�r ��q � � ��p�o ��n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y.4�X
�� 
sele�� 0 sel  
�� 
leng� 0 	numtracks 	numTracks�~ 0 s  
�} 
ret 
�| 
btns
�{ 
dflt
�z 
appr
�y 
givu�x �w 
�v .sysodlogaskr        TEXT
�u 
rslt
�t 
gavu�s 0 choose_this_tag  �r 0 choose_that_tag  �q 0 thistag thisTag�p -
�o 
bhit�n 0 yn  
�m 
pFix�l 	0 oldfi  
�k 
cobj
�j 
pcnt
�i 
pnam
�h 
pArt
�g 
pAlb
�f 
pAlA
�e 
pCmp
�d 
pGen
�c 
pCmt
�b 
pShw
�a 
pGrp�` 	�_ "0 theoriginaltags theOriginalTags�^ 0 
thenewtags 
theNewTags�] 
0 do_put  �\ �[ �Z �Y 
�X 
disp�����*�,jv�*�,E�O��,E�O�E�O�k  �E�Y hO��%�%��%�%�%%���lv�la b  a a a  O_ a ,e  hY hO)j+ O)j+ Oa _ %a %�a a lv�la b  a a a  a ,a   E` !O*a ",E` #Oe*a ",FO �k�kh  �a $�/a %, �*a &,E*a ',E*a (,E*a ),E*a *,E*a +,E*a ,,E*a -,E*a .,Ea /vE` 0O_ 0E` 1O)j+ 2O_ 1E[a $k/*a &,FZ[a $l/*a ',FZ[a $m/*a (,FZ[a $a 3/*a ),FZ[a $a 4/*a *,FZ[a $a 5/*a +,FZ[a $a 6/*a ,,FZ[a $a /*a -,FZ[a $a //*a .,FZU[OY�O_ #*a ",FY a 7�a 8kv�ka 9ja a a  Uascr  ��ޭ