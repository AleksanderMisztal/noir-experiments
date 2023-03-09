global N=3;

struct DensePolynomial<N> {
  coeffs: [Field; N],
}

fn add<N>(mut a: DensePolynomial<N>, b: DensePolynomial<N>) -> pub DensePolynomial<N> {
  for i in 0..N {
    a.coeffs[i] += b.coeffs[i];
  }
  a
}



// fn mul<N, M>(a: DensePolynomial<N>, b: DensePolynomial<M>) -> pub DensePolynomial<N+M-ONE> {
//   let mut coeffs = [0; N+M-1];
//   for i in 0..N {
//     for j in 0..M {
//       coeffs[i + j] += a.coeffs[i] * b.coeffs[j];
//     }
//   }
//   DensePolynomial { coeffs }
// }