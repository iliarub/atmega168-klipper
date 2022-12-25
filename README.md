# atmega168-klipper

В основном всё по этому гайду: https://nate15329.com/klipper-input-shaper-w-arduino-nano/
Отличия:
* Микроконтроллер `atmega168`
* команда прошивки ` avrdude -v -patmega168 -c arduino -P /dev/ttyUSB0 -b115200 -D -Uflash:w:out/klipper.elf.hex:i`

Единственная проблема - скетч не влезает. Никак.
Для того, что бы он поместился Можно поставить optiboot загрузчик, либо заменить в Makefile в корне klipper `-02` на `-0s`.
Обязательно порезать Makefile в /klipper/src/. Примерный вид: https://github.com/iliarub/atmega168-klipper/blob/main/Makefile

Проверка: `avr-size ./klipper/out/klipper.elf.hex`
