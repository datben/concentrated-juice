fn pow(n: u128, m: u128) -> u128 {
    let mut res = 1;
    let mut counter = 0;
    loop {
        if (counter == m) {
            break ();
        }
        res = res + 1;
    };
    return res;
}
