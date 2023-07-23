index += 0.35
index2 += 0.1
var yedit = 0
var name = "Peppino"
var charlett = "P"
var desc = "Your pizza should hit the ceiling, NOW!"
if dodraw
{
    scr_getinput()
    var _dvc = obj_inputAssigner.player_input_device[0]
    if (key_jump && _dvc >= 0 && gamepad_button_check_pressed(_dvc, global.key_jumpC) && global.key_jumpC == 32770)
        key_jump = 0
    key_jump = (key_jump || (global.key_start != 13 && keyboard_check_pressed(vk_return)) || (global.key_start != 32 && keyboard_check_pressed(vk_space)) || gamepad_button_check_pressed(obj_inputAssigner.player_input_device[0], gp_face1))
    key_back = (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_return) || gamepad_button_check_pressed(obj_inputAssigner.player_input_device[0], gp_face2) || gamepad_button_check_pressed(obj_inputAssigner.player_input_device[0], gp_start))
    if (char == 0)
    {
        playerspr = spr_player_idle
        palspr = spr_peppalette
        shirtspr = spr_palettedresserdebris
        name = "Peppino"
        desc = "The main protagonist of Pizza Tower."
    }
    if (char == 1)
    {
        playerspr = spr_playerN_idle
        palspr = spr_noisepalette
        shirtspr = spr_palettedresserdebris
        name = "The Noise"
        desc = "The noisiest guy that has ever existed in Pizza Tower."
    }
    if (char == 2)
    {
        yedit -= 12
        playerspr = spr_playerV_idle
        palspr = spr_bossfight_vigipalette
        shirtspr = spr_palettedresserdebris
        name = "The Vigilante"
        desc = "The sheriff of the Western District in the Pizza Tower."
    }
    if (char == 3)
    {
        yedit -= 8
        playerspr = spr_playerOP_idle
        palspr = spr_peppalette
        shirtspr = spr_palettedresserdebris
        name = "Opa-Opa"
        desc = "The protector of the Fantasy Zone in the Pizza Tower."
    }
    if (-obj_player1.key_left2)
    {
        fmod_event_one_shot("event:/sfx/ui/angelmove")
        with (instance_create(x, ((obj_screensizer.actual_height / 2) + yedit), obj_genericpoofeffect))
            depth = (other.depth - 100)
        char--
    }
    if obj_player1.key_right2
    {
        fmod_event_one_shot("event:/sfx/ui/angelmove")
        with (instance_create(x, ((obj_screensizer.actual_height / 2) + yedit), obj_genericpoofeffect))
            depth = (other.depth - 100)
        char++
    }
    var yy = obj_screensizer.actual_height
    var yy2 = (yy / 2)
    var yy3 = (yy - (yy / 4))
    if (char < 0)
        char = topchar
    if (char > topchar)
        char = 0
    draw_set_alpha(0.5)
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0)
    draw_set_alpha(1)
    draw_set_font(lang_get_font("creditsfont"))
    draw_set_halign(fa_center)
    draw_set_valign(fa_bottom)
    draw_text_color(x, yy3, lang_get_value(name), color, color, color, color, 1)
    shader_set(global.Pal_Shader)
    pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, 1, global.palettetexture)
    pal_swap_set(palspr, obj_player1.paletteselect, 0)
    draw_sprite(headspr, index, x, (yy2 + yedit))
    draw_sprite_ext(spr_uparrow, index2, (x - 90), yy2, 1, 1, 90, image_blend, image_alpha)
    draw_sprite_ext(spr_uparrow, index2, (x + 90), yy2, 1, 1, 270, image_blend, image_alpha)
    draw_set_font(lang_get_font("tutorialfont"))
    draw_text_color(x, (yy3 + 52), lang_get_value(desc), c_white, c_white, c_white, c_white, 1)
    pattern_reset()
    shader_reset()
    if key_jump
    {
        started = 2
        choosed = 1
    }
    if key_back
        started = 2
}
