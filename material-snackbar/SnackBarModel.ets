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

export enum SnackBarType {
  SimpleSnack,
  OneLineActionSnack,
  TwoLineActionSnack,
  BigTwoLineActionSnack
}

export class SnackBarModel {
  private snackBackColor: string | ResourceColor = "#9400D3"
  private snackBarText: string
  private snackTextColor: string | ResourceColor = "#9400D3"
  private opacity: number = 1
  private buttonText: string
  private buttonTextColor: string = "#9400D3"
  private snackType: SnackBarType
  private show: Visibility = Visibility.Visible
  private timer: number = 4000
  constructor(value: SnackBarType) {
    if (value != null || value != undefined) this.snackType = value
    else this.error('snackType')
  }

  error(msg: string) {
    console.error('Undefined : ' + msg + ' is a mandatory attribute')
  }

  setSnackBackColor(value: string | ResourceColor): SnackBarModel {
    if (value != null || value != undefined ) this.snackBackColor = value
    return this
  }

  getSnackBackColor(): string | ResourceColor {
    if (this.snackBackColor == null || this.snackBackColor == undefined) this.error('snackBackColor')
    return this.snackBackColor
  }

  setSnackBarText(value: string): SnackBarModel{
    if (value != null || value != undefined ) this.snackBarText = value
    return this
  }

  getSnackBarText(): string {
    if (this.snackBarText == null || this.snackBarText == undefined) this.error('snackBarText')
    return this.snackBarText
  }

  setSnackTextColor(value: string | ResourceColor): SnackBarModel{
    if (value != null || value != undefined ) this.snackTextColor = value
    return this
  }

  getSnackTextColor(): string | ResourceColor{
    if (this.snackTextColor == null || this.snackTextColor == undefined) this.error('snackTextColor')
    return this.snackTextColor
  }

  setOpacity(value: number): SnackBarModel{
    if (value != null || value != undefined ) this.opacity = value
    return this
  }

  getOpacity(): number{
    if (this.opacity == null || this.opacity == undefined) this.error('opacity')
    return this.opacity
  }

  setButtonText(value: string): SnackBarModel{
    if (value != null || value != undefined ) this.buttonText = value
    return this
  }

  getButtonText(): string{
    if ((this.buttonText == null || this.buttonText == undefined) && this.getSnackType()!=SnackBarType.SimpleSnack) this.error('buttonText')
    return this.buttonText
  }

  setButtonTextColor(value: string): SnackBarModel{
    if (value != null || value != undefined ) this.buttonTextColor = value
    return this
  }

  getButtonTextColor(): string{
    if (this.buttonTextColor == null || this.buttonTextColor == undefined) this.error('buttonTextColor')
    return this.buttonTextColor
  }

  setSnackType(value: SnackBarType): SnackBarModel{
    if (value != null || value != undefined ) this.snackType = value
    return this
  }

  getSnackType(): SnackBarType{
    if (this.snackType == null || this.snackType == undefined) this.error('snackType')
    return this.snackType
  }

  setShow(value: Visibility): SnackBarModel{
    if (value != null || value != undefined ) this.show = value
    return this
  }

  getShow(): Visibility{
    if (this.show == null || this.show == undefined) this.error('show')
    return this.show
  }

  setTimer(value: number): SnackBarModel{
    if (value != null || value != undefined ) this.timer = value
    return this
  }

  getTimer(): number {
    if (this.timer == null || this.timer == undefined) this.error('timer')
    return this.timer
  }
}