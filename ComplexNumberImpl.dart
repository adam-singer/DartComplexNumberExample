class ComplexNumberImpl implements ComplexNumber {
  double r;
  double i;
  
  ComplexNumberImpl([this.r=0,this.i=0]);
  
  String toString() {
    StringBuffer sb = new StringBuffer();
    
    sb.add("[");
    if (r!=0) {
      sb.add("${r}");
    }
    
    if (i>0) {
      if (i==1) {
        sb.add("+i");
      } else {
        sb.add("+${i}i");
      }
    } else if (i < 0) {
      if (i==-1) {
        sb.add("-i");
      } else {
        sb.add("${i}i");
      }
    } 
    
    sb.add("]");
    
    return sb.toString();
  }
  
  double get real() => r;
  double get imaginary() => i;
  double get magnitude() => Math.sqrt(r*r + i*i);
  
  ComplexNumber operator +(ComplexNumber other) {
    return add(this, other);
  }
  
  ComplexNumber add(ComplexNumber complexNumber1, ComplexNumber complexNumber2) {
    double rr = complexNumber1.real+complexNumber2.real;
    double ii = complexNumber1.imaginary+complexNumber2.imaginary;
    return new ComplexNumberImpl(rr,ii);
  }
  
  ComplexNumber operator -(ComplexNumber other) { 
    return subtract(this, other);
  }
  
  ComplexNumber subtract(ComplexNumber complexNumber1, ComplexNumber complexNumber2) {
    double rr = complexNumber1.real-complexNumber2.real;
    double ii = complexNumber1.imaginary-complexNumber2.imaginary;
    return new ComplexNumberImpl(rr,ii);
  }
  
  ComplexNumber operator *(ComplexNumber other) {
    return multiply(this, other);
  }
  
  ComplexNumber multiply(ComplexNumber complexNumber1, ComplexNumber complexNumber2) { 
    double rr = complexNumber1.real*complexNumber2.real - complexNumber1.imaginary*complexNumber2.imaginary;
    double ii = complexNumber1.real*complexNumber2.imaginary + complexNumber1.imaginary*complexNumber2.real;
    
    return new ComplexNumberImpl(rr,ii);
  }
  
  ComplexNumber operator /(ComplexNumber other) { 
    return divide(this, other);
  }
  
  ComplexNumber divide(ComplexNumber complexNumber1, ComplexNumber complexNumber2) { 
  
    double rr =
      (complexNumber1.real*complexNumber2.real + complexNumber1.imaginary*complexNumber2.imaginary)
      /
      (complexNumber2.real*complexNumber2.real + complexNumber2.imaginary*complexNumber2.imaginary);
    
    double ii =
      (complexNumber1.imaginary*complexNumber2.real - complexNumber1.real*complexNumber2.imaginary)
      /
      (complexNumber2.real*complexNumber2.real + complexNumber2.imaginary*complexNumber2.imaginary);
    
    return new ComplexNumberImpl(rr,ii);
  }
  
  bool operator ==(other) {
    if (!(other is ComplexNumber)) {
      return false; 
    }
    
    return this.r == other.real && this.i == other.imaginary;
  }
}
