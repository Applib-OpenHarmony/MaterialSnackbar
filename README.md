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
![s11](https://user-images.githubusercontent.com/84433855/175003092-0f59a5fd-c122-48e0-ab95-b7d66e76e2b7.png)

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
![s22](https://user-images.githubusercontent.com/84433855/175003245-800fa782-776b-42ba-87ca-0fbd24172bcd.png)

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
![s33](https://user-images.githubusercontent.com/84433855/175003296-30483516-2be1-40ce-b2de-2a97de133ef8.png)

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
![s44](https://user-images.githubusercontent.com/84433855/175003407-68d0b1ee-e6b3-4cb5-afae-813413280b0a.png)

## Compatibility
Supports OpenHarmony API version 8

# Reference:

Design by : Pranav Singh
