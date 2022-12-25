# Main code build rules

src-y += sched.c command.c basecmd.c debugcmds.c
src-$(CONFIG_HAVE_GPIO) += initial_pins.c gpiocmds.c stepper.c \
    trsync.c
src-$(CONFIG_HAVE_GPIO_ADC) += adccmds.c
src-$(CONFIG_HAVE_GPIO_SPI) += spicmds.c spi_software.c sensor_adxl345.c

