use juice::utils::check_gas;

fn pow(n: u128, m: felt252) -> u128 {
    check_gas();
    if m == 0 {
        return 1_u128;
    } else {
        return pow(n * n, m - 1);
    }
}
#[test]
fn test_pow() {
    assert(pow(4_u128, 2) == 16_u128, 'Ok');
}
