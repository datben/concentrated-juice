#[test]
fn test_pow() {
    let a = concentrated_juice::math::utils::pow(2, 4);
    assert(a == 4_u128, 'Should return 4');
}

