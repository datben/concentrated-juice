#[contract]
mod TestContract {
    struct Storage {
        my_storage_var: felt
    }

    fn internal_func() -> felt {
        1
    }

    #[external]
    fn test(ref arg: felt, arg1: felt, arg2: felt) -> felt {
        let mut x = my_storage_var::read();
        x += 1;
        my_storage_var::write(x);
        x + internal_func()
    }
}