GDPC                                                                            /   @   res://.import/Cable_1.png-8978f633bca9f54919f30eb9493976ac.stex �Z            �a-0��|�:r��DUD   res://.import/Cable_elbow.png-0fcc1e396e6d70d5128af68d22b57c6b.stex �_      8      ��1�Q�5O�/��E�d@   res://.import/Client.png-e7f638d07f5a7c93ce59111384a3a4b3.stex  �d      �       DW��^�A�mI��X�D   res://.import/Empty_tile.png-f3e1998c189a852b03e0bc62af924077.stex  i      �       B��H�[f��*\x�W@   res://.import/Erasor.png-d8e2634babcbf8b57d4b5d3fca3b39f7.stex  �l      8      dM������1K���@   res://.import/Switch_1.png-a8b8a940f59a7f0bbb46f9abea6092a4.stex�q            ����o]Q���[����<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�|      U      -��`�0��x�5�[D   res://.import/server_icon.png-58e3c9a18faf23dd8aa4a72e8e92a7e3.stex �w      �      �2�z��ǣ9�8u@�    res://Assets/Scenes/Board.tscn  �      �       {�2v@$pl��(   res://Assets/Scenes/Cable_1_button.tscn P      �      3�;������^��a�(   res://Assets/Scenes/Cable_1_tile.tscn   0      �      �M9��f[k�t7�ۂ�$   res://Assets/Scenes/Client_tile.tscn       �      ү�����C�j��$   res://Assets/Scenes/Empty_Tile.tscn �      ^      0�N����]h�5��(   res://Assets/Scenes/Erase_button.tscn   @      �      l�th{ h��usȶ�$   res://Assets/Scenes/Inventory.tscn        �      /�&؀��q�7�p��`�$   res://Assets/Scenes/Item_button.tscn�       %      �k�~��v݃�_���0   res://Assets/Scenes/Network_switch_button.tscn   #      �      H$�z�{�d1I���    res://Assets/Scenes/Root.tscn    &      �      r*о����Ji�[�$   res://Assets/Scenes/Server_tile.tscn�7      Q      &�!4�z-.fN'��(   res://Assets/Scenes/Switch_1_tile.tscn  �9      �      �y$>���ae�0O m$   res://Assets/Scripts/Board.gd.remap ��      /       ��d�N����I�੗��    res://Assets/Scripts/Board.gdc  �;            9��� �E(h���I8�i(   res://Assets/Scripts/Cable_tile.gd.remap �      4       ]�O�%���IN�g�7$   res://Assets/Scripts/Cable_tile.gdc �C      V      	��D�
G+�	�'�,   res://Assets/Scripts/Client_tile.gd.remap   `�      5       4|#=��HU���Nr$   res://Assets/Scripts/Client_tile.gdc0H      �      6*� ��b Nj:n��(   res://Assets/Scripts/Empty_Tile.gd.remap��      4       �z���J9�����X�$   res://Assets/Scripts/Empty_Tile.gdc  L      a      �+�0�A&��l��t�~((   res://Assets/Scripts/Inventory.gd.remap ��      3       ]��Y�m<ym�-~�$   res://Assets/Scripts/Inventory.gdc  pP      0      a�3m�F�z:3V�ϝ�,   res://Assets/Scripts/Item_button.gd.remap    �      5       ��� Z����j��.@$   res://Assets/Scripts/Item_button.gdc�Q      Q      ^��,�>TV�"�nG,   res://Assets/Scripts/Server_Tile.gd.remap   `�      5       �YA�����]�K���O�$   res://Assets/Scripts/Server_Tile.gdc S      W      ��1�D�����n�}�M,   res://Assets/Scripts/Switch_tile.gd.remap   ��      5       X��u�jf+#]��hc$   res://Assets/Scripts/Switch_tile.gdc`V      ]      �_��0���-*��S}5(   res://Assets/Sprites/Cable_1.png.import �\      �      z˞��&{D"�	��E�,   res://Assets/Sprites/Cable_elbow.png.import �a      �      �S�!,g�?oƺ�bcy(   res://Assets/Sprites/Client.png.import  Pf      �      B�][cRҨڕ6��ްa,   res://Assets/Sprites/Empty_tile.png.import  �i      �      T-l��/9q\�Υ��(   res://Assets/Sprites/Erasor.png.import  �n      �      =g؃���rP��(   res://Assets/Sprites/Switch_1.png.import�t      �      �7�m�UL_�+�S,   res://Assets/Sprites/server_icon.png.import `y      �      M���X�.]�;���މ�   res://default_env.tres  0|      �       um�`�N��<*ỳ�8   res://icon.png  ��      �      G1?��z�c��vN��   res://icon.png.import   @�      �      "�Պ����$��㹌   res://project.binaryЛ      F      ����2�~O���[gd_scene load_steps=2 format=2]

