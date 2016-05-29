module Battery = Cordova_battery_status

let on_device_ready () =
  Battery.Event.critical
    (fun t ->
      Jsoo_lib.console_log
        ("Battery level critical: " ^ (string_of_int (Battery.level t)))
    );

  Battery.Event.low
    (fun t ->
      Jsoo_lib.console_log
        ("Battery level low: " ^ (string_of_int (Battery.level t)))
    );

  Battery.Event.status
    (fun t ->
      Jsoo_lib.console_log
        ("Battery level status: " ^ (string_of_int (Battery.level t))
          ^ " and is_plugged: " ^ (string_of_bool (Battery.is_plugged t))
        )
    )

let _ =
  Cordova.Event.device_ready on_device_ready
