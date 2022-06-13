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

@Component
export struct SimpleSnack {
  @State message: string = "message";
  @State show: Visibility = Visibility.Visible;
  build() {
    Column() {
      Flex({ direction: FlexDirection.ColumnReverse, alignItems: ItemAlign.Center }) {
        Row() {
          Text(this.message)
            .fontColor("#ffffff")
            .padding({ left: 16, right: 16 })
            .fontSize(15)
        }
        .backgroundColor("#9400D3")
        .height(48)
        .width('90%')
        .onAppear(() => {
          setTimeout(() => {
            this.show = Visibility.None;
          }, 4000)
        })
      }
      .visibility(this.show)
    }
    .width('100%')
    .margin({ bottom: 15 })
  }
}
@Component
export struct OneLineActionSnack {
  @State message: string = "message";
  @State button_text: string = "action";
  @State show: Visibility = Visibility.Visible;
  func: () => void ;
  build() {
    Column() {
      Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
        Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
          Text(this.message)
            .fontColor("#ffffff")
            .padding({ left: 16 })
            .fontSize(15)
          Button(this.button_text,{ type: ButtonType.Normal, stateEffect: true })
            .fontColor("#ECD540")
            .backgroundColor("#9400D3")
            .width(100)
            .fontSize(18)
            .margin({ left: 8, right: 8, top: 6, bottom: 6 })
            .onClick(() => {
              this.func();
              this.show = Visibility.None;
            })
        }
        .backgroundColor("#9400D3")
        .height(48)
        .onAppear(() => {
          setTimeout(() => {
            this.show = Visibility.None;
          }, 4000)
        })
      }
      .width(344)
      .visibility(this.show)
    }
    .width('100%')
    .margin({ bottom: 15 })
  }
}
@Component
export struct TwoLineActionSnack {
  @State message: string = "message";
  @State button_text: string = "action" ;
  @State show: Visibility = Visibility.Visible;
  func: () => void ;
  build() {
    Column() {
      Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
        Row() {
          Column() {
            Text(this.message)
              .fontColor("#ffffff")
              .fontSize(15)
              .padding({ left: 16 })
          }
          .alignItems(HorizontalAlign.Start)
          .width(220)
          Button(this.button_text, { type: ButtonType.Normal, stateEffect: true })
            .fontColor("#ECD540")
            .backgroundColor("#9400D3")
            .margin({ left: 8, right: 8, top: 16, bottom: 16 })
            .width(100)
            .fontSize(18)
            .onClick(() => {
              this.func();
              this.show = Visibility.None;
            })
        }
        .height(68)
        .backgroundColor("#9400D3")
        .onAppear(() => {
          setTimeout(() => {
            this.show = Visibility.None;
          }, 4000)
        })
      }
      .visibility(this.show)
    }
    .width('100%')
    .margin({ bottom: 15 })
  }
}
@Component
export struct BigTwoLineActionSnack {
  @State message: string = "message";
  @State button_text: string = "action";
  @State show: Visibility = Visibility.Visible;
  func: () => void ;
  build() {
    Column() {
      Flex({ direction: FlexDirection.ColumnReverse, justifyContent: FlexAlign.SpaceBetween }) {
        Column() {
          Column() {
            Text(this.message)
              .textOverflow({ overflow: TextOverflow.None })
              .textAlign(TextAlign.Start)
              .fontColor("#ffffff")
              .fontSize(15)
              .margin({ left: 16, right: 16, top: 15 })
          }.width("100%")
          .alignItems(HorizontalAlign.Start)
          Column() {
            Column() {
              Button({ type: ButtonType.Normal, stateEffect: true }) {
                Text(this.button_text)
                  .fontColor("#ECD540")
                  .fontSize(18)
              }
              .backgroundColor("#9400D3")
              .margin({ right: 8, bottom: 8 })
              .padding({ left: 8, right: 8, bottom: 8 })
              .width(200)
              .height(30)
              .onClick(() => {
                this.func();
                this.show = Visibility.None;
              })
            }
            .alignItems(HorizontalAlign.End)
            .backgroundColor("#9400D3")
            .width("100%")
            .margin({ top: 18 })
          }
        }
        .height(100)
        .backgroundColor("#9400D3")
        .width("90%")
        .onAppear(() => {
          setTimeout(() => {
            this.show = Visibility.None;
          }, 4000)
        })
      }
      .visibility(this.show)
    }
    .width('100%')
    .margin({ bottom: 15 })
  }
}