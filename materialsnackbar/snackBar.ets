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

import { SnackBarModel, SnackBarType } from '@ohos/materialsnackbar'

@Component
export struct MaterialSnackBar {
  @State obj: SnackBarModel = new SnackBarModel(SnackBarType.SimpleSnack);
  action: () => void ;
  errorMessage()
  {
    console.error("getting 1 arguments instead of 2,please also pass function associated with the action in MaterialSnackBar")
  }
  build() {
    Column() {
      if (this.obj.getSnackType() == SnackBarType.SimpleSnack && (this.obj.getSnackBarText() != null || this.obj.getSnackBarText() != undefined)) {
        Flex({ direction: FlexDirection.ColumnReverse, alignItems: ItemAlign.Center }) {
          Row() {
            Text(this.obj.getSnackBarText())
              .fontColor(this.obj.getSnackTextColor())
              .padding({ left: 16, right: 16 })
              .fontSize(15)
          }
          .backgroundColor(this.obj.getSnackBackColor())
          .height(48)
          .width('90%')
          .onAppear(() => {
            setTimeout(() => {
              this.obj.setShow(Visibility.None);
            }, this.obj.getTimer())
          })
          .onDisAppear(() => {
            this.obj.setShow(Visibility.Visible);
          })
        }
        .visibility(this.obj.getShow())
        .opacity(this.obj.getOpacity())
      }

      else if (this.obj.getSnackType() == SnackBarType.OneLineActionSnack && (this.obj.getSnackBarText() != null || this.obj.getSnackBarText() != undefined)&& (this.obj.getButtonText() != null || this.obj.getButtonText() != undefined )) {
        Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
          Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
            Text(this.obj.getSnackBarText())
              .fontColor(this.obj.getSnackTextColor())
              .padding({ left: 16 })
              .fontSize(15)
            Button(this.obj.getButtonText(), { type: ButtonType.Normal, stateEffect: true })
              .fontColor(this.obj.getButtonTextColor())
              .backgroundColor(this.obj.getSnackBackColor())
              .width(100)
              .fontSize(18)
              .margin({ left: 8, right: 8, top: 6, bottom: 6 })
              .onClick(() => {
                if((this.action!=null||this.action!=undefined))
                this.action()
                else this.errorMessage()
                this.obj.setShow(Visibility.None)
              })
          }
          .backgroundColor(this.obj.getSnackBackColor())
          .height(48)
          .onAppear(() => {
            setTimeout(() => {
              this.obj.setShow(Visibility.None);
            }, this.obj.getTimer())
          })
          .onDisAppear(() => {
            this.obj.setShow(Visibility.Visible)
          })
        }
        .width(344)
        .visibility(this.obj.getShow())
        .opacity(this.obj.getOpacity())
      }

      else if (this.obj.getSnackType() == SnackBarType.TwoLineActionSnack && (this.obj.getSnackBarText() != null || this.obj.getSnackBarText() != undefined)&& (this.obj.getButtonText() != null || this.obj.getButtonText() != undefined )) {
        Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
          Row() {
            Column() {
              Text(this.obj.getSnackBarText())
                .fontColor(this.obj.getSnackTextColor())
                .fontSize(15)
                .padding({ left: 16 })
            }
            .alignItems(HorizontalAlign.Start)
            .width(220)

            Button(this.obj.getButtonText(), { type: ButtonType.Normal, stateEffect: true })
              .fontColor(this.obj.getButtonTextColor())
              .backgroundColor(this.obj.getSnackBackColor())
              .margin({ left: 8, right: 8, top: 16, bottom: 16 })
              .width(100)
              .fontSize(18)
              .onClick(() => {
                if((this.action!=null||this.action!=undefined))
                this.action()
                else this.errorMessage()
                this.obj.setShow(Visibility.None)
              })
          }
          .height(68)
          .backgroundColor(this.obj.getSnackBackColor())
          .onAppear(() => {
            setTimeout(() => {
              this.obj.setShow(Visibility.None);
            }, this.obj.getTimer())
          })
          .onDisAppear(() => {
            this.obj.setShow(Visibility.Visible);
          })
        }
        .visibility(this.obj.getShow())
        .opacity(this.obj.getOpacity())
      }

      else if (this.obj.getSnackType() == SnackBarType.BigTwoLineActionSnack && (this.obj.getSnackBarText() != null || this.obj.getSnackBarText() != undefined)&& (this.obj.getButtonText() != null || this.obj.getButtonText() != undefined )) {
        Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
          Column() {
            Column() {
              Text(this.obj.getSnackBarText())
                .textOverflow({ overflow: TextOverflow.None })
                .textAlign(TextAlign.Start)
                .fontColor(this.obj.getSnackTextColor())
                .fontSize(15)
                .margin({ left: 16, right: 16, top: 15 })
            }.width("100%").alignItems(HorizontalAlign.Start)

            Column() {
              Column() {
                Button({ type: ButtonType.Normal, stateEffect: true }) {
                  Text(this.obj.getButtonText())
                    .fontColor(this.obj.getButtonTextColor())
                    .fontSize(18)
                }
                .backgroundColor(this.obj.getSnackBackColor())
                .margin({ right: 8, bottom: 8 })
                .padding({ left: 8, right: 8, bottom: 8 })
                .width(200)
                .height(30)
                .onClick(() => {
                  if((this.action!=null||this.action!=undefined))
                  this.action()
                  else this.errorMessage()
                  this.obj.setShow(Visibility.None)
                })
              }
              .alignItems(HorizontalAlign.End)
              .backgroundColor(this.obj.getSnackBackColor())
              .width("100%")
              .margin({ top: 18 })
            }
          }
          .height(100)
          .backgroundColor(this.obj.getSnackBackColor())
          .width("90%")
          .onAppear(() => {
            setTimeout(() => {
              this.obj.setShow(Visibility.None);
            }, this.obj.getTimer())
          })
          .onDisAppear(() => {
            this.obj.setShow(Visibility.Visible);
          })
        }
        .visibility(this.obj.getShow())
        .opacity(this.obj.getOpacity())
      }
    }
    .width('100%')
    .margin({ bottom: 15 })
  }
}

export { SnackBarModel, SnackBarType } from "./SnackBarModel"

