import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Definicion extends StatelessWidget {
  static const _url =
      "http://www.odonto.unam.mx/sites/default/files/inline-files/O_preventiva.pdf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Pasos para la aplicación de selladores de fosetas y fisuras"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "En el siguiente apartado se describe la correcta técnica de aplicación de selladores de fosetas y fisuras.",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                    """Técnica de aplicación de selladores de fosetas y fisuras
        El propósito del uso de selladores de fosetas y fisuras es la de proveer una barrera física en las fosetas y fisuras de los dientes, para evitar la adhesión bacteriana que favorece el desarrollo de caries.
        Instrumentos
        Loseta de vidrio o caja ámbar.
        Grapas para aislar.
        Arco de Young.
        Dique de hule.
        Perforadora de dique.
        Lámpara de fotopolimerización.
        Punta de jeringa triple.
        
        
        Materiales
        Ácido grabador ortofosfórico al 37%
        Pincel fino o microbrush
        Sellador de fosetas y fisuras fotopolimerizable
        Papel de articular
        Piedra de Arkansas (forma de flama)
        Eyector
        Pasta para profilaxis o pasta dental.
        
        
        
        Indicaciones
        Dientes con surcos, fosetas y fisuras profundos o retentivos de placa bacteriana.
        
        Pacientes en edad escolar con riesgo a caries preferentemente de 6 a 14 años.
        
        Contraindicaciones
        Caries en cualquier grado.
        Dientes donde no se observe la cara oclusal completa.
        
        Descripción del procedimiento
        
        Identificar los dientes que puedan requerir este procedimiento recuerda que deben ser dientes que tengan fosetas y fisuras profundas.
        
        Perforar el dique con la perforadora colocada en el agujero número 3 en el caso de seleccionar un premolar y en el agujero número 4 si es un molar.
        
        Seleccionar la grapa que mejor se ajuste al diente, puede ser 7, 8A, 13A, 14A etc.
        
        Realizar aislamiento absoluto del diente correspondiente colocando grapa dique y arco al mismo tiempo (Recuerda amarrar la grapa con hilo dental al arco de Young y liberar las alas de la misma).
        
        Realizar el pulido dental sin pastilla reveladora del diente donde se trabajará, Elimina los restos de pasta profiláctica con la punta de jeringa triple con un lavado de aproximadamente 40 segundos y después seca perfectamente con el aire de la jeringa triple.
        
        Coloca ácido grabador solo sobre la cara oclusal, específicamente sobre fosetas y fisuras y déjalo reposar por 45 segundos vuelve a lavar por 45 segundos y seca.
        
        Coloca el sellador de fosetas y fisuras con un microbrush sobre los surcos y defectos estructurales del diente, asegúrate de que no queden burbujas de aire.
        
        Polimeriza el sellador durante 40 segundos.
        
        Retira el aislamiento y verifica que no existan interferencias oclusales ni retenciones. En el caso de que existan localiza las interferencias oclusales con ayuda del papel de articular y desgasta con la piedra de Arkansas.
        
        Recomendaciones
        
        Los sellados deben mantener su retención en el diente y su adecuado sellado marginal para resultar efectivos. La pérdida parcial del sellado llevaría a un incremento en el riesgo de caries, por lo que resulta preciso su monitorización y mantenimiento periódico.
        
        El grabado de la superficie se realizará según las instrucciones del fabricante y se recomienda el uso de agentes adhesivos para mejorar la adhesión del sellador y minimizar la microfiltración.
        """),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage('assets/images/selladores.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextButton(
                  child: Text("Mas informacion"),
                  onPressed: _launchURL,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
