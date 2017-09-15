pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		uint a = 1;
		uint b = 1;
		while(position > 1) {
			a = b;
			b = a + b;
			position = position - 1;
		}
		result = a;
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() { throw; /*payable*/}
}
