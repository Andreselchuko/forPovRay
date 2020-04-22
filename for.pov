

#include "colors.inc" //Para incluir nombres de colores

#declare avance_esfera=5*clock;
#declare avance_camara=7*clock;

//Cámara
//Me permite colocar una cámara y aputarla a una localización específica.
camera{
    //Dónde se encuentra la cámara con coordenadas <x,y,z>
    location <0,1,-10>
    //A donde apunta con coordenadas <x,y,z>
    look_at <0+avance_camara,2,5>
    }

//Fuente de luz
  light_source {
    <2, 10, -3>
    color White
    area_light <5, 0, 0>, <0, 0, 5>, 5, 5
    adaptive 1
    jitter
  }
  
//Esfera

  //For para multiplicar la esfera en x  
  //Rordar que for(variableAOcupar, ValorInicial, ValorFinal, Incremento)
#for (Posicion_x,0,10,2)//Las esferas aparecera separadas, es decir incrementara de dos en dos.
  //Poniendo un circulo en cada dos espacios. Generando 6 esferas
	//For para multiplicar la esfera en y
	#for (Posicion_y,0,6,1)//La esfera es multipicada y su incremento es de 1 entregandome 7 esferas en el eje y.
sphere{
    //Localización y radio
    <-5+Posicion_x+avance_esfera,Posicion_y,0>, .5
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgb<0,0,1>
        }
	//El acabado final y representa una propiedad de la reflexión de la luz
        finish{
            phong 1         
        }   
    }
}
#end //Para for en y
#end //Para for en x


//Plano 
  plane {
    y, -1
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }

//Plano 
  plane {
    x, -10
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
  
 //Plano 
  plane {
    z, 10
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }