 #!/bin/bash -x
#qmk compile

while read file; do
    # Move the file to <b.rel>
    /home/huy/sdcc-4.3.0-amd64-unknown-linux2.5/sdcc-4.3.0/bin/sdas8051 -plosgffw "${file%.asm}.rel" "$file.mod"
done < asmlist

sdcc --verbose .build/obj_libra_mini_test_default/platforms/mcs51/bootloaders/ch55xbl.rel .build/obj_libra_mini_test_default/platforms/mcs51/gpio.rel .build/obj_libra_mini_test_default/.build/obj_libra_mini_test_default/src/default_keyboard.rel .build/obj_libra_mini_test_default/quantum/keymap_introspection.rel .build/obj_libra_mini_test_default/quantum/quantum.rel .build/obj_libra_mini_test_default/quantum/bitwise.rel .build/obj_libra_mini_test_default/quantum/led.rel .build/obj_libra_mini_test_default/quantum/action.rel .build/obj_libra_mini_test_default/quantum/action_layer.rel .build/obj_libra_mini_test_default/quantum/action_tapping.rel .build/obj_libra_mini_test_default/quantum/action_util.rel .build/obj_libra_mini_test_default/quantum/eeconfig.rel .build/obj_libra_mini_test_default/quantum/keyboard.rel .build/obj_libra_mini_test_default/quantum/keymap_common.rel .build/obj_libra_mini_test_default/quantum/keycode_config.rel .build/obj_libra_mini_test_default/quantum/sync_timer.rel .build/obj_libra_mini_test_default/quantum/logging/debug.rel .build/obj_libra_mini_test_default/quantum/logging/sendchar.rel .build/obj_libra_mini_test_default/quantum/logging/print.rel .build/obj_libra_mini_test_default/quantum/bootmagic/magic.rel .build/obj_libra_mini_test_default/quantum/matrix_common.rel .build/obj_libra_mini_test_default/quantum/matrix.rel .build/obj_libra_mini_test_default/quantum/debounce/sym_defer_g.rel .build/obj_libra_mini_test_default/quantum/main.rel .build/obj_libra_mini_test_default/eeprom_driver.rel .build/obj_libra_mini_test_default/eeprom_transient.rel .build/obj_libra_mini_test_default/quantum/send_string/send_string.rel .build/obj_libra_mini_test_default/protocol/host.rel .build/obj_libra_mini_test_default/protocol/report.rel .build/obj_libra_mini_test_default/protocol/usb_device_state.rel .build/obj_libra_mini_test_default/protocol/usb_util.rel .build/obj_libra_mini_test_default/platforms/suspend.rel .build/obj_libra_mini_test_default/platforms/synchronization_util.rel .build/obj_libra_mini_test_default/platforms/timer.rel .build/obj_libra_mini_test_default/platforms/mcs51/hardware_id.rel .build/obj_libra_mini_test_default/platforms/mcs51/platform.rel .build/obj_libra_mini_test_default/platforms/mcs51/suspend.rel .build/obj_libra_mini_test_default/platforms/mcs51/timer.rel .build/obj_libra_mini_test_default/ch554.rel .build/obj_libra_mini_test_default/usb_descriptor.rel .build/obj_libra_mini_test_default/lib/ch554/CH552/template/include/delay.rel .build/obj_libra_mini_test_default/protocol/ch554/usb_handler.rel .build/obj_libra_mini_test_default/protocol/ch554/usb_util.rel -o libra_mini_test_default.ihx 

objcopy -I ihex -O binary libra_mini_test_default.ihx libra_mini_test_default.bin