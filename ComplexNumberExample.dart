#import('dart:dom');
#source('ComplexNumber.dart');
#source('ComplexNumberImpl.dart');

class ComplexNumberExample {

  ComplexNumberExample() {
  }

  void run() {
    
    ComplexNumber cn = new ComplexNumberImpl(1,1);
    write("real = ${cn.real}");
    write("imaginary = ${cn.imaginary}");
    write("cn" + cn.toString());
    
    ComplexNumber c = new ComplexNumberImpl(2,3);
    ComplexNumber cc = new ComplexNumberImpl(2,-3);
    ComplexNumber ccc = c.multiply(c,cc); 
    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(3,-5);
    cc = new ComplexNumberImpl(6,7);
    ccc = c + cc; 
    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    ccc = c - cc; 
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(2,3);
    cc = new ComplexNumberImpl(4,7);
    ccc = c * cc; 
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(2,-1);
    cc = new ComplexNumberImpl(3,2);
    ccc = c / cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(-3,4);
    cc = new ComplexNumberImpl(2,-5);
    ccc = c + cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(0,3);
    cc = new ComplexNumberImpl(2,-4);
    ccc = c - cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(2,-7);
    cc = new ComplexNumberImpl(3,4);
    ccc = c * cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(1,1);
    cc = new ComplexNumberImpl(2,-3);
    ccc = c * cc;    
    write("ccc.real = ${ccc.real}");
    write("ccc.imaginary = ${ccc.imaginary}");
    write("ccc" + ccc.toString());
    
    c = new ComplexNumberImpl(0,-4);
    cc = new ComplexNumberImpl(0,4);
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
