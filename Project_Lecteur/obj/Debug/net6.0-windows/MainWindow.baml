   M S B A M L   `   `   `  ����J  FProject_Lecteur, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Project_LecteurProject_Lecteur  5   	        Project_Lecteur.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Project_Lecteur     5   	     � Title$  
MainWindow��5   	   $	��250��6   $	��200��6)   .��5	      �  � Orientation$ 
Horizontal=�6   $��0,0,0,60q�6)   $	��150��6;   $	��200��6H   .+�5
   
   �� $��Player audio��6   $	��200��6'   $��Center=�63   $��Center=�6N   �� 5   
   -   5         ��Name$ FilePath��5      $��Center=�6$   $	��200��6@   $�� Ouvrir un fichier mp3��6L   6j   �� 5   
   -   5         ��Name$ OpenFile��5      $��50��6%   $��20��60   $��Ouvrir��6S   �� 5   
   -   5        $ Jouer��5      $��50��6"   $��20��6-   $��Jouer��6M   �� 5   
   -   5        $ pause��5      $��50��6"   $��20��6-   $��Pause��6M   �� 5   
   -   5        $
 stop��5      $��50��6!   $��20��6,   $
��Stop��6K   �� 5   
   -   5         ��Name$	 vol��5      $	��200��6    � Minimum$ 0Q�6*    � Maximum$	 100Q�66    � Value$ 50Q�6D   6O   � 5   
   -   5         �Name$
 prog��5      $��10��6$   $	��200��60   $ 0Q�6<   $ 0Q�6F   $	 100Q�6R   5      5      