class Quadrado
{
  float x, y, tamanhoxy, velocidade;
  boolean indo = true, voltar = false;
  color cor;

  Quadrado(float tamanho)
  {
    x = width;
    cor =color((int)random(0, 256), (int)random(0, 256), (int)random(0, 256));
    y = random (height);
    tamanhoxy = tamanho ;
    velocidade = random (3, 6);
  }

  void exibir ()
  {
    noStroke ();
    fill (cor);
    rect (x, y, tamanhoxy, tamanhoxy);
  }

  void recomeçar ()
  {
    if (x <= 0 - tamanhoxy)
    {
      x = width;
    }
  }

  void andar ()
  {
    x = x - velocidade;
  }
}
