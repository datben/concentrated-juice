use juice::math::pow::pow;

fn shr(n: u128, m: felt252) -> u128 {
    if m == 0 {
        return n;
    }
    let fact = pow(2_u128, m);
    return n / fact;
}


#[test]
fn test_shr() {
    assert(shr(4_u128, 2) == 2_u128, 'Ok');
}
