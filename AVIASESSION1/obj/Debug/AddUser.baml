   M S B A M L   `   `   `  ????G  CAVIASESSION1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AVIASESSION1AVIASESSION1  5   	       AVIASESSION1.AddUser   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AVIASESSION1     5   	   -   5          ? Title$  AddUser??5   	   $	??450??6   $	??464??6&    ? 
ResizeMode$ NoResize=?6K    ? 	Resources 5	      "   AVIASESSION1.Session1DataSet   session1DataSet  officesViewSource ?? Source ?? Source??%X   &	        &	      7     5
   
   6    ?? 5   
    69   ?? *	Offices+8   5      .??5      ?  ? DataContext# [ 6   .+?5   
   ?? -   5         ??Name$ email??5      $
??Left=?6!   $??
236,77,0,0q?6<    ?? TextWrapping$
 Wrap=?6P   $?? ??6d   $	??Top=?6l   $	??120??6?   ?? 5   
   -   5        $ 	firstname??5      $
??Left=?6%   $??236,100,0,0q?6@   $
 Wrap=?6U   $?? ??6i   $	??Top=?6q   $	??120??6?   ?? 5   
   -   5        $ Lastname??5      $
??Left=?6$   $??236,123,0,0q?6?   $
 Wrap=?6T   $?? ??6h   $	??Top=?6p   $	??120??6?   ?? 5   
   $
??Left=?6   $??
193,79,0,0q?6/   $
??Wrap=?6C   $??Email??6W   $	??Top=?6d    J? RenderTransformOrigin$ 1.141,0.525&?6|   ?? 5   
   $
??Left=?6   $??181,100,0,0q?6/   $
??Wrap=?6D   $??	Firstname??6X   $	??Top=?6i   $ 1.141,0.525&?6?   ?? 5   
   $
??Left=?6   $??180,123,0,0q?6/   $
??Wrap=?6D   $??Lastname??6X   $	??Top=?6h   $ 1.141,0.525&?6?   ?? 5   
   $
??Left=?6   $??193,146,0,0q?6/   $
??Wrap=?6D   $??Office??6X   $	??Top=?6f   $ 1.141,0.525&?6~   ?? 5   
   -   5        $
??Save??5      $
??Left=?6    $??143,274,0,0q?6;   $	??Top=?6P   $??87??6h   
???????6?   ?? 5   
   -   5        $??Cancel??5      $
??Left=?6"   $??254,274,0,0q?6=   $	??Top=?6R   $??87??6j   
???????6?   (  "System.Windows.Controls.DatePicker  5   
   -   5        	  Name$
	 date??5      $
??Left=?6#   $??236,176,0,0q?6>   $	??Top=?6S   $	??120??6k   ?? 5   
   $
??Left=?6   $??176,180,0,0q?6/   $
??Wrap=?6D   $??	Birthdate??6X   $	??Top=?6i   $ 1.141,0.525&?6?   ?? 5   
   -   5        $ Password??5      $
??Left=?6$   $??	236,0,0,0q?6?   $
 Wrap=?6R   $?? ??6f   $??Center=?6n   $	??120??6?   ?? 5   
   $
??Left=?6   $??	180,0,0,0q?6/   $
??Wrap=?6B   $??Password??6V   $??Center=?6f   $ 1.141,0.525&?6?   ?? 5   
   -	   5        
 ??Name$
 officesComboBox??5       ?? DisplayMemberPath$ Title??6,   $??236,146,0,0q?6^    ?? SelectedValuePath$ ID??6s   $
??Left=?6?   $	??120??6?   $??18??6?   $	??Top=?6?   ??6F   ?? ??5      ?? 5      .R?5      $? 5      5!      5#      5$      