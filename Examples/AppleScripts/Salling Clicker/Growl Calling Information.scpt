FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
	Salling Clicker script to log phone calls to Growl
	� 2004 Robert Leslie
	Inspired by George (Ty) Tempel's first implementation

	This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
	
	--Changes to work with growl: Jeremy Rossi
	
       	  j     �� 
�� 0 currentcalls currentCalls 
 J     ����   	     l     ������  ��        i        I      �������� 0 	connected  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i        I      �������� 0 entered_proximity  ��  ��    r         J     ����    o      ���� 0 currentcalls currentCalls      l     ������  ��        i         I      �� !���� "0 phone_call_status_notification   !  "�� " o      ���� 0 
event_info  ��  ��     k    � # #  $ % $ w     � & ' & k    � ( (  ) * ) l   �� +��   + @ :- "the_call_status" can have the following keyword values:    *  , - , l   �� .��   . D >- alerting/calling/connecting/holding/waiting/active/idle/busy    -  / 0 / r     1 2 1 m     3 3       2 o      ���� 0 call_status   0  4 5 4 r     6 7 6 n    	 8 9 8 o    	���� 0 the_call_status   9 o    ���� 0 
event_info   7 o      ���� 0 event_call_status   5  : ; : Z    s < = >�� < =    ? @ ? o    ���� 0 event_call_status   @ m    ��
�� CSxxCSal = r     A B A m     C C  alerting    B o      ���� 0 call_status   >  D E D =    F G F o    ���� 0 event_call_status   G m    ��
�� CSxxCScl E  H I H r    ! J K J m     L L  calling    K o      ���� 0 call_status   I  M N M =  $ ' O P O o   $ %���� 0 event_call_status   P m   % &��
�� CSxxCSct N  Q R Q r   * - S T S m   * + U U  
connecting    T o      ���� 0 call_status   R  V W V =  0 3 X Y X o   0 1���� 0 event_call_status   Y m   1 2��
�� CSxxCShd W  Z [ Z r   6 9 \ ] \ m   6 7 ^ ^  holding    ] o      ���� 0 call_status   [  _ ` _ =  < ? a b a o   < =���� 0 event_call_status   b m   = >��
�� CSxxCSwt `  c d c r   B E e f e m   B C g g  waiting    f o      ���� 0 call_status   d  h i h =  H K j k j o   H I���� 0 event_call_status   k m   I J��
�� CSxxCSac i  l m l r   N Q n o n m   N O p p  active    o o      ���� 0 call_status   m  q r q =  T W s t s o   T U���� 0 event_call_status   t m   U V��
�� CSxxCSid r  u v u r   Z _ w x w m   Z ] y y 
 idle    x o      ���� 0 call_status   v  z { z =  b g | } | o   b c���� 0 event_call_status   } m   c f��
�� CSxxCSbs {  ~�� ~ r   j o  �  m   j m � � 
 busy    � o      ���� 0 call_status  ��  ��   ;  � � � l  t t������  ��   �  � � � l  t t�� ���   � > 8- "the_call_type" can have the following keyword values:    �  � � � l  t t�� ���   � &  - voice/data/fax/alternate voice    �  � � � r   t y � � � m   t w � �       � o      ���� 0 	call_type   �  � � � r   z � � � � n   z  � � � o   { ���� 0 the_call_type   � o   z {���� 0 
event_info   � o      ���� 0 event_call_type   �  � � � Z   � � � � ��� � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTvc � r   � � � � � m   � � � �  voice    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTda �  � � � r   � � � � � m   � � � � 
 data    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTfx �  � � � r   � � � � � m   � � � � 	 fax    � o      ���� 0 	call_type   �  � � � =  � � � � � o   � ����� 0 event_call_type   � m   � ���
�� CTxxCTv2 �  ��� � r   � � � � � m   � � � �  alternate voice    � o      ���� 0 	call_type  ��  ��   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � J D- "the_cid" is a numerical identifier represeting the call that this    �  � � � l  � ��� ���   � ; 5- event corresponds to (useful for tracking events in    �  � � � l  � ��� ���   �  - multi-party calls)    �  � � � r   � � � � � n   � � � � � o   � ����� 0 the_cid   � o   � ����� 0 
event_info   � o      ���� 0 event_call_id   �  � � � l  � �������  ��   �  � � � l  � ��� ���   � 8 2- Additionally the "the_phone_number" string value    �  � � � l  � ��� ���   � ; 5- is sometimes available (at least for "alerting" and    �  � � � l  � ��� ���   �  - "calling")    �  � � � r   � � � � � m   � � � �       � o      ���� 0 event_caller_id   �  ��� � Q   � � � ��� � r   � � � � � n   � � � � � o   � ����� 0 the_phone_number   � o   � ����� 0 
event_info   � o      ���� 0 event_caller_id   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   '$null      � �� "SEC Helper.app �0���utxt��� p4 _�(  y����    �`���<���pB JSCL  alis    �  kremit                     ��=)H+   "SEC Helper.app                                                  #��        ����  	                	Resources     �Ãy      ��[     " " " D{  	�  Ykremit:Library:PreferencePanes:Salling Clicker.prefPane:Contents:Resources:SEC Helper.app     S E C   H e l p e r . a p p    k r e m i t  RLibrary/PreferencePanes/Salling Clicker.prefPane/Contents/Resources/SEC Helper.app  / ��   %  ��� � Z   �� � ��� � � E  � � � � � J   � � � �  � � � m   � � � �  alerting    �  ��� � m   � � � �  calling   ��   � o   � ����� 0 call_status   � k   �� � �  � � � Z   � � ��� � � =  � � � � � o   � ����� 0 call_status   � m   � � � �  alerting    � r   �  � � � m   � � � �  incoming    � o      ���� 0 	direction  ��   � r   � � � m   � �  outgoing    � o      ���� 0 	direction   �  � � � r  	 � � � m  	         � o      ���� 0 
thesummary 
theSummary �  r   I  ������ 0 formatnumber formatNumber �� o  ���� 0 event_caller_id  ��  ��   o      ���� 0 thelocation theLocation  r   	
	 I  ������ 0 	getperson 	getPerson �� o  ���� 0 event_caller_id  ��  ��  
 o      ���� 0 	theperson 	thePerson  Z  !x�� = !& o  !"���� 0 	theperson 	thePerson m  "%��
�� 
msng r  )0 b  ). o  )*���� 0 
thesummary 
theSummary m  *-  unknown    o      ���� 0 
thesummary 
theSummary��   w  3x k  7x  r  7@ b  7> !  o  78���� 0 
thesummary 
theSummary! n  8="#" 1  9=��
�� 
pnam# o  89���� 0 	theperson 	thePerson o      ���� 0 
thesummary 
theSummary $%$ r  AL&'& b  AJ()( m  AD**  addressbook://   ) n  DI+,+ 1  EI�
� 
ID  , o  DE�~�~ 0 	theperson 	thePerson' o      �}�} 0 theurl theURL% -.- l MM�|�{�|  �{  . /0/ r  MV121 I  MT�z3�y�z 0 getphone getPhone3 454 o  NO�x�x 0 event_caller_id  5 6�w6 o  OP�v�v 0 	theperson 	thePerson�w  �y  2 o      �u�u 0 thephone thePhone0 7�t7 Z  Wx89�s�r8 > W\:;: o  WX�q�q 0 thephone thePhone; m  X[�p
�p 
msng9 r  _t<=< b  _r>?> b  _n@A@ b  _hBCB b  _dDED o  _`�o�o 0 thelocation theLocationE 1  `c�n
�n 
spacC m  dgFF  (   A n  hmGHG 1  im�m
�m 
az18H o  hi�l�l 0 thephone thePhone? m  nqII  )   = o      �k�k 0 thelocation theLocation�s  �r  �t  �null      � ��  ^Address Book.app0���utxt��� p4 _�P  ����    �`���<��ܐB adrb  alis    R  kremit                     ��=)H+    ^Address Book.app                                                 ����p        ����  	                Applications    �Ãy      ���      ^  $kremit:Applications:Address Book.app  "  A d d r e s s   B o o k . a p p    k r e m i t  Applications/Address Book.app   / ��   JKJ l yy�j�i�j  �i  K LML r  y�NON K  y�PP �hQR�h 0 thecid theCIDQ o  |}�g�g 0 event_call_id  R �fST�f 0 thetype theTypeS o  ���e�e 0 	call_type  T �dUV�d 0 	thenumber 	theNumberU o  ���c�c 0 event_caller_id  V �bWX�b 0 thedirection theDirectionW o  ���a�a 0 	direction  X �`YZ�` 0 	starttime 	startTimeY I ���_�^�]
�_ .misccurdldt    ��� null�^  �]  Z �\[\�\ 0 answeredtime answeredTime[ m  ���[
�[ 
msng\ �Z]^�Z 0 endtime endTime] m  ���Y
�Y 
msng^ �X_`�X 0 	theperson 	thePerson_ o  ���W�W 0 
thesummary 
theSummary` �Va�U�V 0 thelocation theLocationa o  ���T�T 0 thelocation theLocation�U  O o      �S�S 0 thecall theCallM bcb s  ��ded o  ���R�R 0 thecall theCalle n      fgf  :  ��g o  ���Q�Q 0 currentcalls currentCallsc hih l ���P�O�P  �O  i j�Nj O  ��klk I ���M�Lm
�M .notifygrnull��� ��� null�L  m �Kno
�K 
titln b  ��pqp b  ��rsr o  ���J�J 0 	direction  s 1  ���I
�I 
spacq m  ��tt 
 call   o �Huv
�H 
descu b  ��wxw b  ��yzy o  ���G�G 0 thelocation theLocationz o  ���F
�F 
ret x o  ���E�E 0 
thesummary 
theSummaryv �D{�C
�D 
iapp{ m  ��|| ! Bluetooth File Exchange.app   �C  l m  ��}}Fnull     ߀�� !GrowlHelperApp.app��� 7��ݐ  T _�@   )       8(�� ��ݰ pGRRR   alis    �  kremit                     ��=)H+   !GrowlHelperApp.app                                              !	�b�Q        ����  	                	Resources     �Ãy      �bء     ! ! ! �� �P �O  |  _kremit:Users:chris:Library:PreferencePanes:Growl.prefPane:Contents:Resources:GrowlHelperApp.app   &  G r o w l H e l p e r A p p . a p p    k r e m i t  XUsers/chris/Library/PreferencePanes/Growl.prefPane/Contents/Resources/GrowlHelperApp.app  /    ��  �N  ��   � k  ��~~ � r  ����� I  ���B��A�B 0 getcallrecord getCallRecord� ��@� o  ���?�? 0 event_call_id  �@  �A  � o      �>�> 0 thecall theCall� ��� r  ����� I ���=�<�;
�= .misccurdldt    ��� null�<  �;  � o      �:�: 0 thetime theTime� ��9� Z  ������8� = ����� o  ���7�7 0 call_status  � m  ����  active   � k  �I�� ��� Z  ����6�5� = ���� n  � ��� o  � �4�4 0 answeredtime answeredTime� o  ���3�3 0 thecall theCall� m   �2
�2 
msng� r  ��� o  �1�1 0 thetime theTime� n      ��� o  	�0�0 0 answeredtime answeredTime� o  	�/�/ 0 thecall theCall�6  �5  � ��.� O  I��� I H�-�,�
�- .notifygrnull��� ��� null�,  � �+��
�+ 
titl� b  *��� b  &��� n  "��� o  "�*�* 0 thedirection theDirection� o  �)�) 0 thecall theCall� 1  "%�(
�( 
spac� m  &)��  answerd   � �'��
�' 
desc� b  -<��� b  -6��� n  -2��� o  .2�&�& 0 thelocation theLocation� o  -.�%�% 0 thecall theCall� o  25�$
�$ 
ret � n  6;��� o  7;�#�# 0 	theperson 	thePerson� o  67�"�" 0 thecall theCall� �!�� 
�! 
iapp� m  ?B�� ! Bluetooth File Exchange.app   �   � m  }�.  � ��� = LQ��� o  LM�� 0 call_status  � m  MP�� 
 idle   � ��� k  T��� ��� r  T[��� o  TU�� 0 thetime theTime� n      ��� o  VZ�� 0 endtime endTime� o  UV�� 0 thecall theCall� ��� r  \n��� I  \l���� 0 englishtime englishTime� ��� \  ]h��� l ]b��� n  ]b��� o  ^b�� 0 endtime endTime� o  ]^�� 0 thecall theCall�  � l bg��� n  bg��� o  cg�� 0 answeredtime answeredTime� o  bc�� 0 thecall theCall�  �  �  � o      �� 0 theduration theDuration� ��� O  o���� I u����
� .notifygrnull��� ��� null�  � ���
� 
titl� b  y���� b  y���� n  y~��� o  z~�� 0 thedirection theDirection� o  yz�� 0 thecall theCall� 1  ~��
� 
spac� m  ����  hungup   � �
��
�
 
desc� b  ����� b  ����� b  ����� b  ����� n  ����� o  ���	�	 0 thelocation theLocation� o  ���� 0 thecall theCall� o  ���
� 
ret � m  ����  Time:   � 1  ���
� 
spac� o  ���� 0 theduration theDuration� ���
� 
iapp� m  ���� ! Bluetooth File Exchange.app   �  � m  or}� ��� I  ����� � $0 deletecallrecord deleteCallRecord� ���� o  ������ 0 event_call_id  ��  �   �  �  �8  �9  ��    ��� l     ������  ��  � ��� l     ������  ��  � ��� l     �����  � ( "-tell application "GrowlHelperApp"   � ��� l     �����  � � |-notify with title call_type description event_caller_id & ":  " & call_status with sticky ---icon of application "Mail.app"   � ��� l     �����  �  	-end tell   � ��� l     ������  ��  �    l     ������  ��    i     I      ������ 0 getcallrecord getCallRecord �� o      ���� 0 cid  ��  ��   k     2 	
	 X     '�� Z    "���� =    n     o    ���� 0 thecid theCID o    ���� 0 acall aCall o    ���� 0 cid   L     o    ���� 0 acall aCall��  ��  �� 0 acall aCall o    ���� 0 currentcalls currentCalls
  l  ( (������  ��   �� R   ( 2����
�� .ascrerr ****      � **** b   * 1 b   * / b   * - m   * +   Missing call record for id    1   + ,��
�� 
spac o   - .���� 0 cid   m   / 0  .   ��  ��    !  l     ������  ��  ! "#" i    $%$ I      ��&���� $0 deletecallrecord deleteCallRecord& '��' o      ���� 0 cid  ��  ��  % k     8(( )*) r     +,+ J     ����  , o      ���� 0 newcalls newCalls* -.- X    0/��0/ Z    +12����1 >   343 n    565 o    ���� 0 thecid theCID6 o    ���� 0 acall aCall4 o    ���� 0 cid  2 s   ! '787 n   ! $9:9 1   " $��
�� 
pcnt: o   ! "���� 0 acall aCall8 n      ;<;  ;   % &< o   $ %���� 0 newcalls newCalls��  ��  �� 0 acall aCall0 o    ���� 0 currentcalls currentCalls. =>= l  1 1������  ��  > ?��? r   1 8@A@ o   1 2���� 0 newcalls newCallsA o      ���� 0 currentcalls currentCalls��  # BCB l     ������  ��  C DED i    FGF I      ��H���� 0 logcall logCallH I��I o      ���� 0 thecall theCall��  ��  G k    mJJ KLK r     MNM m     OO      N o      ���� 0 
thesummary 
theSummaryL PQP r    	RSR n    TUT o    ���� 0 thelog theLogU o    ���� 0 thecall theCallS o      ���� 0 thelog theLogQ VWV l  
 
������  ��  W XYX Z   
 NZ[��\Z =  
 ]^] n   
 _`_ o    ���� 0 answeredtime answeredTime` o   
 ���� 0 thecall theCall^ m    ��
�� 
msng[ k    3aa bcb Z    de����d H    ff o    ���� (0 logunansweredcalls logUnansweredCallse L    ����  ��  ��  c ghg l   ������  ��  h i��i Z    3jk��lj =   #mnm n    !opo o    !���� 0 thedirection theDirectionp o    ���� 0 thecall theCalln m   ! "qq  incoming   k r   & +rsr b   & )tut m   & 'vv  missed   u 1   ' (��
�� 
spacs o      ���� 0 
thesummary 
theSummary��  l r   . 3wxw b   . 1yzy m   . /{{  
unanswered   z 1   / 0��
�� 
spacx o      ���� 0 
thesummary 
theSummary��  ��  \ r   6 N|}| b   6 L~~ b   6 J��� b   6 =��� b   6 ;��� b   6 9��� o   6 7���� 0 thelog theLog� o   7 8��
�� 
ret � m   9 :��  call duration   � 1   ; <��
�� 
spac� l 	 = I���� I   = I������� 0 englishtime englishTime� ���� \   > E��� l  > A���� n   > A��� o   ? A���� 0 endtime endTime� o   > ?���� 0 thecall theCall��  � l  A D���� n   A D��� o   B D���� 0 answeredtime answeredTime� o   A B���� 0 thecall theCall��  ��  ��  ��   o   J K��
�� 
ret } o      ���� 0 thelog theLogY ��� l  O O������  ��  � ��� Z   O ������ =  O T��� n   O R��� o   P R���� 0 thetype theType� o   O P���� 0 thecall theCall� m   R S�� 	 fax   � r   W ^��� b   W \��� b   W Z��� o   W X���� 0 
thesummary 
theSummary� m   X Y�� 	 fax   � 1   Z [��
�� 
spac� o      ���� 0 
thesummary 
theSummary� ��� =  a h��� n   a d��� o   b d���� 0 thetype theType� o   a b���� 0 thecall theCall� m   d g�� 
 data   � ���� r   k t��� b   k r��� b   k p��� o   k l���� 0 
thesummary 
theSummary� m   l o��  	data call   � 1   p q��
�� 
spac� o      ���� 0 
thesummary 
theSummary��  � r   w ���� b   w ~��� b   w |��� o   w x���� 0 
thesummary 
theSummary� m   x {�� 
 call   � 1   | }��
�� 
spac� o      ���� 0 
thesummary 
theSummary� ��� l  � �������  ��  � ��� Z   � ������� =  � ���� n   � ���� o   � ����� 0 thedirection theDirection� o   � ����� 0 thecall theCall� m   � ���  incoming   � r   � ���� b   � ���� b   � ���� o   � ����� 0 
thesummary 
theSummary� m   � ��� 
 from   � 1   � ���
�� 
spac� o      ���� 0 
thesummary 
theSummary��  � r   � ���� b   � ���� b   � ���� o   � ����� 0 
thesummary 
theSummary� m   � ���  to   � 1   � ���
�� 
spac� o      ���� 0 
thesummary 
theSummary� ��� l  � ������  �  � ��� r   � ���� I   � ��~��}�~ 0 formatnumber formatNumber� ��|� n   � ���� o   � ��{�{ 0 	thenumber 	theNumber� o   � ��z�z 0 thecall theCall�|  �}  � o      �y�y 0 thelocation theLocation� ��� r   � ���� I   � ��x��w�x 0 	getperson 	getPerson� ��v� n   � ���� o   � ��u�u 0 	thenumber 	theNumber� o   � ��t�t 0 thecall theCall�v  �w  � o      �s�s 0 	theperson 	thePerson� ��� r   � ���� m   � ��r
�r 
msng� o      �q�q 0 theurl theURL� ��� l  � ��p�o�p  �o  � ��� Z   � ����n�m� I   � ��l��k�l 0 shouldnotlog shouldNotLog� ��j� o   � ��i�i 0 	theperson 	thePerson�j  �k  � L   � ��h�h  �n  �m  � ��� l  � ��g�f�g  �f  � ��� Z   �$���e�� =  � ���� o   � ��d�d 0 	theperson 	thePerson� m   � ��c
�c 
msng� r   � �� � b   � � o   � ��b�b 0 
thesummary 
theSummary m   � �  unknown     o      �a�a 0 
thesummary 
theSummary�e  � w   �$ k   �$  r   � �	 b   � �

 o   � ��`�` 0 
thesummary 
theSummary n   � � 1   � ��_
�_ 
pnam o   � ��^�^ 0 	theperson 	thePerson	 o      �]�] 0 
thesummary 
theSummary  r   � � b   � � m   � �  addressbook://    n   � � 1   � ��\
�\ 
ID   o   � ��[�[ 0 	theperson 	thePerson o      �Z�Z 0 theurl theURL  l  � ��Y�X�Y  �X    r   � I   ��W�V�W 0 getphone getPhone  n   � � !  o   � ��U�U 0 	thenumber 	theNumber! o   � ��T�T 0 thecall theCall "�S" o   � �R�R 0 	theperson 	thePerson�S  �V   o      �Q�Q 0 thephone thePhone #�P# Z  $$%�O�N$ > 
&'& o  �M�M 0 thephone thePhone' m  	�L
�L 
msng% r   ()( b  *+* b  ,-, b  ./. b  010 o  �K�K 0 thelocation theLocation1 1  �J
�J 
spac/ m  22  (   - n  343 1  �I
�I 
az184 o  �H�H 0 thephone thePhone+ m  55  )   ) o      �G�G 0 thelocation theLocation�O  �N  �P  � 676 l %%�F�E�F  �E  7 8�D8 O %m9:9 I +l�C�B;
�C .corecrel****      � null�B  ; �A<=
�A 
kocl< m  /2�@
�@ 
wrev= �?>?
�? 
insh> n  5<@A@  ;  ;<A n 5;BCB I  6;�>D�=�> 0 getcalendar getCalendarD E�<E o  67�;�; $0 logcalendartitle logCalendarTitle�<  �=  C  f  56? �:F�9
�: 
prdtF K  ?fGG �8HI
�8 
wr11H n BHJKJ I  CH�7L�6�7 0 
capitalize  L M�5M o  CD�4�4 0 
thesummary 
theSummary�5  �6  K  f  BCI �3NO
�3 
wr14N o  KL�2�2 0 thelocation theLocationO �1PQ
�1 
wr1sP n  OTRSR o  PT�0�0 0 	starttime 	startTimeS o  OP�/�/ 0 thecall theCallQ �.TU
�. 
wr5sT n  WZVWV o  XZ�-�- 0 endtime endTimeW o  WX�,�, 0 thecall theCallU �+XY
�+ 
wr16X o  ]^�*�* 0 theurl theURLY �)Z�(
�) 
wr12Z o  ab�'�' 0 thelog theLog�(  �9  : m  %([[�null     ߀��  ^iCal.app���0� �0���� 7���`  k _�(   )       8(�� ��߀ pwrbt  alis    2  kremit                     ��=)H+    ^iCal.app                                                         ������        ����  	                Applications    �Ãy      ��      ^  kremit:Applications:iCal.app    i C a l . a p p    k r e m i t  Applications/iCal.app   / ��  �D  E \]\ l     �&�%�&  �%  ] ^_^ i    `a` I      �$b�#�$ 0 getcalendar getCalendarb c�"c o      �!�! 0 thetitle theTitle�"  �#  a O     1ded k    0ff ghg e    ii 6   jkj 2   � 
�  
wresk =   lml 1   	 �
� 
wr02m o    �� 0 thetitle theTitleh n�n Z    0op�qo ?    rsr n    tut 1    �
� 
lengu 1    �
� 
rslts m    ��  p L     vv n    wxw 4   �y
� 
cobjy m    �� x 1    �
� 
rslt�  q L   # 0zz I  # /��{
� .corecrel****      � null�  { �|}
� 
kocl| m   % &�
� 
wres} �~�
� 
prdt~ K   ' + ���
� 
wr02� o   ( )�� 0 thetitle theTitle�  �  �  e m     [_ ��� l     ���  �  � ��� i     #��� I      �
��	�
 0 	getperson 	getPerson� ��� o      �� 0 	thenumber 	theNumber�  �	  � k     (�� ��� Q     %���� k    �� ��� O   ��� r    ��� I   ���
� .seClLUabnull��� ��� obj � o    �� 0 	thenumber 	theNumber�  � o      �� 0 theuid theUID� m     '� ��� O   ��� L    �� 5    � ���
�  
azf4� o    ���� 0 theuid theUID
�� kfrmID  � m    �  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ��� l  & &������  ��  � ���� L   & (�� m   & '��
�� 
msng��  � ��� l     ������  ��  � ��� i   $ '��� I      ������� 0 getphone getPhone� ��� o      ���� 0 	thenumber 	theNumber� ���� o      ���� 0 	theperson 	thePerson��  ��  � k     ]�� ��� r     ��� I     ������� 0 digitsof digitsOf� ���� o    ���� 0 	thenumber 	theNumber��  ��  � o      ���� 0 	thenumber 	theNumber� ��� l  	 	������  ��  � ��� Z   	 -������� F   	 ��� =  	 ��� n   	 ��� 1   
 ��
�� 
leng� o   	 
���� 0 	thenumber 	theNumber� m    ���� � =   ��� n    ��� l 	  ���� 4    ���
�� 
cha � m    ���� ��  � o    ���� 0 	thenumber 	theNumber� m    ��  1   � r    )��� n    '��� 7   '����
�� 
ctxt� m   ! #���� � m   $ &���� � o    ���� 0 	thenumber 	theNumber� o      ���� 0 	thenumber 	theNumber��  ��  � ��� l  . .������  ��  � ��� w   . Z�� X   0 Z����� Z   B U������� E   B L��� n  B J��� I   C J������� 0 digitsof digitsOf� ���� n   C F��� 1   D F��
�� 
az17� o   C D���� 0 aphone aPhone��  ��  �  f   B C� o   J K���� 0 	thenumber 	theNumber� L   O Q�� o   O P���� 0 aphone aPhone��  ��  �� 0 aphone aPhone� n   3 6��� 2  4 6��
�� 
az20� o   3 4���� 0 	theperson 	thePerson� ��� l  [ [������  ��  � ���� L   [ ]�� m   [ \��
�� 
msng��  � ��� l     ������  ��  � ��� i   ( +��� I      ������� 0 ismember isMember� ��� o      ���� 0 	theentity 	theEntity� ���� o      ���� 0 thegroup theGroup��  ��  � k     6�� ��� w     3�� X    3����� Z    .������� G    %��� =    ��� n    ��� 1    ��
�� 
pcnt� o    ���� 0 agroup aGroup� o    ���� 0 thegroup theGroup� l 	  #���� I    #������� 0 ismember isMember� ��� o    ���� 0 agroup aGroup� ���� o    ���� 0 thegroup theGroup��  ��  ��  � L   ( *�� m   ( )��
�� boovtrue��  ��  �� 0 agroup aGroup� n    � � 2   ��
�� 
azf5  o    ���� 0 	theentity 	theEntity�  l  4 4������  ��   �� L   4 6 m   4 5��
�� boovfals��  �  l     ������  ��    i   , /	
	 I      ������ 0 shouldnotlog shouldNotLog �� o      ���� 0 	theperson 	thePerson��  ��  
 k     i  Z     ���� =     o     ���� 0 	theperson 	thePerson m    ��
�� 
msng L    
 >   	 o    ���� 0 loggroup logGroup m    ��
�� 
msng��  ��    l   ������  ��    O    f k    e  Q    ; !��  Z    2"#����" F    )$%$ >   &'& o    ���� 0 
nologgroup 
noLogGroup' m    ��
�� 
msng% l 	  '(��( n   ')*) I    '��+���� 0 ismember isMember+ ,-, o    ���� 0 	theperson 	thePerson- .��. 5    #��/��
�� 
azf5/ o     !���� 0 
nologgroup 
noLogGroup
�� kfrmname��  ��  *  f    ��  # L   , .00 m   , -��
�� boovtrue��  ��  ! R      ������
�� .ascrerr ****      � ****��  ��  ��   1��1 Q   < e23��2 Z   ? \45����4 F   ? S676 >  ? B898 o   ? @���� 0 loggroup logGroup9 m   @ A��
�� 
msng7 l 	 E Q:��: H   E Q;; n  E P<=< I   F P��>���� 0 ismember isMember> ?@? o   F G���� 0 	theperson 	thePerson@ A��A 5   G L��B��
�� 
azf5B o   I J���� 0 loggroup logGroup
�� kfrmname��  ��  =  f   E F��  5 L   V XCC m   V W��
�� boovtrue��  ��  3 R      ����~
�� .ascrerr ****      � ****�  �~  ��  ��   m     DED l  g g�}�|�}  �|  E F�{F L   g iGG m   g h�z
�z boovfals�{   HIH l     �y�x�y  �x  I JKJ i   0 3LML I      �wN�v�w 0 digitsof digitsOfN O�uO o      �t�t 0 	thestring 	theString�u  �v  M k     1PP QRQ r     STS m     UU  
0123456789   T o      �s�s 0 validdigits validDigitsR VWV r    XYX m    ZZ      Y o      �r�r 0 	newstring 	newStringW [\[ X    .]�q^] Z    )_`�p�o_ E   aba o    �n�n 0 validdigits validDigitsb o    �m�m 0 adigit aDigit` r     %cdc b     #efe o     !�l�l 0 	newstring 	newStringf o   ! "�k�k 0 adigit aDigitd o      �j�j 0 	newstring 	newString�p  �o  �q 0 adigit aDigit^ n    ghg 2   �i
�i 
cha h o    �h�h 0 	thestring 	theString\ iji l  / /�g�f�g  �f  j k�ek L   / 1ll o   / 0�d�d 0 	newstring 	newString�e  K mnm l     �c�b�c  �b  n opo i   4 7qrq I      �as�`�a 0 formatnumber formatNumbers t�_t o      �^�^ 0 	thenumber 	theNumber�_  �`  r k     �uu vwv r     xyx I     �]z�\�] 0 digitsof digitsOfz {�[{ o    �Z�Z 0 	thenumber 	theNumber�[  �\  y o      �Y�Y 0 	thenumber 	theNumberw |}| l  	 	�X�W�X  �W  } ~~ Z   	 �����V� =  	 ��� n   	 ��� 1   
 �U
�U 
leng� o   	 
�T�T 0 	thenumber 	theNumber� m    �S�S  � L    �� m    �R
�R 
msng� ��� F    &��� =   ��� n    ��� 1    �Q
�Q 
leng� o    �P�P 0 	thenumber 	theNumber� m    �O�O � =   $��� n    "��� l 	  "��N� 4    "�M�
�M 
cha � m     !�L�L �N  � o    �K�K 0 	thenumber 	theNumber� m   " #��  1   � ��� L   ) >�� b   ) =��� b   ) ,��� m   ) *��  +1   � 1   * +�J
�J 
spac� l 	 , <��I� I   , <�H��G�H 0 formatnumber formatNumber� ��F� n   - 8��� 7  . 8�E��
�E 
ctxt� m   2 4�D�D � m   5 7�C�C � o   - .�B�B 0 	thenumber 	theNumber�F  �G  �I  � ��� =  A F��� n   A D��� 1   B D�A
�A 
leng� o   A B�@�@ 0 	thenumber 	theNumber� m   D E�?�? 
� ��� L   I h�� b   I g��� b   I V��� l 	 I T��>� l  I T��=� n   I T��� 7  J T�<��
�< 
ctxt� m   N P�;�; � m   Q S�:�: � o   I J�9�9 0 	thenumber 	theNumber�=  �>  � 1   T U�8
�8 
spac� l 	 V f��7� I   V f�6��5�6 0 formatnumber formatNumber� ��4� n   W b��� 7  X b�3��
�3 
ctxt� m   \ ^�2�2 � m   _ a�1�1 
� o   W X�0�0 0 	thenumber 	theNumber�4  �5  �7  � ��� =  k p��� n   k n��� 1   l n�/
�/ 
leng� o   k l�.�. 0 	thenumber 	theNumber� m   n o�-�- � ��,� L   s ��� b   s ���� b   s ���� l 	 s ~��+� l  s ~��*� n   s ~��� 7  t ~�)��
�) 
ctxt� m   x z�(�( � m   { }�'�' � o   s t�&�& 0 	thenumber 	theNumber�*  �+  � m   ~ ��  -   � l 	 � ���%� l  � ���$� n   � ���� 7  � ��#��
�# 
ctxt� m   � ��"�" � m   � ��!�! � o   � �� �  0 	thenumber 	theNumber�$  �%  �,  �V   ��� l  � ����  �  � ��� L   � ��� o   � ��� 0 	thenumber 	theNumber�  p ��� l     ���  �  � ��� i   8 ;��� I      ���� 0 englishcount englishCount� ��� o      �� 0 howmany howMany� ��� o      �� 0 
unitstring 
unitString�  �  � k     �� ��� r     	��� c     ��� b     ��� b     ��� o     �� 0 howmany howMany� 1    �
� 
spac� o    �� 0 
unitstring 
unitString� m    �
� 
TEXT� o      �� 0 	thestring 	theString� ��� Z   
 ����� >   
 ��� o   
 �� 0 howmany howMany� m    �� � r    ��� b    ��� o    �� 0 	thestring 	theString� m    ��  s   � o      �
�
 0 	thestring 	theString�  �  � ��� l   �	��	  �  � ��� L       o    �� 0 	thestring 	theString�  �  l     ���  �    i   < ? I      ��� 0 englishtime englishTime � o      � �  0 
numseconds 
numSeconds�  �   k     �		 

 r      J     ����   o      ���� 0 theelements theElements  Z    !���� @     o    ���� 0 
numseconds 
numSeconds 1    ��
�� 
hour k      s     I    ������ 0 englishcount englishCount  _     o    ���� 0 
numseconds 
numSeconds 1    ��
�� 
hour �� m     
 hour   ��  ��   n       !   ;    ! o    ���� 0 theelements theElements "��" r    #$# `    %&% o    ���� 0 
numseconds 
numSeconds& 1    ��
�� 
hour$ o      ���� 0 
numseconds 
numSeconds��  ��  ��   '(' l  " "������  ��  ( )*) Z   " >+,����+ @   " %-.- o   " #���� 0 
numseconds 
numSeconds. 1   # $��
�� 
min , k   ( :// 010 s   ( 4232 I   ( 1��4���� 0 englishcount englishCount4 565 _   ) ,787 o   ) *���� 0 
numseconds 
numSeconds8 1   * +��
�� 
min 6 9��9 m   , -::  minute   ��  ��  3 n      ;<;  ;   2 3< o   1 2���� 0 theelements theElements1 =��= r   5 :>?> `   5 8@A@ o   5 6���� 0 
numseconds 
numSecondsA 1   6 7��
�� 
min ? o      ���� 0 
numseconds 
numSeconds��  ��  ��  * BCB l  ? ?������  ��  C DED Z   ? ]FG����F G   ? LHIH ?   ? BJKJ o   ? @���� 0 
numseconds 
numSecondsK m   @ A����  I =  E JLML n   E HNON l 	 F HP��P 1   F H��
�� 
leng��  O o   E F���� 0 theelements theElementsM m   H I����  G s   O YQRQ I   O V��S���� 0 englishcount englishCountS TUT o   P Q���� 0 
numseconds 
numSecondsU V��V m   Q RWW  second   ��  ��  R n      XYX  ;   W XY o   V W���� 0 theelements theElements��  ��  E Z[Z l  ^ ^������  ��  [ \��\ Z   ^ �]^_`] =   ^ caba n   ^ acdc 1   _ a��
�� 
lengd o   ^ _���� 0 theelements theElementsb m   a b���� ^ L   f }ee b   f |fgf b   f whih b   f ujkj b   f slml b   f nnon b   f lpqp n   f jrsr l 	 g jt��t 4   g j��u
�� 
cobju m   h i���� ��  s o   f g���� 0 theelements theElementsq m   j kvv  ,   o 1   l m��
�� 
spacm n   n rwxw l 	 o ry��y 4   o r��z
�� 
cobjz m   p q���� ��  x o   n o���� 0 theelements theElementsk m   s t{{  , and   i 1   u v��
�� 
spacg n   w {|}| l 	 x {~��~ 4   x {��
�� 
cobj m   y z���� ��  } o   w x���� 0 theelements theElements_ ��� =   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� 0 theelements theElements� m   � ����� � ���� L   � ��� b   � ���� b   � ���� b   � ���� b   � ���� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements� 1   � ���
�� 
spac� m   � ��� 	 and   � 1   � ���
�� 
spac� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements��  ` L   � ��� n   � ���� l 	 � ����� 4   � ����
�� 
cobj� m   � ����� ��  � o   � ����� 0 theelements theElements��   ��� l     ������  ��  � ��� i   @ C��� I      ������� 0 
capitalize  � ���� o      ���� 0 	thestring 	theString��  ��  � k     O�� ��� Z     L������� ?     ��� n     ��� 1    ��
�� 
leng� o     ���� 0 	thestring 	theString� m    ����  � k    H�� ��� r    ��� I   �����
�� .sysoctonshor       TEXT� l   ���� n    ��� 4   	 ���
�� 
cha � m   
 ���� � o    	���� 0 	thestring 	theString��  ��  � o      ���� 	0 ascii  � ��� l   ������  ��  � ���� Z    H������� F    &��� @    ��� l 	  ���� o    ���� 	0 ascii  ��  � l   ���� I   �����
�� .sysoctonshor       TEXT� m    ��  a   ��  ��  � B    $��� l 	  ���� o    ���� 	0 ascii  ��  � l   #���� I   #�����
�� .sysoctonshor       TEXT� m    ��  z   ��  ��  � r   ) D��� b   ) B��� l 	 ) :���� l  ) :���� I  ) :�����
�� .sysontocTEXT       shor� l  ) 6���� [   ) 6��� \   ) 0��� o   ) *���� 	0 ascii  � l  * /���� I  * /�����
�� .sysoctonshor       TEXT� m   * +��  a   ��  ��  � l  0 5���� I  0 5���~
� .sysoctonshor       TEXT� m   0 1��  A   �~  ��  ��  ��  ��  ��  � l  : A��}� c   : A��� n   : ?��� 1   = ?�|
�| 
rest� n   : =��� 2  ; =�{
�{ 
cha � o   : ;�z�z 0 	thestring 	theString� m   ? @�y
�y 
TEXT�}  � o      �x�x 0 	thestring 	theString��  ��  ��  ��  ��  � ��� l  M M�w�v�w  �v  � ��u� L   M O�� o   M N�t�t 0 	thestring 	theString�u  � ��s� l     �r�q�r  �q  �s       �p�������������������p  � �o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�o 0 currentcalls currentCalls�n 0 	connected  �m 0 entered_proximity  �l "0 phone_call_status_notification  �k 0 getcallrecord getCallRecord�j $0 deletecallrecord deleteCallRecord�i 0 logcall logCall�h 0 getcalendar getCalendar�g 0 	getperson 	getPerson�f 0 getphone getPhone�e 0 ismember isMember�d 0 shouldnotlog shouldNotLog�c 0 digitsof digitsOf�b 0 formatnumber formatNumber�a 0 englishcount englishCount�` 0 englishtime englishTime�_ 0 
capitalize  � �^�]�^  �]  � �\ �[�Z���Y�\ 0 	connected  �[  �Z  �  �  �Y 	jvEc   � �X �W�V���U�X 0 entered_proximity  �W  �V  �  �  �U 	jvEc   � �T  �S�R �Q�T "0 phone_call_status_notification  �S �P�P   �O�O 0 
event_info  �R    �N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�N 0 
event_info  �M 0 call_status  �L 0 event_call_status  �K 0 	call_type  �J 0 event_call_type  �I 0 event_call_id  �H 0 event_caller_id  �G 0 	direction  �F 0 
thesummary 
theSummary�E 0 thelocation theLocation�D 0 	theperson 	thePerson�C 0 theurl theURL�B 0 thephone thePhone�A 0 thecall theCall�@ 0 thetime theTime�? 0 theduration theDuration S ' 3�>�= C�< L�; U�: ^�9 g�8 p�7 y�6 � ��5�4 ��3 ��2 ��1 ��0 ��/�.�- � � � � � �,�+�*�)*�(�'�&F�%I�$�#�"�!� ������}�t���|�������������> 0 the_call_status  
�= CSxxCSal
�< CSxxCScl
�; CSxxCSct
�: CSxxCShd
�9 CSxxCSwt
�8 CSxxCSac
�7 CSxxCSid
�6 CSxxCSbs�5 0 the_call_type  
�4 CTxxCTvc
�3 CTxxCTda
�2 CTxxCTfx
�1 CTxxCTv2�0 0 the_cid  �/ 0 the_phone_number  �.  �-  �, 0 formatnumber formatNumber�+ 0 	getperson 	getPerson
�* 
msng
�) 
pnam
�( 
ID  �' 0 getphone getPhone
�& 
spac
�% 
az18�$ 0 thecid theCID�# 0 thetype theType�" 0 	thenumber 	theNumber�! 0 thedirection theDirection�  0 	starttime 	startTime
� .misccurdldt    ��� null� 0 answeredtime answeredTime� 0 endtime endTime� 0 	theperson 	thePerson� 0 thelocation theLocation� 
� 
titl
� 
desc
� 
ret 
� 
iapp� 
� .notifygrnull��� ��� null� 0 getcallrecord getCallRecord� 0 englishtime englishTime� $0 deletecallrecord deleteCallRecord�Q��Z�E�O��,E�O��  �E�Y ]��  �E�Y Q��  �E�Y E��  �E�Y 9��  �E�Y -��  �E�Y !��  
a E�Y �a   
a E�Y hOa E�O�a ,E�O�a   
a E�Y 3�a   
a E�Y #�a   
a E�Y �a   
a E�Y hO�a ,E�Oa E�O �a ,E�W X   !hOa "a #lv� �a $  
a %E�Y a &E�Oa 'E�O*�k+ (E�O*�k+ )E�O�a *  �a +%E�Y Ga ,Z��a -,%E�Oa .�a /,%E�O*��l+ 0E�O�a * �_ 1%a 2%�a 3,%a 4%E�Y hOa 5�a 6�a 7�a 8�a 9*j :a ;a *a <a *a =�a >�a ?E�O�b   5GOa @ %*a A�_ 1%a B%a C�_ D%�%a Ea Fa G HUY �*�k+ IE�O*j :E�O�a J  S�a ;,a *  ��a ;,FY hOa @ 1*a A�a 8,_ 1%a K%a C�a >,_ D%�a =,%a Ea La G HUY j�a M  a��a <,FO*�a <,�a ;,k+ NE�Oa @ 5*a A�a 8,_ 1%a O%a C�a >,_ D%a P%_ 1%�%a Ea Qa G HUO*�k+ RY h� ����� 0 getcallrecord getCallRecord� ��   �� 0 cid  �   �
�	�
 0 cid  �	 0 acall aCall �����
� 
kocl
� 
cobj
� .corecnte****       ****� 0 thecid theCID
� 
spac� 3 &b   [��l kh ��,�  �Y h[OY��O)j��%�%�%� �%��� � $0 deletecallrecord deleteCallRecord� ����   ���� 0 cid  �   �������� 0 cid  �� 0 newcalls newCalls�� 0 acall aCall ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 thecid theCID
�� 
pcnt�  9jvE�O *b   [��l kh ��,� ��,�6GY h[OY��O�Ec   � ��G����	
���� 0 logcall logCall�� ����   ���� 0 thecall theCall��  	 	�������������������� 0 thecall theCall�� 0 
thesummary 
theSummary�� 0 thelog theLog�� (0 logunansweredcalls logUnansweredCalls�� 0 thelocation theLocation�� 0 	theperson 	thePerson�� 0 theurl theURL�� 0 thephone thePhone�� $0 logcalendartitle logCalendarTitle
 4O��������qv��{�������������������������������2��5[���������������������������������� 0 thelog theLog�� 0 answeredtime answeredTime
�� 
msng�� 0 thedirection theDirection
�� 
spac
�� 
ret �� 0 endtime endTime�� 0 englishtime englishTime�� 0 thetype theType�� 0 	thenumber 	theNumber�� 0 formatnumber formatNumber�� 0 	getperson 	getPerson�� 0 shouldnotlog shouldNotLog
�� 
pnam
�� 
ID  �� 0 getphone getPhone
�� 
az18
�� 
kocl
�� 
wrev
�� 
insh�� 0 getcalendar getCalendar
�� 
prdt
�� 
wr11�� 0 
capitalize  
�� 
wr14
�� 
wr1s�� 0 	starttime 	startTime
�� 
wr5s
�� 
wr16
�� 
wr12�� �� 
�� .corecrel****      � null��n�E�O��,E�O��,�  &� hY hO��,�  
��%E�Y ��%E�Y ��%�%�%*��,��,k+ %�%E�O��,�  ��%�%E�Y !��,a   �a %�%E�Y �a %�%E�O��,a   �a %�%E�Y �a %�%E�O*�a ,k+ E�O*�a ,k+ E�O�E�O*�k+  hY hO��  �a %E�Y Ga Z��a ,%E�Oa �a ,%E�O*�a ,�l+ E�O�� ��%a  %�a !,%a "%E�Y hOa # C*a $a %a &)�k+ '6a (a ))�k+ *a +�a ,�a -,a .��,a /�a 0�a 1a 2 3U� ��a�������� 0 getcalendar getCalendar�� ����   ���� 0 thetitle theTitle��   ���� 0 thetitle theTitle [������������������
�� 
wres  
�� 
wr02
�� 
rslt
�� 
leng
�� 
cobj
�� 
kocl
�� 
prdt�� 
�� .corecrel****      � null�� 2� .*�-�[�,\Z�81EO��,j ��k/EY *����l� 
U� ����������� 0 	getperson 	getPerson�� ����   ���� 0 	thenumber 	theNumber��   ������ 0 	thenumber 	theNumber�� 0 theuid theUID  '������������
�� .seClLUabnull��� ��� obj 
�� 
azf4
�� kfrmID  ��  ��  
�� 
msng�� ) � 	�j E�UO� 	*��0EUW X  hO�� ����������� 0 getphone getPhone�� ����   ������ 0 	thenumber 	theNumber�� 0 	theperson 	thePerson��   �������� 0 	thenumber 	theNumber�� 0 	theperson 	thePerson�� 0 aphone aPhone ��������������������������� 0 digitsof digitsOf
�� 
leng�� 
�� 
cha 
�� 
bool
�� 
ctxt
�� 
az20
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
az17
�� 
msng�� ^*�k+  E�O��,� 	 
��k/� �& �[�\[Zl\Z�2E�Y hO�Z )��-[��l kh )��,k+  � �Y h[OY��O�� ����������� 0 ismember isMember�� ����   ������ 0 	theentity 	theEntity�� 0 thegroup theGroup��   �������� 0 	theentity 	theEntity�� 0 thegroup theGroup�� 0 agroup aGroup ��������������
�� 
azf5
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� 0 ismember isMember
�� 
bool�� 7�Z 0��-[��l kh ��,� 
 *��l+ �& eY h[OY��Of� ��
��~�}�� 0 shouldnotlog shouldNotLog� �|�|   �{�{ 0 	theperson 	thePerson�~   �z�y�x�z 0 	theperson 	thePerson�y 0 loggroup logGroup�x 0 
nologgroup 
noLogGroup �w�v�u�t�s�r�q
�w 
msng
�v 
azf5
�u kfrmname�t 0 ismember isMember
�s 
bool�r  �q  �} j��  	��Y hO� T !��	 )�*��0l+ �& eY hW X  hO "��	 )�*��0l+ �& eY hW X  hUOf� �pM�o�n�m�p 0 digitsof digitsOf�o �l�l   �k�k 0 	thestring 	theString�n   �j�i�h�g�j 0 	thestring 	theString�i 0 validdigits validDigits�h 0 	newstring 	newString�g 0 adigit aDigit UZ�f�e�d�c
�f 
cha 
�e 
kocl
�d 
cobj
�c .corecnte****       ****�m 2�E�O�E�O %��-[��l kh �� 
��%E�Y h[OY��O�� �br�a�` �_�b 0 formatnumber formatNumber�a �^!�^ !  �]�] 0 	thenumber 	theNumber�`   �\�\ 0 	thenumber 	theNumber  �[�Z�Y�X�W��V��U�T�S�R�Q�P��[ 0 digitsof digitsOf
�Z 
leng
�Y 
msng�X 
�W 
cha 
�V 
bool
�U 
spac
�T 
ctxt�S 0 formatnumber formatNumber�R 
�Q �P �_ �*�k+  E�O��,j  �Y }��,� 	 
��k/� �& ��%*�[�\[Zl\Z�2k+ 
%Y R��,�  $�[�\[Zk\Zm2�%*�[�\[Z�\Z�2k+ 
%Y (��,�  �[�\[Zk\Zm2�%�[�\[Z�\Z�2%Y hO�� �O��N�M"#�L�O 0 englishcount englishCount�N �K$�K $  �J�I�J 0 howmany howMany�I 0 
unitstring 
unitString�M  " �H�G�F�H 0 howmany howMany�G 0 
unitstring 
unitString�F 0 	thestring 	theString# �E�D�
�E 
spac
�D 
TEXT�L ��%�%�&E�O�k 
��%E�Y hO�� �C�B�A%&�@�C 0 englishtime englishTime�B �?'�? '  �>�> 0 
numseconds 
numSeconds�A  % �=�<�= 0 
numseconds 
numSeconds�< 0 theelements theElements& �;�:�9:�8�7W�6v�5{�
�; 
hour�: 0 englishcount englishCount
�9 
min 
�8 
leng
�7 
bool
�6 
cobj
�5 
spac�@ �jvE�O�� *��"�l+ �6GO��#E�Y hO�� *��"�l+ �6GO��#E�Y hO�j
 	��,j �& *��l+ �6GY hO��,m  ��k/�%�%��l/%�%�%��m/%Y #��,l  ��k/�%�%�%��l/%Y ��k/E� �4��3�2()�1�4 0 
capitalize  �3 �0*�0 *  �/�/ 0 	thestring 	theString�2  ( �.�-�. 0 	thestring 	theString�- 	0 ascii  ) �,�+�*���)���(�'�&
�, 
leng
�+ 
cha 
�* .sysoctonshor       TEXT
�) 
bool
�( .sysontocTEXT       shor
�' 
rest
�& 
TEXT�1 P��,j E��k/j E�O��j 	 ��j �&  ��j �j j ��-�,�&%E�Y hY hO�ascr  ��ޭ