[ext_resource path="res://Assets/Scripts/Board.gd" type="Script" id=2]

[node name="Board" type="Node2D"]
script = ExtResource( 2 )
    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Assets/Sprites/Cable_1.png" type="Texture" id=1]
[ext_resource path="res://Assets/Scripts/Item_button.gd" type="Script" id=2]

[node name="Cable_1_button" type="Node2D"]
script = ExtResource( 2 )

[node name="Label" type="Label" parent="."]
anchor_left = 0.02
anchor_top = 0.032
anchor_right = 0.02
anchor_bottom = 0.032
margin_left = -2.0
margin_top = -16.0
margin_right = 80.0
margin_bottom = -2.0
text = "Cable v1 ($1)"

[node name="Button" type="Button" parent="."]
margin_right = 76.0
margin_bottom = 70.0
icon = ExtResource( 1 )

[connection signal="pressed" from="Button" to="." method="_on_Button_pressed" binds= [ "Cable_1" ]]
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Assets/Scenes/Empty_Tile.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Sprites/Cable_1.png" type="Texture" id=2]
[ext_resource path="res://Assets/Scripts/Cable_tile.gd" type="Script" id=3]


[node name="Cable_1_tile" instance=ExtResource( 1 )]
script = ExtResource( 3 )
destroyable = true

[node name="Sprite" parent="Area2D" index="1"]
texture = ExtResource( 2 )
              [gd_scene load_steps=4 format=2]

[ext_resource path="res://Assets/Scenes/Empty_Tile.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Sprites/Client.png" type="Texture" id=2]
[ext_resource path="res://Assets/Scripts/Client_tile.gd" type="Script" id=3]

[node name="Client_tile" instance=ExtResource( 1 )]
script = ExtResource( 3 )

[node name="Sprite" parent="Area2D" index="1"]
texture = ExtResource( 2 )

[node name="PacketLabel" type="Label" parent="Area2D" index="2"]
modulate = Color( 0, 0, 0, 1 )
margin_left = 19.0
margin_top = 18.0
margin_right = 29.0
margin_bottom = 32.0
text = "2"

[node name="Label" parent="Area2D" index="3"]
margin_left = 44.0
margin_top = 25.0
margin_right = 84.0
margin_bottom = 41.0
    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Assets/Sprites/Empty_tile.png" type="Texture" id=1]
[ext_resource path="res://Assets/Scripts/Empty_Tile.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32.0484, 31.7945 )

[node name="Empty_Tile" type="Node2D"]
script = ExtResource( 2 )

[node name="Area2D" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )
one_way_collision_margin = 0.0

[node name="Sprite" type="Sprite" parent="Area2D"]
texture = ExtResource( 1 )

[node name="Label" type="Label" parent="Area2D"]
margin_left = 12.8865
margin_top = -14.866
margin_right = 52.8865
margin_bottom = 1.13397
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="input_event" from="Area2D" to="." method="_on_Area2D_input_event"]
  [gd_scene load_steps=3 format=2]

[ext_resource path="res://Assets/Sprites/Erasor.png" type="Texture" id=1]
[ext_resource path="res://Assets/Scripts/Item_button.gd" type="Script" id=2]

