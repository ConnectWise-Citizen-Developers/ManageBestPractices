   M S B A M L   `   `   `  ���� H  DMahApps.Metro, Version=1.6.5.1, Culture=neutral, PublicKeyToken=nullV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls   BestPractices%   BestPractices.ManageIntegration   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro       � Title$  Manage Integration��$	��501��$	��800��.��� .+��� -    ��Name$ 
tabControl��$
��Left=�$	��450��$��	10,10,0,0q�$	��Top=�$	��772��.@��� $��Authentication��.��� ���	#FFE5E5E5.+��� -    ��Name$ label��$A��;Enter your credentials below to use the Manage Integration.��$
��Left=�$��	10,10,0,0q�$	��Top=��� -   $ label1��$��	Site URL:��$
��Left=�$��	10,41,0,0q�$	��Top=��� -   $ label1_Copy��$��Login Company:��$
��Left=�$��	10,99,0,0q�$	��Top=��� -   $ label1_Copy1��$��Public API Key:��$
��Left=�$��
10,130,0,0q�$	��Top=��� -   $ label1_Copy2��$��Private API Key:��$
��Left=�$��
10,161,0,0q�$	��Top=��� -    ��Name$ 
cb_siteURL��$
��Left=�$��	72,41,0,0q�$	��Top=�$	��201��$��1��.@��� $��NA Cloud��$
��Left=�$	��199���� $��EU Cloud��$
��Left=�$	��199���� $��AU Cloud��$
��Left=�$	��199���� $��Premise��$
��Left=�$	��199���� -    ��Name$ txt_loginCompany��$
��Left=�$��23��$��
111,99,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��162��$��3���� -	   $ txt_publicKey��$
��Left=�$��23��$��111,130,0,0q�$
 Wrap=�$	��Top=�$	��162��$��4���� -
   $ txt_privateKey��$
��Left=�$��23��$��111,161,0,0q�$
 Wrap=�$	��Top=�$	��162��$��5���� -    ��Name$ btn_testConnection��$��Test Connection��$
��Left=�$��513,366,0,0q�$	��Top=�$	��120��$��6���� -   $ btn_save��$��Save Settings��$
��Left=�$��638,366,0,0q�$	��Top=�$	��120��$��7���� -   $ txt_siteURL��$
��Left=�$��23��$��	10,70,0,0q�$
 Wrap=�$	��Top=�$	��263��{�.  $��2���� -   $ lbl_testConnection��$��Waiting for Test��$
��Left=�$��513,303,0,0q�$	��Top=����	#FF003AFF$��58��$	��255����Z� �� $��	Customers��.��� ���	#FFE5E5E5.+��� -    ��Name$ lb_company_types��$
��Left=�$	��125��$��
10,202,0,0q�$	��Top=�$	��220���� -   $ lb_company_statuses��$
��Left=�$	��125��$��	10,41,0,0q�$	��Top=�$	��220���� -   $ label2��$��Company Statuses��$
��Left=�$��	10,10,0,0q�$	��Top=��� -   $ label2_Copy��$��Company Types��$
��Left=�$��
10,171,0,0q�$	��Top=��� -   $ btn_refresh_statuses��$��Refresh��$
��Left=�$��
155,10,0,0q�$	��Top=�$��75���� -   $ btn_refresh_types��$��Refresh��$
��Left=�$��155,171,0,0q�$	��Top=�$��75���� -   $ company1��$��XYZ Test Company:��$��center=�$��272,42,376,0q�$	��Top=�$	��120���� -   $ company2��$��
BlueLight:��$��center=�$��272,104,376,0q�$	��Top=�$	��120���� -   $ company3��$��BWS Service:��$��Center=�$��272,135,376,0q�$	��Top=�$	��120���� -   $ company4��$��Digital Blue:��$��Center=�$��272,73,376,0q�$	��Top=�$	��120���� -   $ label3��$3��-Use the Dropdown to select the Manage Company��$
��Left=�$��
272,11,0,0q�$	��Top=��� -   $ 	comboBox1��$
��Left=�$��
397,42,0,0q�$	��Top=�$	��153�� �� 
IsEditable . �� -   $ comboBox_Copy��$
��Left=�$��
397,73,0,0q�$	��Top=�$	��153���� -   $ comboBox_Copy1��$
��Left=�$��397,104,0,0q�$	��Top=�$	��153���� -   $ comboBox_Copy2��$
��Left=�$��397,135,0,0q�$	��Top=�$	��153���� -   $ button��$��Tester��$
��Left=�$��683,366,0,0q�$	��Top=�$��75���� $��Alerts��.��� ���	#FFE5E5E5.+��� -   $ label4��$*��$Unable to create agreement addition.��$
��Left=�$��	10,10,0,0q�$	��Top=��� -    $ 
customize1��$��	Customize��$
��Left=�$��
336,10,0,0q�$	��Top=�$��75���� -!   $ label4_Copy��$��Device hasn't checked in.��$
��Left=�$��	10,42,0,0q�$	��Top=��� -"   $ customize1_Copy��$��	Customize��$
��Left=�$��
336,42,0,0q�$	��Top=�$��75���� -#   $ label4_Copy1��$.��(Device has run out of available storage.��$
��Left=�$��	10,74,0,0q�$	��Top=��� -$   $ customize1_Copy1��$��	Customize��$
��Left=�$��
336,74,0,0q�$	��Top=�$��75���� -%   $ label4_Copy2��$��Endpoint is out of date.��$
��Left=�$��
10,106,0,0q�$	��Top=��� -&   $ customize1_Copy2��$��	Customize��$
��Left=�$��336,106,0,0q�$	��Top=�$��75���� -'   $ label4_Copy3��$,��&Security vulnerability has been found.��$
��Left=�$��
10,138,0,0q�$	��Top=��� -(   $ customize1_Copy3��$��	Customize��$
��Left=�$��336,138,0,0q�$	��Top=�$��75���� $
��Left=�$	��194��$��	521,1,0,0q�
���   �$	��Top=�$	��246���� -)   $ label5��$��Global Settings��$
��Left=�$��	526,1,0,0q�$	��Top=��� -*   $ label5_Copy��$��Service Board��$
��Left=�$��
526,33,0,0q�$	��Top=��� -+   $ comboBox��$
��Left=�$��
637,33,0,0q�$	��Top=�$	��120���� -,   $ label5_Copy1��$��Service Type��$
��Left=�$��
526,64,0,0q�$	��Top=��� --   $ comboBox_Copy3��$
��Left=�$��
637,64,0,0q�$	��Top=�$	��120���� -.   $ label5_Copy2��$��Service Sub-Type��$
��Left=�$��
526,95,0,0q�$	��Top=��� -/   $ comboBox_Copy4��$
��Left=�$��
637,95,0,0q�$	��Top=�$	��120���� -0   $ label5_Copy3��$��Source��$
��Left=�$��526,157,0,0q�$	��Top=��� -1   $ comboBox_Copy5��$
��Left=�$��637,157,0,0q�$	��Top=�$	��120���� -2   $ label5_Copy4��$��Service Item��$
��Left=�$��526,126,0,0q�$	��Top=��� -3   $ comboBox_Copy6��$
��Left=�$��637,126,0,0q�$	��Top=�$	��120���� $
��Left=�$	��194��$��521,200,0,0q�
���   �$	��Top=�$	��246���� -4   $ label5_Copy5��$��Override Settings��$
��Left=�$��526,200,0,0q�$	��Top=��� -5   $ label5_Copy6��$��Service Board��$
��Left=�$��526,232,0,0q�$	��Top=��� -6   $ comboBox_Copy7��$
��Left=�$��637,232,0,0q�$	��Top=�$	��120��{�.  �� -7   $ label5_Copy7��$��Service Type��$
��Left=�$��526,263,0,0q�$	��Top=��� -8   $ comboBox_Copy8��$
��Left=�$��637,263,0,0q�$	��Top=�$	��120��{�.  �� -9   $ label5_Copy8��$��Service Sub-Type��$
��Left=�$��526,294,0,0q�$	��Top=��� -:   $ comboBox_Copy9��$
��Left=�$��637,294,0,0q�$	��Top=�$	��120��{�.  �� -;   $ label5_Copy9��$��Source��$
��Left=�$��526,356,0,0q�$	��Top=��� -<   $ comboBox_Copy10��$
��Left=�$��637,356,0,0q�$	��Top=�$	��120��{�.  �� -=   $ label5_Copy10��$��Service Item��$
��Left=�$��526,325,0,0q�$	��Top=��� ->   $ comboBox_Copy11��$
��Left=�$��637,325,0,0q�$	��Top=�$	��120��{�.  �� $��Billing��.��� ���	#FFE5E5E5�� $��Assets��.��� ���	#FFE5E5E5