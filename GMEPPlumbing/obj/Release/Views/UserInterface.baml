   M S B A M L   `   `   `  ���� G  CGMEPPlumbing, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:GMEPPlumbingGMEPPlumbing  &     GMEPPlumbing.Views.UserInterface   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ,localclr-namespace:GMEPPlumbing     .��� ���	#FF2D2D30  � ColumnDefinitions  �� $	��300 ��� $��10 ��� $	��300 ��� $	��300 ��� $��10 ��� $	��250 �.+��� $��0��$
��Auto=�.���� $��20q�.+��� $��Section Header 1:�����#FFFFFF$��0,0,0,5q��� -   $	��150��$
��Left=����	#FF3E3E42���#FFFFFF���� *SectionHeader1+ �� UpdateSourceTrigger$ PropertyChanged=��� $��Street Low Pressure:�����#FFFFFF$��0,10,0,5q���  �� Orientation$ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *StreetLowPressure+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Street High Pressure:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *StreetHighPressure+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Meter Size:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *	MeterSize+$ PropertyChanged=��� $��in�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Fixture Calculation:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *FixtureCalculation+$ PropertyChanged=��� $	��gpm�����#FFFFFF$��5,0,0,0q�$��Center=��� $��
Elevation:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *	Elevation+$ PropertyChanged=��� $��ft�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Backflow Pressure Loss:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *BackflowPressureLoss+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $��PRV Pressure Loss:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *PRVPressureLoss+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $"��Pressure Required or @ Unit:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -	   $	��150�����	#FF3E3E42���#FFFFFF���� *PressureRequiredOrAtUnit+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $��System Length:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -
   $	��150�����	#FF3E3E42���#FFFFFF���� *SystemLength+$ PropertyChanged=��� $��ft�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Additional Losses:�����#FFFFFF$
��Bold"�$��	0,20,0,10q��   �� $��75 ��� $	��150 ��� $��* �.+��� $��Title of Loss�����#FFFFFF$��0��$��0,0,10,5q��� $��Amount of Loss (psi)�����#FFFFFF$��1��$��0,0,0,5q�� $��0,0,0,10q�  �� $��75 ��� $��75 ��� $
��Auto ��� $��* �.+��� -    ��Name$ TitleTextBox��$��0��$��0,0,10,0q����	#FF3E3E42���#FFFFFF�� -   $ ValueTextBox��$��1��$��0,0,10,0q����	#FF3E3E42���#FFFFFF�� -   $	��Add��$��2��$��60�����	#FF3E3E42���#FFFFFF�� -    ��Name$ DynamicListView��$��0,0,0,20q����� .R�� $��0,0,0,5q�  �� $	��125 ��� $��30 ��� $
��Auto ��� $��* �.+��� $��0�����#FFFFFF���� *Title+�� $��1�����#FFFFFF���� *Amount+�� -   $��Remove��$��2��$��60�����	#FF3E3E42���#FFFFFF$��10,0,0,0q��� $��Additional Fields:�����#FFFFFF$
��Bold"�$��	0,20,0,10q��� $��Existing Meter�����#FFFFFF$��0,0,0,5q� d� 	IsChecked �� *ExistingMeter+�� $��Pipe Material:�����#FFFFFF$��0,10,0,5q��� -   $	��150�����	#FF3E3E42���#FFFFFF$
��Left=����� *PipeMaterial+$ PropertyChanged=��� $��Cold Water Max Velocity:�����#FFFFFF$��0,10,0,5q��� -   $	��150�����	#FF3E3E42���#FFFFFF$
��Left=����� *ColdWaterMaxVelocity+$ PropertyChanged=��� $��Hot Water Max Velocity:�����#FFFFFF$��0,10,0,5q��� -   $	��150�����	#FF3E3E42���#FFFFFF$
��Left=����� *HotWaterMaxVelocity+$ PropertyChanged=��� $"��Developed Length Percentage:�����#FFFFFF$��0,10,0,5q��� -   $	��150�����	#FF3E3E42���#FFFFFF$
��Left=����� *DevelopedLengthPercentage+$ PropertyChanged=��� $��1��$��1�����	#FF3E3E42$��	4,20,5,20q�$��Stretch=��� $��2��$��20q�.+��� $��Meter Loss:�����#FFFFFF$��0,0,0,5q��� ���#FFFFFF$
��Left=����� *	MeterLoss+ �� StringFormat$ 
{0:F1} psi���� 
���  ��$��0,5,0,0q�$��WrapWithOverflow=����� *MeterLossErrorMessage+�� $��Static Loss:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *
StaticLoss+$ 
{0:F1} psi���� $��Backflow Loss:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *BackflowPressureLoss+$ 
{0:F1} psi���� $��	PRV Loss:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *PRVPressureLoss+$ 
{0:F1} psi���� $��Additional Losses:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *AdditionalLossesTotal+$ 
{0:F1} psi���� $ ��Minimum Pressure Required:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *PressureRequiredOrAtUnit+$ 
{0:F1} psi���� $��Total Losses:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *	TotalLoss+$ 
{0:F1} psi���� $��Minimum Street Pressure:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *StreetLowPressure+$ 
{0:F1} psi���� $&�� Pressure Available for Friction:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *PressureAvailable+$ 
{0:F1} psi���� $��Actual Length of System:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *SystemLength+$ 	{0:F1} ft���� $��Developed Length:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *DevelopedLength+$ 	{0:F1} ft���� $&�� Average Pressure Drop per 100ft:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *AveragePressureDrop+$ 
{0:F1} psi���� -   $*��$Create Basic Residential Water Table��$��0,10,0,0q�$
��10,5q��� -   $)��#Create Basic Commercial Water Table��$��0,5,0,0q�$
��10,5q��� $��2��$��1�����	#FF3E3E42$��	4,20,5,20q�$��Stretch=�$��Right=��� $��3��$
��Auto=�.���� $��20q�.+��� $��Section Header 2:�����#FFFFFF$��0,0,0,5q��� -   $	��150��$
��Left=����	#FF3E3E42���#FFFFFF���� *SectionHeader2+$ PropertyChanged=��� $��Pressure Required 2:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *PressureRequired2+$ PropertyChanged=��� $	��psi�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Meter Size 2:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *
MeterSize2+$ PropertyChanged=��� $��in�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Fixture Calculation 2:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *FixtureCalculation2+$ PropertyChanged=��� $	��gpm�����#FFFFFF$��5,0,0,0q�$��Center=��� $��System Length 2:�����#FFFFFF$��0,10,0,5q��� $ 
Horizontal=�.+��� -   $	��150�����	#FF3E3E42���#FFFFFF���� *SystemLength2+$ PropertyChanged=��� $��ft�����#FFFFFF$��5,0,0,0q�$��Center=��� $��Additional Losses 2:�����#FFFFFF$
��Bold"�$��	0,20,0,10q��   �� $��75 ��� $	��150 ��� $��* �.+��� $��Title of Loss�����#FFFFFF$��0��$��0,0,10,5q��� $��Amount of Loss (psi)�����#FFFFFF$��1��$��0,0,0,5q�� $��0,0,0,10q�  �� $��75 ��� $��75 ��� $
��Auto ��� $��* �.+��� -   $ TitleTextBox2��$��0��$��0,0,10,0q����	#FF3E3E42���#FFFFFF�� -   $ ValueTextBox2��$��1��$��0,0,10,0q����	#FF3E3E42���#FFFFFF�� -   $	��Add��$��2��$��60�����	#FF3E3E42���#FFFFFF�� -   $ DynamicListView2��$��0,0,0,20q����� .R�� $��0,0,0,5q�  �� $	��125 ��� $��30 ��� $
��Auto ��� $��* �.+��� $��0�����#FFFFFF���� *Title+�� $��1�����#FFFFFF���� *Amount+�� -   $��Remove��$��2��$��60�����	#FF3E3E42���#FFFFFF$��10,0,0,0q��� $��4��$��1�����	#FF3E3E42$��	4,20,5,20q�$��Stretch=��� $��5��$��20q�.+��� $"��Minimum Pressure Required 2:�����#FFFFFF$��0,0,0,5q��� ���#FFFFFF$
��Left=����� *PressureRequired2+$ 
{0:F1} psi���� $��Meter Loss 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *
MeterLoss2+$ 
{0:F1} psi���� 
���  ��$��0,5,0,0q�$��WrapWithOverflow=����� *MeterLossErrorMessage2+�� $��Total Losses 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *
TotalLoss2+$ 
{0:F1} psi���� $��Water Pressure Available:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *PressureRequiredOrAtUnit+$ 
{0:F1} psi���� $(��"Pressure Available for Friction 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *PressureAvailable2+$ 
{0:F1} psi���� $ ��Actual Length of System 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *SystemLength2+$ 	{0:F1} ft���� $��Developed Length 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *DevelopedLength2+$ 	{0:F1} ft���� $��Average Pressure Drop 2:�����#FFFFFF$��0,10,0,5q��� ���#FFFFFF$
��Left=����� *AveragePressureDrop2+$ 
{0:F1} psi��