[node name="Erase_button" type="Node2D"]
script = ExtResource( 2 )

[node name="Label" type="Label" parent="."]
anchor_left = 0.02
anchor_top = 0.032
anchor_right = 0.02
anchor_bottom = 0.032
margin_left = 2.0
margin_top = -16.0
margin_right = 84.0
margin_bottom = -2.0
text = "Erase (Free)"

[node name="Button" type="Button" parent="."]
margin_right = 76.0
margin_bottom = 70.0
icon = ExtResource( 1 )

[connection signal="pressed" from="Button" to="." method="_on_Button_pressed" binds= [ "Erase" ]]
      [gd_scene load_steps=6 format=2]

[ext_resource path="res://Assets/Scenes/Cable_1_button.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Scripts/Inventory.gd" type="Script" id=2]
[ext_resource path="res://Assets/Scenes/Cable_1_tile.tscn" type="PackedScene" id=3]
[ext_resource path="res://Assets/Scenes/Network_switch_button.tscn" type="PackedScene" id=4]
[ext_resource path="res://Assets/Scenes/Erase_button.tscn" type="PackedScene" id=5]

[node name="Inventory" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 2 )
tiles = [ ExtResource( 3 ) ]

[node name="Cable_1_button" parent="." instance=ExtResource( 1 )]
position = Vector2( 320, 128 )
scale = Vector2( 1.5, 1.5 )

[node name="Network_Switch" parent="." instance=ExtResource( 4 )]
position = Vector2( 512, 128 )
scale = Vector2( 1.5, 1.5 )

[node name="Erase_button" parent="." instance=ExtResource( 5 )]
position = Vector2( 749, 130 )
scale = Vector2( 1.5, 1.5 )
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://Assets/Sprites/Cable_1.png" type="Texture" id=1]

[node name="Button" type="Node2D"]

[node name="Label" type="Label" parent="."]
anchor_left = 0.02
anchor_top = 0.032
anchor_right = 0.02
anchor_bottom = 0.032
margin_left = -5.0
margin_top = -15.0
margin_right = 87.0
margin_bottom = -1.0
text = "PLACEHOLDER"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Button" type="Button" parent="."]
margin_right = 12.0
margin_bottom = 20.0
icon = ExtResource( 1 )
           [gd_scene load_steps=3 format=2]

[ext_resource path="res://Assets/Sprites/Switch_1.png" type="Texture" id=1]
[ext_resource path="res://Assets/Scripts/Item_button.gd" type="Script" id=2]

[node name="Network_Switch_Button" type="Node2D"]
script = ExtResource( 2 )

[node name="Label" type="Label" parent="."]
anchor_left = 0.02
anchor_top = 0.032
anchor_right = 0.02
anchor_bottom = 0.032
margin_left = -21.0
margin_top = -15.0
margin_right = 105.0
margin_bottom = -1.0
text = "Network Switch ($3)"

[node name="Button" type="Button" parent="."]
margin_right = 12.0
margin_bottom = 20.0
icon = ExtResource( 1 )

[connection signal="pressed" from="Button" to="." method="_on_Button_pressed" binds= [ "Switch" ]]
[gd_scene load_steps=6 format=2]

[ext_resource path="res://Assets/Scenes/Board.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Scenes/Server_tile.tscn" type="PackedScene" id=2]
[ext_resource path="res://Assets/Scenes/Client_tile.tscn" type="PackedScene" id=3]
[ext_resource path="res://Assets/Scenes/Empty_Tile.tscn" type="PackedScene" id=4]
[ext_resource path="res://Assets/Scenes/Inventory.tscn" type="PackedScene" id=6]

[node name="Root" type="Node2D"]
position = Vector2( 0, 128 )

[node name="Board" parent="." instance=ExtResource( 1 )]

[node name="Empty_Tile2" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -128, -64 )

[node name="Empty_Tile3" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -64, -64 )

[node name="Empty_Tile4" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 0, -64 )

[node name="Empty_Tile5" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 64, -64 )

[node name="Empty_Tile6" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -192, 0 )

