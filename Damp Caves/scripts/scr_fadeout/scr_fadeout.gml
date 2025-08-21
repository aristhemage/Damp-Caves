/// @function scr_fadeout(spd)
/// @param spd   The speed to fade out (e.g., 0.05)
///
/// Call this in the Step Event of the object you want to fade out.

function scr_fadeout(_spd)
{
    // Reduce alpha
    image_alpha -= _spd;

    // Clamp so it doesn’t go below 0
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
}
