#import('dart:dom');
#source('ComplexNumber.dart');
#source('ComplexNumberImlp.dart');

class ComplexNumberExample {

  ComplexNumberExample() {
  }

  void run() {
    
    ComplexNumber cn = new ComplexNumberImlp(1,1);
    write("real = ${cn.real}");
    write("imaginary = ${cn.imaginary}");
    write("cn" + cn.toString());
    
    ComplexNumber c = new ComplexNumberImlp(2,3);
    ComplexNumber cc = new ComplexNumberImlp(2,-3);
    ComplexNumber ccc = c.multiply(c,cc); 
    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(3,-5);
    cc = new ComplexNumberImlp(6,7);
    ccc = c + cc; 
    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    ccc = c - cc; 
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(2,3);
    cc = new ComplexNumberImlp(4,7);
    ccc = c * cc; 
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(2,-1);
    cc = new ComplexNumberImlp(3,2);
    ccc = c / cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(-3,4);
    cc = new ComplexNumberImlp(2,-5);
    ccc = c + cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(0,3);
    cc = new ComplexNumberImlp(2,-4);
    ccc = c - cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(2,-7);
    cc = new ComplexNumberImlp(3,4);
    ccc = c * cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(1,1);
    cc = new ComplexNumberImlp(2,-3);
    ccc = c * cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImlp(0,-4);
    cc = new ComplexNumberImlp(0,4);
    ccc = c * cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
  }

  void write(String message) {
    // the DOM library defines a global "window" variable
    HTMLDocument doc = window.document;
    HTMLParagraphElement p = doc.createElement('p');
    p.textContent = message;
    doc.body.appendChild(p);
  }
}

void main() {
  new ComplexNumberExample().run();
}