[node name="Empty_Tile11" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -192, 64 )

[node name="Empty_Tile12" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -192, 128 )

[node name="Empty_Tile13" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -192, 192 )

[node name="Empty_Tile14" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -128, 64 )

[node name="Empty_Tile15" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -128, 128 )

[node name="Empty_Tile16" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -128, 192 )

[node name="Empty_Tile17" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -64, 64 )

[node name="Empty_Tile18" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -64, 128 )

[node name="Empty_Tile19" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -64, 192 )

[node name="Empty_Tile20" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 0, 64 )

[node name="Empty_Tile21" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 0, 128 )

[node name="Empty_Tile22" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 0, 192 )

[node name="Empty_Tile24" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 64, 128 )

[node name="Empty_Tile27" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 64, 128 )

[node name="Empty_Tile7" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -128, 0 )

[node name="Empty_Tile8" parent="Board" instance=ExtResource( 4 )]
position = Vector2( -64, 0 )

[node name="Empty_Tile9" parent="Board" instance=ExtResource( 4 )]

[node name="Empty_Tile10" parent="Board" instance=ExtResource( 4 )]
position = Vector2( 64, 0 )

[node name="Server_tile" parent="Board" instance=ExtResource( 2 )]
position = Vector2( -192, -64 )

[node name="Client_tile" parent="Board" instance=ExtResource( 3 )]
position = Vector2( 64, 64 )

[node name="Client_tile2" parent="Board" instance=ExtResource( 3 )]
position = Vector2( 64, 192 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="Inventory" parent="." instance=ExtResource( 6 )]
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = -576.0
margin_top = -384.0
margin_right = 932.0
margin_bottom = -119.0

[node name="HBoxContainer" type="HBoxContainer" parent="."]
margin_left = -128.0
margin_top = 320.0
margin_right = 39.0
margin_bottom = 360.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MoneyLabel" type="Label" parent="HBoxContainer"]
margin_top = 13.0
margin_right = 87.0
margin_bottom = 27.0
text = "Money Spent:"

[node name="SpentLabel" type="Label" parent="HBoxContainer"]
margin_left = 91.0
margin_top = 13.0
margin_right = 107.0
margin_bottom = 27.0
text = "$0"

[node name="Label" type="Label" parent="."]
margin_left = -67.0
margin_top = -145.5
margin_right = 84.0
margin_bottom = -131.5
text = "Switches Route Up First"

[node name="HBoxContainer2" type="HBoxContainer" parent="."]
margin_left = -258.0
margin_top = -158.0
margin_right = -91.0
margin_bottom = -118.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="FreeCableLabel" type="Label" parent="HBoxContainer2"]
margin_top = 13.0
margin_right = 106.0
margin_bottom = 27.0
text = "Free Cables Left:"

[node name="CableNum" type="Label" parent="HBoxContainer2"]
margin_left = 110.0
margin_top = 13.0
margin_right = 118.0
margin_bottom = 27.0
text = "3"
  [gd_scene load_steps=4 format=2]

[ext_resource path="res://Assets/Scenes/Empty_Tile.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Sprites/server_icon.png" type="Texture" id=2]
[ext_resource path="res://Assets/Scripts/Server_Tile.gd" type="Script" id=3]

[node name="Server_tile" instance=ExtResource( 1 )]
script = ExtResource( 3 )

[node name="Sprite" parent="Area2D" index="1"]
texture = ExtResource( 2 )

[node name="Label" parent="Area2D" index="2"]
modulate = Color( 0, 0, 0, 1 )
margin_left = 18.0
margin_top = 14.0
margin_right = 58.0
margin_bottom = 30.0
text = "4"
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Assets/Scenes/Empty_Tile.tscn" type="PackedScene" id=1]
[ext_resource path="res://Assets/Sprites/Switch_1.png" type="Texture" id=2]
[ext_resource path="res://Assets/Scripts/Switch_tile.gd" type="Script" id=3]


[node name="Switch_1_tile" instance=ExtResource( 1 )]
script = ExtResource( 3 )
destroyable = true

