   M S B A M L   `   `   `  ���� C  ?DnD_calc, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DnD_calcDnD_calc      DnD_calc.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:DnD_calc       � WindowStartupLocation$  CenterScreen=� � Title$&  ДнД Калькулятор :3��$	��650��$	��800��.���  � RowDefinitions �� $��70 ���  � ColumnDefinitions �� �� $	��250 ��� $	��250 ��� .+��� -    ��Name$ DescriptionBox��$��1��$��0��$,��&Здесь будет описание��$	��Top=�$��Center=�$
��Wrap=��� $��0��$��1��$��2��$��Center=�$��Center=�.+��� $��ОЧКИ���� -    ��Name$ 
PointScore��$��0��$��40��$��25��{�.  $��Center=�$��Center=��� $��1��$��1��$	��Top=�$��Center=�.+��� $ ��ПОЛОЖИТЕЛЬНЫЕ��
��� � �$��Center=��� -    ��Name$ PositiveListView��$	��230��$��Center=�$��Center=����� .R��  �� $	��190 ��� $��* �.+���  ��Name$ Positive_Check��-   $��0��$��Center=�$
��Left=����� *
Char_Pos+ �� StringFormat$	 {0}���� $��1��$��Center=�
���<������ *	Point_Pos+$
 -{0}���� $��1��$��2��$	��Top=�$��Center=�.+��� $ ��ОТРИЦАТЕЛЬНЫЕ��
���<��$��Center=��� -   $ NiggativeListView��$	��230��$��Center=�$��Center=����� .R��  �� $	��190 ��� $��* �.+��� $ Niggative_Check��-   $��0��$��Center=�$
��Left=����� *	Char_Nigg+$	 {0}���� $��1��$��Center=�
��� � ����� *
Point_Nigg+$
 +{0}���� $��1��$��3��$	��Top=�$
��Left=�.+��� -   $ GoodSkillList��
��� � �$
��Auto���� -   $ BadSkillList��
���<��$
��Auto��