function screen_shake(_time, _magnitude, _fade)
{
   with (Camera)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}