global n_candidates = 3;
global n_voters = 2;

struct Vote {
    user_id: Field,
    vote: [Field; n_candidates],
    signature: Field,
}

struct KeyChange {
    user_id: Field,
    new_key: Field,
    signature: Field,
}

fn main(votes: pub [Field; n_candidates * n_voters]) -> pub Field {
    let mut candidates = [0; n_candidates];
    let mut max = 0;
    let mut max_index = 0;
    for i in 0..n_voters {
        let mut sum = 0;
        for j in 0..n_candidates {
            let vote = votes[n_candidates * i + j];
            constrain vote*(vote-1) == 0;
            sum += vote;
            candidates[j] = candidates[j] + vote;
            if candidates[j] as u32 > max as u32 {
                max = candidates[j];
                max_index = j;
            }
        }
        constrain sum == 1;
    }
    max_index
}