struct DensePolynomial<N> {
  coeffs: [Field; N],
}

impl DensePolynomial {
  fn mul(self, other: DensePolynomial<M>) -> pub DensePolynomial<N+M-1> {
    let mut coeffs = [0; N+M-1];
    for i in 0..N {
      for j in 0..M {
        coeffs[i + j] += self.coeffs[i] * other.coeffs[j];
      }
    }
    DensePolynomial { coeffs }
  }
}