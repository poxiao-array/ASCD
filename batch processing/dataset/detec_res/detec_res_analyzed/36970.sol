'solc --version' running
'solc ./dataset/contracts/transaction_order/36970.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/36970.sol:
./dataset/contracts/transaction_order/36970.sol:85:21: Warning: Decimal literal assigned to bytesXX variable will be left-aligned. Use an explicit conversion to silence this warning.
    commits[host] = 0;
                    ^
./dataset/contracts/transaction_order/36970.sol:97:27: Warning: Decimal literal assigned to bytesXX variable will be left-aligned. Use an explicit conversion to silence this warning.
    commits[msg.sender] = 0;
                          ^

INFO:Detectors:
Lottery.withdraw(address) (dataset/contracts/transaction_order/36970.sol#135-146) sends eth to arbitrary user
	Dangerous calls:
	- user.transfer(eth_to_withdraw) (dataset/contracts/transaction_order/36970.sol#145)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Lottery.host_claim_earnings(address).host (dataset/contracts/transaction_order/36970.sol#107) lacks a zero-check on :
		- host.transfer(total_user_eth * host_percentage / (num_hosts * 100)) (dataset/contracts/transaction_order/36970.sol#115)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Lottery.cancel_lottery() (dataset/contracts/transaction_order/36970.sol#47-60) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > commit_end_time) (dataset/contracts/transaction_order/36970.sol#49)
	- reveal_phase_ended = now > reveal_end_time (dataset/contracts/transaction_order/36970.sol#55)
	- require(bool)(! quorum_met || (! all_hosts_revealed && reveal_phase_ended)) (dataset/contracts/transaction_order/36970.sol#57)
Lottery.host_lottery(bytes32) (dataset/contracts/transaction_order/36970.sol#63-74) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)((now > buy_end_time) && (now <= commit_end_time)) (dataset/contracts/transaction_order/36970.sol#67)
Lottery.steal_reveal(address,uint256) (dataset/contracts/transaction_order/36970.sol#77-88) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)((now > buy_end_time) && (now <= commit_end_time)) (dataset/contracts/transaction_order/36970.sol#79)
Lottery.host_reveal(uint256) (dataset/contracts/transaction_order/36970.sol#91-104) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)((now > commit_end_time) && (now <= reveal_end_time)) (dataset/contracts/transaction_order/36970.sol#93)
Lottery.fallback() (dataset/contracts/transaction_order/36970.sol#149-162) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now <= buy_end_time) (dataset/contracts/transaction_order/36970.sol#151)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Lottery.commit_end_time (dataset/contracts/transaction_order/36970.sol#42) is set pre-construction with a non-constant function or state variable:
	- buy_end_time + 86400
Lottery.reveal_end_time (dataset/contracts/transaction_order/36970.sol#44) is set pre-construction with a non-constant function or state variable:
	- commit_end_time + 86400
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint ^0.4.13 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput.
It is used by:
	- ^0.4.13 (dataset/contracts/transaction_order/36970.sol#1)
solc-0.4.13 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function Lottery.cancel_lottery() (dataset/contracts/transaction_order/36970.sol#47-60) is not in mixedCase
Function Lottery.host_lottery(bytes32) (dataset/contracts/transaction_order/36970.sol#63-74) is not in mixedCase
Function Lottery.steal_reveal(address,uint256) (dataset/contracts/transaction_order/36970.sol#77-88) is not in mixedCase
Parameter Lottery.steal_reveal(address,uint256).secret_random_number (dataset/contracts/transaction_order/36970.sol#77) is not in mixedCase
Function Lottery.host_reveal(uint256) (dataset/contracts/transaction_order/36970.sol#91-104) is not in mixedCase
Parameter Lottery.host_reveal(uint256).secret_random_number (dataset/contracts/transaction_order/36970.sol#91) is not in mixedCase
Function Lottery.host_claim_earnings(address) (dataset/contracts/transaction_order/36970.sol#107-116) is not in mixedCase
Function Lottery.claim_winnings(address) (dataset/contracts/transaction_order/36970.sol#119-132) is not in mixedCase
Variable Lottery.num_hosts (dataset/contracts/transaction_order/36970.sol#26) is not in mixedCase
Variable Lottery.num_hosts_revealed (dataset/contracts/transaction_order/36970.sol#28) is not in mixedCase
Variable Lottery.total_user_eth (dataset/contracts/transaction_order/36970.sol#34) is not in mixedCase
Variable Lottery.total_user_eth_cap (dataset/contracts/transaction_order/36970.sol#36) is not in mixedCase
Variable Lottery.host_percentage (dataset/contracts/transaction_order/36970.sol#38) is not in mixedCase
Variable Lottery.buy_end_time (dataset/contracts/transaction_order/36970.sol#40) is not in mixedCase
Variable Lottery.commit_end_time (dataset/contracts/transaction_order/36970.sol#42) is not in mixedCase
Variable Lottery.reveal_end_time (dataset/contracts/transaction_order/36970.sol#44) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Lottery.buy_end_time (dataset/contracts/transaction_order/36970.sol#40) should be constant 
Lottery.host_percentage (dataset/contracts/transaction_order/36970.sol#38) should be constant 
Lottery.total_user_eth_cap (dataset/contracts/transaction_order/36970.sol#36) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/36970.sol analyzed (1 contracts with 100 detectors), 30 result(s) found
