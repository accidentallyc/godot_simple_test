extends CanvasLayer

@export var container:Control

var _runner

var ready_future:Future = Future.new()

func _ready() -> void:
    ready_future.resolve(true)

func add_block(block:Control):
    container.add_block.call_deferred(block)


func _on_failled_button_toggled(toggled_on):
    _runner._should_show_passed_tests = not(toggled_on)
    _runner.on_toggle_show_passed_tests.emit()
