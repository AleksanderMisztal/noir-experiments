mod poly;

fn main() {
  let a = DensePolynomial { coeffs: [1, 2, 3] };
  let b = DensePolynomial { coeffs: [1, 2, 3] };

  a.mul(b)
}