use juice::math::shr::shr;


fn get_amount_y_from_liquidity(
    liquidity: u128, sqrt_price_0_x64: u128, sqrt_price_1_x64: u128
) -> u128 {
    return shr(liquidity * (sqrt_price_1_x64 - sqrt_price_0_x64), 64);
}
// #[test]
// fn test_get_amount_delta() {
//     let a = 255;
//     let liquidity = 5_u128;
//     let price_0 = 5_u128;
//     let price_1 = 5_u128;
//     assert(get_amount_y_from_liquidity(liquidity, price_0, price_1) == 0_u128, 'Ok');
// }

