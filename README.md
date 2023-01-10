# dim_loading_dialog  
Customizable progress dialog for Flutter applications with smooth animation for background dim color and blur.

### Example
![example gif](https://raw.githubusercontent.com/MrHafid/dim_loading_dialog_flutter/main/screenshots/dlp.gif)

## Getting Started    
 ### Install  
Add dependency to pubspec.yaml file :   
`dim_loading_dialog: 0.0.1`    

Run this command :  
`$ flutter pub get`
  
### Import  
Import class in your project :  
`import 'package:dim_loading_dialog/dim_loading_dialog.dart';`  
  
## Showing Dialog  
### Show simple progress dialog :  

```  
DimLoadingDialog dimDialog = DimLoadingDialog(
    GlobalVariable.navState.currentState!.context,
    blur: 2,
    backgroundColor: const Color(0x33000000),
    animationDuration: const Duration(milliseconds: 500));
	
	dimDialog.show(); // show dialog
	dimDialog.dismiss(); //close dialog
``` 
  
### Customize loading widget :  
  
```  
 DimLoadingDialog customdimDialog = DimLoadingDialog(
	 context,
	 blur: 2,
	 backgroundColor: Color(0x33000000),
	 loadingWidget: Container(
		 width: 150,
		 height: 150,
		 color: Colors.red,
		 child: CircularProgressIndicator(),    
    ));  
```

## Properties
| **Name**          | **Type** | **Description**                                                                                                                                                  | **Default**                    |
|-------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------|
| backgroundColor   | Color    | Dialog dim(background) Color                                                                                                                                     | Color (0x99000000)             |
| blur              | double   | Blur amount of dialog background                                                                                                                                 | 0                              |
| dismissable       | bool     | Setting this true lets user dismiss dialog by touching outside of it.                                                                                            | true                           |
| onDismiss         | Function | This function triggers when user dismisses dialog.                                                                                                               | -                              |
| loadingWidget     | Widget   | Dialog's widget. You can use your own widget when showing dialog.                                                                                                | _simple widget_                |
| useSafeArea       | bool     | Setting this to false makes dialog background fullscreen but when you set it true blur and background color will not apply on status bar, navigation bar and ... | false                          |
| animationDuration | Duration | This duration defines how much will take for blur and background color to appear.                                                                                | Duration (milliseconds :  300) |