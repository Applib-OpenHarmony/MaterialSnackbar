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
    this.snackType = value
  }

  setSnackBackColor(value: string | ResourceColor): SnackBarModel {
    this.snackBackColor = value
    return this
  }

  getSnackBackColor(): string | ResourceColor {
    return this.snackBackColor
  }

  setSnackBarText(value: string): SnackBarModel{
    this.snackBarText = value
    return this
  }

  getSnackBarText(): string {
    return this.snackBarText
  }

  setSnackTextColor(value: string | ResourceColor): SnackBarModel{
    this.snackTextColor = value
    return this
  }

  getSnackTextColor(): string | ResourceColor{
    return this.snackTextColor
  }

  setOpacity(value: number): SnackBarModel{
    this.opacity = value
    return this
  }

  getOpacity(): number{
    return this.opacity
  }

  setButtonText(value: string): SnackBarModel{
    this.buttonText = value
    return this
  }

  getButtonText(): string{
    return this.buttonText
  }

  setButtonTextColor(value: string): SnackBarModel{
    this.buttonTextColor = value
    return this
  }

  getButtonTextColor(): string{
    return this.buttonTextColor
  }

  setSnackType(value: SnackBarType): SnackBarModel{
    this.snackType = value
    return this
  }

  getSnackType(): SnackBarType{
    return this.snackType
  }

  setShow(value: Visibility): SnackBarModel{
    this.show = value
    return this
  }

  getShow(): Visibility{
    return this.show
  }

  setTimer(value: number): SnackBarModel{
    this.timer = value
    return this
  }

  getTimer(): number {
    return this.timer
  }
}