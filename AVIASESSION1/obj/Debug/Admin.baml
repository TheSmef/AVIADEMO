   M S B A M L   `   `   `  ????G  CAVIASESSION1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AVIASESSION1AVIASESSION1  5   	       AVIASESSION1.Admin   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AVIASESSION1     5   	   -   5          ? Title$  Admin??5   	   $	??450??6   $	??800??6$    ? 
ResizeMode$ NoResize=?6G    ? 	Resources 5	      "   AVIASESSION1.Session1DataSet   session1DataSet  usersViewSource ?? Source ?? Source??%V   &	        &	      7     5
   
   6    ?? 5   
    67   ?? *Users+8   5      .??5      ?  ? DataContext# [ 6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ usersDataGrid??5         AutoGenerateColumns .     EnableRowVirtualization . 	   RowDetailsVisibilityMode$	 VisibleWhenSelected=?6}   $??10,32,10,64q?6?   ??6e   ?? 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        iDColumn??,  &System.Windows.Controls.DataGridColumn   Header$ ID??5   N      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6Z   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   ?? *ID+6Z     5      -   5        roleIDColumn??$ Role ID??5   V   $ SizeToHeader 6g    6;   ?? *RoleID+6g     5      -   5        emailColumn??$ Email??5   T   $ SizeToHeader 6c    6:   ?? *Email+6c     5      -   5        passwordColumn??$ Password??5   Z   $ SizeToHeader 6l    6=   ?? *
Password+6l     5      -   5        firstNameColumn??$ 
First Name??5   \   $ SizeToHeader 6p    6>   ?? *	FirstName+6p     5      -   5        lastNameColumn??$ 	Last Name??5   Z   $ SizeToHeader 6m    6=   ?? *
LastName+6m     5      -	   5        officeIDColumn??$ 	Office ID??5   Z   $ SizeToHeader 6m    6=   ?? *
OfficeID+6m   4  .System.Windows.Controls.DataGridTemplateColumn  5      -
   5        birthdateColumn??$ 	Birthdate??5   B   $ SizeToHeader 6U      CellTemplate 5      ?? 5      .R?5      (  "System.Windows.Controls.DatePicker     SelectedDate 6)   ?? *	Birthdate+ ?? Mode$ TwoWay=? ?? NotifyOnValidationError .  ?? ValidatesOnExceptions . 5      5      4	  .System.Windows.Controls.DataGridCheckBoxColumn	  5      -   5        activeColumn??$ Active??5   Z   $ SizeToHeader 6j    6?   ?? *Active+6j   5!      ?? 5"   
   -   5        $??Change Role??5"      $
??Left=?6'   $??
21,385,0,0q?6B   $	??Top=?6V   $	??138??6n   
???????6?   ?? 5#   
   -   5        $??Enable/Disable Login??5#      $
??Left=?60   $??229,385,0,0q?6K   $	??Top=?6`   $	??138??6x   
???????6?   c? 5$   
   $??Center=?6   $??24??6/   $	??Top=?6;   $	??800??6S   .@?5%      ?? -   5        $??Add User??5%      $
??Left=?6(   $	??Top=?6C   6[   ?? 5&      -   5        $
??Exit??5&      $
??Left=?6$   $	??Top=?6?   6W   5'      5*      5+      