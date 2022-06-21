# Material_UI_Component_Snackbar

Material component Snackbar design in OpenHarmony.

## Download & Install

Install using npm

```npm install https://github.com/Applib-OpenHarmony/Material_UI_Snackbar```

## Usage Instructions

To be able to use snackbars, below import statement must be used

```ets
import { MaterialSnackBar ,
  SnackBarModel ,SnackBarType
}  from "@ohos/material-snackbar"
```


Access snackbar attributes through a object of SnackBarModel and customize the snackbar(if needed) using setter functions as
shown and finally pass the object to MaterialSnackBar and action associated with action button.

## Snackbar Designs:

## SimpleSnack ( Snackbar with only message )
```ets
//Creating object
@State snackBarModel1: SnackBarModel = new SnackBarModel(SnackBarType.SimpleSnack)
```
```ets
//Customization
aboutToAppear(){
    this.snackBarModel1.setSnackBarText("Text associated with SimpleSnack")    //Mandatory
    this.snackBarModel1.setSnackTextColor("#ffffff")
    this.snackBarModel1.setSnackBackColor("#9400D3")
    this.snackBarModel1.setOpacity(1)
    this.snackBarModel1.setTimer(4000)
}
```
```ets
//Passing Customized/Non-customized object to MaterialSnackBar
MaterialSnackBar({
          obj : this.snackBarModel1
        })
```
![s1](https://user-images.githubusercontent.com/84433855/173008655-0f4d33ec-dcf0-4e1c-a9a7-7b48fa0006a2.png)

## OneLineActionSnack ( Snackbar with one line message plus the action button )
```ets
//Creating object
@State snackBarModel2: SnackBarModel = new SnackBarModel(SnackBarType.OneLineActionSnack)
//Custom Action 
  SnackButtonAction: () => void = function () {
    console.log("test")
  }
```
```ets
//Customization
aboutToAppear(){
    this.snackBarModel2.setSnackBarText("Text of OneLineActionSnack")       //Mandatory
    this.snackBarModel2.setSnackTextColor("#ffffff")
    this.snackBarModel2.setSnackBackColor("#9400D3")
    this.snackBarModel2.setOpacity(1)
    this.snackBarModel2.setTimer(4000)
    this.snackBarModel2.setButtonText("ACTION")                              //Mandatory
    this.snackBarModel2.setButtonTextColor("#ECD540")
}
```
```ets
//Passing Customized/Non-customized object to MaterialSnackBar
MaterialSnackBar({
          obj : this.snackBarModel2,
          func : this.SnackButtonAction
        })
```
![s2](https://user-images.githubusercontent.com/84433855/173008731-c6df6d51-66cc-4cf0-bc86-57e0b2b60c62.png)

##  TwoLineActionSnack ( Snackbar with two line message plus the action button )
```ets
//Creating object
@State snackBarModel3: SnackBarModel = new SnackBarModel(SnackBarType.TwoLineActionSnack)
//Custom Action 
  SnackButtonAction: () => void = function () {
    console.log("test")
  }
```
```ets
//Customization
aboutToAppear(){
    this.snackBarModel3.setSnackBarText("Longer text associated with TwoLineActionSnack") //Mandatory
    this.snackBarModel3.setSnackTextColor("#ffffff")
    this.snackBarModel3.setSnackBackColor("#9400D3")
    this.snackBarModel3.setOpacity(1)
    this.snackBarModel3.setTimer(4000)
    this.snackBarModel3.setButtonText("ACTION")                                           //Mandatory
    this.snackBarModel3.setButtonTextColor("#ECD540")
}
```
```ets
//Passing Customized/Non-customized object to MaterialSnackBar
MaterialSnackBar({
          obj : this.snackBarModel3,
          func : this.SnackButtonAction
        })
```
![s3](https://user-images.githubusercontent.com/84433855/173008773-43338d25-e5fb-43c0-8405-704fec24db57.png)

##  BigLineActionSnack ( Snackbar with longer two line message plus the longer action button )
```ets
//Creating object
@State snackBarModel4: SnackBarModel = new SnackBarModel(SnackBarType.BigTwoLineActionSnack)
//Custom Action 
  SnackButtonAction: () => void = function () {
    console.log("test")
  }
```
```ets
//Customization
aboutToAppear(){
    this.snackBarModel4.setSnackBarText("Longer text associated with   BigTwoLineActionSnack")    //Mandatory
    this.snackBarModel4.setSnackTextColor("#ffffff")
    this.snackBarModel4.setSnackBackColor("#9400D3")
    this.snackBarModel4.setOpacity(1)
    this.snackBarModel4.setTimer(4000)
    this.snackBarModel4.setButtonText("LONGER ACTION")                                             //Mandatory
    this.snackBarModel4.setButtonTextColor("#ECD540")
}
``` 
```ets
//Passing Customized/Non-customized object to MaterialSnackBar
MaterialSnackBar({
          obj : this.snackBarModel4,
          func : this.SnackButtonAction
        })
```        
![s4](https://user-images.githubusercontent.com/84433855/173008958-96d9c4b5-893c-4213-9143-83e11898741e.png)

## Compatibility
Supports OpenHarmony API version 8

# Reference:

Design by : Pranav Singh
