/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { MaterialSnackBar,
  SnackBarModel, SnackBarType
}  from "@ohos/materialsnackbar"

@Entry
@Component
struct Index {
  @State isShow1: boolean = false
  @State isShow2: boolean = false
  @State isShow3: boolean = false
  @State isShow4: boolean = false
  private snackBarModel1: SnackBarModel = new SnackBarModel(SnackBarType.SimpleSnack)
  private snackBarModel2: SnackBarModel = new SnackBarModel(SnackBarType.OneLineActionSnack)
  private snackBarModel3: SnackBarModel = new SnackBarModel(SnackBarType.TwoLineActionSnack)
  private snackBarModel4: SnackBarModel = new SnackBarModel(SnackBarType.BigTwoLineActionSnack)
  SnackButtonAction: () => void = function () {
    console.log("test")
  }

  aboutToAppear() {
    this.snackBarModel1.setSnackBarText("Text associated with SimpleSnack")
    this.snackBarModel1.setSnackTextColor("#ffffff")
    this.snackBarModel1.setSnackBackColor("#9400D3")
    this.snackBarModel1.setOpacity(1)
    this.snackBarModel1.setTimer(4000)

    this.snackBarModel2.setSnackBarText("Text of OneLineActionSnack")
    this.snackBarModel2.setSnackTextColor("#ffffff")
    this.snackBarModel2.setSnackBackColor("#9400D3")
    this.snackBarModel2.setOpacity(1)
    this.snackBarModel2.setTimer(4000)
    this.snackBarModel2.setButtonText("ACTION")
    this.snackBarModel2.setButtonTextColor("#ECD540")

    this.snackBarModel3.setSnackBarText("Longer text associated with TwoLineActionSnack")
    this.snackBarModel3.setSnackTextColor("#ffffff")
    this.snackBarModel3.setSnackBackColor("#9400D3")
    this.snackBarModel3.setOpacity(1)
    this.snackBarModel3.setTimer(4000)
    this.snackBarModel3.setButtonText("ACTION")
    this.snackBarModel3.setButtonTextColor("#ECD540")

    this.snackBarModel4.setSnackBarText("Longer text associated with BigTwoLineActionSnack")
    this.snackBarModel4.setSnackTextColor("#ffffff")
    this.snackBarModel4.setSnackBackColor("#9400D3")
    this.snackBarModel4.setOpacity(1)
    this.snackBarModel4.setTimer(4000)
    this.snackBarModel4.setButtonText("LONGER ACTION")
    this.snackBarModel4.setButtonTextColor("#ECD540")
  }

  build() {
    Stack() {
      Column({ space: 8 }) {
        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("SimpleSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }.backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.isShow1 = !this.isShow1
            this.isShow2 = false
            this.isShow3 = false
            this.isShow4 = false
          })
        }

        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("OneLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }.backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.isShow2 = !this.isShow2
            this.isShow1 = false
            this.isShow3 = false
            this.isShow4 = false
          })
        }

        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("TwoLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }.backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.isShow3 = !this.isShow3
            this.isShow2 = false
            this.isShow1 = false
            this.isShow4 = false
          })
        }

        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("BigTwoLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }.backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.isShow4 = !this.isShow4
            this.isShow2 = false
            this.isShow3 = false
            this.isShow1 = false
          })
        }
      }

      if (this.isShow1) {
        MaterialSnackBar({
          obj: this.snackBarModel1
        })
      }
      if (this.isShow2) {
        MaterialSnackBar({
          obj: this.snackBarModel2,
          action: this.SnackButtonAction
        })
      }
      if (this.isShow3) {
        MaterialSnackBar({
          obj: this.snackBarModel3,
          action: this.SnackButtonAction
        })
      }
      if (this.isShow4) {
        MaterialSnackBar({
          obj: this.snackBarModel4,
          action: this.SnackButtonAction
        })
      }
    }
    .width("100%")
    .alignContent(Alignment.Top)
  }
}