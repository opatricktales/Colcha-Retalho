void Degrade ()
{
  r = (int)random(0, 256);
  g = (int)random(0, 256);
  b = (int)random(0, 256);

  for (int x = 0; x <= height; x = x + 20)
  {
    fundo = color(r, g, b);
    rect(0, y, width, 20);
    fill (fundo);
    noStroke ();
    r = r - 10;
    g = g - 10;
    b = b - 10;
    y = y + 20;
  }
}
