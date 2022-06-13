# Material_UI_Component_Snackbar

Material component Snackbar design in OpenHarmony.

## Download & Install

Install using npm

```npm install https://github.com/Applib-OpenHarmony/Material_UI_Snackbar```

Details about OpenHarmony NPM environment configuration, see at [here](https://gitee.com/openharmony-tpc/docs/blob/master/OpenHarmony_npm_usage.md)

## Usage Instructions

Import all components at once

```ets
import { SimpleSnack, OneLineActionSnack, TwoLineActionSnack, BigTwoLineActionSnack
}  from "@ohos/snackbar"
```

OR Use respective components to create below snackbars as per the need.

## Snackbar Designs: 

## Snackbar with only message
```ets
import { SimpleSnack
}  from "@ohos/snackbar"
```
```ets
SimpleSnack({ message: this.message1 })
```
![s1](https://user-images.githubusercontent.com/84433855/173008655-0f4d33ec-dcf0-4e1c-a9a7-7b48fa0006a2.png)

## Snackbar with one line message plus the action button
```ets
import { OneLineActionSnack
}  from "@ohos/snackbar"
```
```ets
OneLineActionSnack({
            message: this.message2,
            button_text: this.button_text2,
            func: this.SnackButtonAction
          });
```
![s2](https://user-images.githubusercontent.com/84433855/173008731-c6df6d51-66cc-4cf0-bc86-57e0b2b60c62.png)

## Snackbar with two line message plus the action button
```ets
import { TwoLineActionSnack
}  from "@ohos/snackbar"
```
```ets
TwoLineActionSnack({
            message: this.message3,
            button_text: this.button_text3,
            func: this.SnackButtonAction
          });
```
![s3](https://user-images.githubusercontent.com/84433855/173008773-43338d25-e5fb-43c0-8405-704fec24db57.png)

## Snackbar with longer two line message plus the longer action button
```ets
import { BigTwoLineActionSnack
}  from "@ohos/snackbar"
```
```ets
BigTwoLineActionSnack({
            message: this.message4,
            button_text: this.button_text4,
            func: this.SnackButtonAction
          });
```         
![s4](https://user-images.githubusercontent.com/84433855/173008958-96d9c4b5-893c-4213-9143-83e11898741e.png)

## Compatibility
Supports OpenHarmony API version 8

# Reference:

Design by : Pranav Singh
