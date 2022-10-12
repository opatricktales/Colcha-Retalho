Quadrado [] quadrados = new Quadrado [1000];

color fundo;
float y = -20, r = 25, g = 256, b = 256;
boolean ativar = false;
int aparecendo = 999, tempo = 0;
PImage telaInicial;


void setup ()
{
  size(720, 360);
  smooth ();

  telaInicial = loadImage("telaInicial.jpg");

  for (int x = 0; x < quadrados.length; x++)
  {
    quadrados[x] = new Quadrado(random(50, 100));
  }
}

void draw()
{
  if (tempo == 0)
  {
    telaInicial.resize (width, height);
    image (telaInicial, 0, 0);
  } 
  else if (tempo >= 100 && ativar != true)
  {
    Degrade ();
  } 
  else if (tempo >= 100 && ativar != false)
  {
    background (255);

    for (int x = 0; x < aparecendo; x++)
    {
      quadrados[x].exibir();
      quadrados[x].recomeçar();
      quadrados[x].andar();
    }
  }
  tempo = tempo + 1;
}

void mousePressed ()
{
  if (ativar == false)
  {
    ativar = true;
  } else if (ativar == true)
  {
    ativar = false;
  }
  loop ();
}
