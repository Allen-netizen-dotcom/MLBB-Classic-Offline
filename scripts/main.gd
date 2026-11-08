extends Node2D

var player_pos = Vector2(300, 400)
var enemies = []
var allies = []
var score = 0

func _ready():
    for i in range(5):
        allies.append(Vector2(180 + i * 65, 220))
        enemies.append(Vector2(500 + i * 55, 550))

func _process(delta):
    queue_redraw()

func _draw():
    var size = get_viewport_rect().size

    draw_rect(Rect2(Vector2.ZERO, size), Color("#376b43"))
    draw_rect(Rect2(0, 300, size.x, 100), Color("#a28b65"))

    draw_circle(player_pos, 25, Color("#36a9ff"))

    for ally in allies:
        draw_circle(ally, 19, Color("#55bbff"))

    for enemy in enemies:
        draw_circle(enemy, 19, Color("#ef5555"))

    draw_string(
        ThemeDB.fallback_font,
        Vector2(20, 40),
        "CLASSIC 5v5 OFFLINE",
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        24,
        Color.WHITE
    )

    draw_string(
        ThemeDB.fallback_font,
        Vector2(20, 75),
        "Tap anywhere to move",
        HORIZONTAL_ALIGNMENT_LEFT,
        -1,
        18,
        Color.WHITE
    )

func _input(event):
    if event is InputEventScreenTouch and event.pressed:
        player_pos = event.position

    elif event is InputEventMouseButton and event.pressed:
        player_pos = event.position