[node name="Sprite" parent="Area2D" index="1"]
texture = ExtResource( 2 )
           GDSC         F   J     ���ӄ�   �����¶�   ��������϶��   ���������Ӷ�   ���������Ӷ�   ����������Ӷ   �����϶�   ���������¶�   �������Ӷ���   �������Ŷ���   �����������Ŷ���   ߶��   ��������������¶   �����Ҷ�   ��������Ҷ��   �������������ݶ�   ��������Ӷ��   �����Ŷ�   �����������Ӷ���   �����������   �������Ӷ���   �������ض���   ��������Ҷ��   �����������   ���¶���   @      #   res://Assets/Scenes/Empty_Tile.tscn    %   res://Assets/Scenes/Cable_1_tile.tscn      &   res://Assets/Scenes/Switch_1_tile.tscn     	   Inventory         Cable_1                   HBoxContainer/SpentLabel      $         HBoxContainer2/CableNum       Switch        Erase                            	                           	      
               $      +      2      =      A      B      I      J      K      L      M      S      [      e      f      g      m      o      v      {       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2      3     4     5     6   	  7   "  8   #  9   +  :   4  ;   :  <   ?  =   @  >   A  ?   B  @   C  A   D  B   E  C   F  D   G  E   H  F   3YY;�  YY;�  Y;�  Y;�  Y;�  YYY0�  PQV�  �  �L  P�  Q�  �  �L  P�  Q�  �  �L  P�  Q�  �  �  PQT�  P�  Q�  �	  PQYY;�
  �  PQYYY�  Y0�	  PQV�  )�  �  PQV�  �
  T�  P�  P�  QQYYY0�  PQV�  -Y0�  P�  QV�  �?  P�  Q�  &�  T�  �  V�  �  T�  �  �  ;�  �  T�  PQ�  �  T�  �  �  �  P�  Q�  �  �  �  &P�  T�  �  QV�  �  T�  �  �  T�  PQT�  P�  QT�  �>  P�	  Q�>  P�  T�  Q�  (V�  T�  PQT�  P�
  QT�  �>  P�  �  T�  Q�  �  '�  T�  �  V�  ;�  �  T�  PQ�  �  �  T�  �  �  �  P�  Q�  �  �  �  �  T�  �  �  T�  PQT�  P�  QT�  �>  P�	  Q�>  P�  T�  Q�  �  '�  T�  �  V�  ;�  �  T�  PQ�  �  T�  �  �  �  P�  Q�  �  �  �  �  �  YYYY`        GDSC         #   �      ���ӄ�   ����������Ӷ   �������Ӷ���   ��������¶��   ������������Ŷ��   ����Ҷ��   ��������϶��   �����϶�   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ׄ������������¶�   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ������Ҷ   �����������ζ���   �����������   �����������Ӷ���   ��������Ӷ��   �������ض���   ���������Ӷ�   �����������ⶶ��   ���������������Ŷ���                	   Inventory         NULL   -                                              !      "   	   #   
   )      /      >      ?      E      F      H      I      J      K      L      M      X      b      h      k      o      y      �      �      �      �       �   !   �   "   �   #   3Y8;�  Y8;�  Y8;�  �  Y8;�  LMY;�  Y;�  YYY0�  PQV�  �  �  PQ�  �  �  PQT�  PQT�	  P�  QYY0�
  PQV�  �  -YYYYYY0�  P�  R�  R�  QV�  &�  4�  �  T�  V�  /�  T�  V�  �  V�  &�  V�  &P�  T�  �  QV�  �  T�  PT�  Q�  �  PQ�  (V�  .�  �  V�  T�  �  �  -Y`          GDSC            �      ���ӄ�   ����������Ӷ   �������Ӷ���   ��������¶��   ������������Ŷ��   ����Ҷ��   ��������϶��   ������Ķ   �����϶�   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ׄ������������¶�   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ������Ҷ   �����������ζ���   �����������   �����������ⶶ��                	   Inventory      #   the client tile cannot be modified.                                            !      '   	   (   
   )      /      5      D      J      K      M      N      O      P      Q      \      f      l      o      t      w      |      ~            3Y8;�  Y8;�  Y8;�  �  Y8;�  LMY;�  Y;�  Y;�  �  SYYY0�  PQV�  �  �	  PQ�  �  �	  PQT�	  PQT�
  P�  QY0�  PQV�  �  -YYYYY0�  P�  R�  R�  QV�  &�  4�  �  T�  V�  /�  T�  V�  �  V�  �?  P�  Q�  �  V�  �?  P�  Q�  -YY`            GDSC         #   �      ���ӄ�   ����������Ӷ   �������Ӷ���   ��������¶��   ������������Ŷ��   ����Ҷ��   ��������϶��   �����϶�   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ׄ������������¶�   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ������Ҷ   �����������ζ���   �����������   �����������Ӷ���   ��������Ӷ��   �������ض���   ���������Ӷ�   �����������ⶶ��                	   Inventory         NULL   "   the switch tile cannot be rotated.                                             !      "   	   #   
   )      /      >      ?      E      F      H      I      J      K      L      M      X      b      h      k      o      y      �      �      �      �       �   !   �   "   �   #   3Y8;�  Y8;�  Y8;�  �  Y8;�  LMY;�  Y;�  YYY0�  PQV�  �  �  PQ�  �  �  PQT�  PQT�	  P�  QYY0�
  PQV�  �  -YYYYYY0�  P�  R�  R�  QV�  &�  4�  �  T�  V�  /�  T�  V�  �  V�  &�  V�  &P�  T�  �  QV�  �  T�  PT�  Q�  �  PQ�  (V�  .�  �  V�  �?  P�  Q�  -Y`               GDSC            )      ������ڶ   ����������Ӷ   ����Ŷ��   ���������ⶶ   �����������   �����������   �������������¶�   �����������Ӷ���             NULL                                     "      '      3Y8P�  R�  Q;�  Y8;�  Y8;�  Y8;�  Y;�  Y;�  �  Y`GDSC             .      ���Ӷ���   ��������������¶   �����϶�   ���������¶�   �����������������Ҷ�   ���������醶   �����������Ӷ���                                                 #   	   *   
   +      ,      3Y;�  YY0�  PQV�  �  �  PQ�  Y0�  P�  QV�  �  T�  �>  P�  Q�  �?  P�  T�  QYYY`               GDSC            n      ���ӄ�   ����������Ӷ   �������Ӷ���   ��������¶��   ������������Ŷ��   ����Ҷ��   ��������϶��   ������Ķ   �����϶�   ���������¶�   �������ׄ������������¶�   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ������Ҷ   �����������ζ���   �����������   �����������ⶶ��                #   the server tile cannot be modified.                                            !      '   	   (   
   )      *      +      1      3      4      :      <      =      >      ?      @      A      L      V      \      _      d      g      l      3Y8;�  Y8;�  Y8;�  �  Y8;�  LMY;�  Y;�  Y;�  �  SYYYYY0�  PQV�  -YY0�	  PQV�  -YYYYYY0�
  P�  R�  R�  QV�  &�  4�  �  T�  V�  /�  T�  V�  �  V�  �?  P�  Q�  �  V�  �?  P�  QY`         GDSC         #   �      ���ӄ�   ����������Ӷ   �������Ӷ���   ��������¶��   ������������Ŷ��   ����Ҷ��   ��������϶��   �����϶�   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ׄ������������¶�   ��������¶��   ����¶��   ���������ζ�   ��������������������ض��   ������Ҷ   �����������ζ���   �����������   �����������Ӷ���   ��������Ӷ��   �������ض���   ���������Ӷ�   �����������ⶶ��                	   Inventory         NULL      the switch cannot be rotated.                                              !      "   	   #   
   )      /      >      ?      E      F      H      I      J      K      L      M      X      b      h      k      o      y      �      �      �      �       �   !   �   "   �   #   3Y8;�  Y8;�  Y8;�  �  Y8;�  LMY;�  Y;�  YYY0�  PQV�  �  �  PQ�  �  �  PQT�  PQT�	  P�  QYY0�
  PQV�  �  -YYYYYY0�  P�  R�  R�  QV�  &�  4�  �  T�  V�  /�  T�  V�  �  V�  &�  V�  &P�  T�  �  QV�  �  T�  PT�  Q�  �  PQ�  (V�  .�  �  V�  �?  P�  Q�  -Y`   GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��[�� D�縛l�YUf[YOχ��)D���O|t{�
   !�B!dF����k��O!��%i��x�h г	%�@�c#����L-�5�5 ��}� ��.ySM��/��uhN�����'�6�Ż�t"�����K*�dX�G5/#k@)q�Ѐ�hh]��xH�[�6�]��=�L�g�j]�j�ޕ��>oB&'j�����}�9�z�Ag���r3�K�y�ӂ_L0�~%\&�P��T���������D}�gģ�� 'z�$ �f�< S���m=�.�p$غ ���К�8\��Ӷ��Ԣ�?�"�9�ɐ�w��-�;x�HGo]�Oc�N��k�O��/�cC��qL>�{&,� ��vd�좸E��oHl��(ЯxK�	�B!����H�}��`u@    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Cable_1.png-8978f633bca9f54919f30eb9493976ac.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Cable_1.png"
dest_files=[ "res://.import/Cable_1.png-8978f633bca9f54919f30eb9493976ac.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   @             PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��a�� �_vz��X�T�c�'����
1)�f:S�H�bP�\�󦷆�Px�n�jJ�\4/V���D�ш��kf^�\�o�_[���6䇁[��7z�;b�54s�X+�E��ODy���:?^�4sM� ��gm�"�09_`G������C|�t<d��B��Z	����# U��Ò� ��`k�F9@�T�,	J*A	�X<� ���@B���] D"D�vT9ǉ��Sș󵀐h$:�0�S�[k���RD6#@Δ��M\��6��� k��.��}����EH�iW @E�SB�k���d:��B ��
�
�
�Q���֥}F��R�>�
��<`�@�"-G�.��ָ �XsX!t�6�=�~(z.�Q��|��@%���wZ�u^���`��K�nHl�`��v�|� [[d>^ ���؊�q�q�q��s/�H�e�b    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Cable_elbow.png-0fcc1e396e6d70d5128af68d22b57c6b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Cable_elbow.png"
dest_files=[ "res://.import/Cable_elbow.png-0fcc1e396e6d70d5128af68d22b57c6b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST@   @            �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  IIDATx��A�� ���	��$f������e«���gT@7�n����>��D�� : ��h$�@#t 	��H �F� 4�k#�L�x˶m�ױh��^٧��0��;)��gD�����) 	��L/`9?�>�}X�Z�����^B��~���z8�f�{����B����ԙs��ڡL�� : ��h$�@�
���՛�Z�L/��`�؈ȁ�0�fz{���ۜ]�5�O�J�"OX�B<���J)�2w?�d�[���5���;	Ob����_�@�� : ��h$�@#t 	��H ���]H�`G�*    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Client.png-e7f638d07f5a7c93ce59111384a3a4b3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Client.png"
dest_files=[ "res://.import/Client.png-e7f638d07f5a7c93ce59111384a3a4b3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @           �   PNG �PNG

   IHDR   @   @   %�   sRGB ���   fIDATh���A�0��l�9��ǩ��=s�gfvWg|�ꀿ�����������������������������Ю8�
{�ȴ�    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Empty_tile.png-f3e1998c189a852b03e0bc62af924077.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Empty_tile.png"
dest_files=[ "res://.import/Empty_tile.png-f3e1998c189a852b03e0bc62af924077.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @              WEBPRIFF  WEBPVP8L  /?���6� I��읮��Hܽ#�жmj��m۶m�������N*�6+۶m'��!���H�3|����L�l��];��󝔜�e��9	�S�w���|�y��QY�b�g�9���kWc�WGHMg
 �\=Z`�!�&ĕ����K*˪J+�I����O���3k
�0m�9��r�,e�#r��������d=u%oD��X�0�uDDK��d�����;��ıJ��@D�T'.!���RjIѵL)�!"��H)�""��+��OybR�P/���7}��
�5J������.:9�͛PG|*EC��#"�� j=�o��W�N�S�
����  %":@�s�'"�>"�W|��Ӈ�ه�h=���S�?"RY�b0�	�m���� ���̪�V0o��P�- �]>���g��.^�ob����j�n��DD�]�x	��s���S�����ߨ		�#C�<�?A6���s�	,�*��#3BX(7e�u��n�c��6�)E���         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Erasor.png-d8e2634babcbf8b57d4b5d3fca3b39f7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Erasor.png"
dest_files=[ "res://.import/Erasor.png-d8e2634babcbf8b57d4b5d3fca3b39f7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?��䶑 I���#*�13��Y�m{�}�m��c����[۶m�vl'O�m;��  ��*Jl!�*׸ ���RT1��ź�\�`��pq݅��[�݆bNrCw(���c�	�oqE�o�]�k�q��t�&<! ��q ��%�-+gF�A���J�u���tB�z>>"u��y*�B=��,$��:����C4c8��VpLh?i���[l�j���7nAH"�&�1�j�AW6��B+�7�m@'�>�jY5�`�A�M�@ݼ
��	���S	+8Q	��G�L/4e$R}�@nna�0r��DM��/��G�Z�G�Z���-��p�1y]�h!�-1�q�2��4�52U��2�b�&��h ���[�W�j�`P��~����j��>2j=m �!w�\: �if �������H����8  O"��#| ,.D�iFxվH4��)&��X�M\L46���l��s��O������H��b=ۆ��b��Ơ���i�Z� �H| �B��!�	�g�‏��~�3Vr��*�1��:L>���T�����D����|d��s�;�����:��c�Z��F�c�:�.�9��� g�a,�
 񚰁�7 �,��Յ�D}��d�уM�O�]5D��9�m��m�]Cw��qQ�K	��M��@�W�nA�  ����r�*׸          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Switch_1.png-a8b8a940f59a7f0bbb46f9abea6092a4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/Switch_1.png"
dest_files=[ "res://.import/Switch_1.png-a8b8a940f59a7f0bbb46f9abea6092a4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            q  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  'IDATx��Q� D��xJ蠟����Җ��wޏ1L�W��m���l��zp������Ý�z%��x�=���	�� ��P��/�4Mff6��۾J@���Y�����	�� ��=��u�2� h4�N��2�@�:�@�q�zN�|�Q'BE��	:�B�hT	�hT	�hT	�-�uT	���+d -�F� -�F� -��z���J�)��g~?��Y�z%A	 -�nn���� @�q���|�ǳu]��x����_��{:�%`����"|�p$`M���c    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/server_icon.png-58e3c9a18faf23dd8aa4a72e8e92a7e3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Assets/Sprites/server_icon.png"
dest_files=[ "res://.import/server_icon.png-58e3c9a18faf23dd8aa4a72e8e92a7e3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Assets/Scripts/Board.gdc"
 [remap]

path="res://Assets/Scripts/Cable_tile.gdc"
            [remap]

path="res://Assets/Scripts/Client_tile.gdc"
           [remap]

path="res://Assets/Scripts/Empty_Tile.gdc"
            [remap]

path="res://Assets/Scripts/Inventory.gdc"
             [remap]

path="res://Assets/Scripts/Item_button.gdc"
           [remap]

path="res://Assets/Scripts/Server_Tile.gdc"
           [remap]

path="res://Assets/Scripts/Switch_tile.gdc"
           �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         Game Design Game 3     application/run/main_scene(         res://Assets/Scenes/Root.tscn      application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      8     display/window/stretch/mode         2d     display/window/stretch/aspect         keep)   physics/common/enable_pause_aware_picking         )   rendering/environment/default_clear_color      ���>���>���>  �?)   rendering/environment/default_environment          res://default_env.tres            