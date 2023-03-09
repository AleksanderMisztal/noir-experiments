mod poly;
global N=3;
fn main() -> pub poly::DensePolynomial<3> {
  let a = poly::DensePolynomial { coeffs: [1, 2, 3] };
  let b = poly::DensePolynomial { coeffs: [1, 2, 3] };

  poly::add(a, b)
}
