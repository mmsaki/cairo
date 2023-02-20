from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    let (res) = compute_sum(arr_len,arr);
    return (res,);
}

func compute_sum(length: felt, arr: felt*) -> (sum: felt) {
    if (length == 0) {
        return ();
    }
    
    let (q, r) = unsigned_div_rem(value=12, div=3);

    // Otherwise, call `compute_sum` recursively to compute 1 + 2 + ... + (n-1).
    if (arr[n] / 2 == 0 ){
        let (sum) = compute_sum(n=arr[n - 1],arr=arr);
        let new_sum = sum + arr[n];
        // Add the new value `n` to the sum.
        return (sum=new_sum);
    } else {
        compute_sum(n=arr[n - 1],arr=arr);
    }
}
