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

import { SimpleSnack, OneLineActionSnack, TwoLineActionSnack, BigTwoLineActionSnack
}  from "@ohos/snackbar"

@Entry
@Component
struct Index {
  message1: string = "Text associated with SimpleSnack"
  message2: string = "Text of OneLineActionSnack"
  message3: string = "Longer text associated with TwoLineActionSnack"
  message4: string = "Longer text associated with BigTwoLineActionSnack"
  button_text2: string = "ACTION"
  button_text3: string = "ACTION"
  button_text4: string = "LONGER ACTION"
  @State btn :number = 0;
  SnackButtonAction: () => void = function () {
    console.log("test")
  }
  build() {
    Stack() {
      Column({ space: 8 }) {
        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("SimpleSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }
          .backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.btn= 1;
          })
        }
        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("OneLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }
          .backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.btn = 2;
          })
        }
        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("TwoLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }
          .backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.btn = 3;
          })
        }
        Column() {
          Button({ type: ButtonType.Capsule, stateEffect: true }) {
            Text("BigTwoLineActionSnack").fontColor(Color.Black).fontSize(25).padding(7)
          }.backgroundColor("#00FFEF").margin(10)
          .onClick(() => {
            this.btn = 4;
          })
        }
      }
      if (this.btn === 1) {
        SimpleSnack({ message: this.message1 })
      }
      if (this.btn === 2) {
        OneLineActionSnack({
          message: this.message2,
          button_text: this.button_text2,
          func: this.SnackButtonAction
        });
      }
      if (this.btn===3) {
        TwoLineActionSnack({
          message: this.message3,
          button_text: this.button_text3,
          func: this.SnackButtonAction
        });
      }
      if (this.btn===4) {
        BigTwoLineActionSnack({
          message: this.message4,
          button_text: this.button_text4,
          func: this.SnackButtonAction
        });
      }
    }
    .width("100%")
    .alignContent(Alignment.Top)
  }
}