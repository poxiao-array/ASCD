'solc --version' running
'solc ./dataset/contracts/transaction_order/4000.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenTycoonIGO.buy(string).tthVal (dataset/contracts/transaction_order/4000.sol#174) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
AccessService.setService(address) (dataset/contracts/transaction_order/4000.sol#60-64) should emit an event for: 
	- addrService = _newService (dataset/contracts/transaction_order/4000.sol#63) 
AccessService.setFinance(address) (dataset/contracts/transaction_order/4000.sol#66-70) should emit an event for: 
	- addrFinance = _newFinance (dataset/contracts/transaction_order/4000.sol#69) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AccessService.withdraw(address,uint256).receiver (dataset/contracts/transaction_order/4000.sol#77) lacks a zero-check on :
		- receiver.transfer(_amount) (dataset/contracts/transaction_order/4000.sol#80)
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/4000.sol#82)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TokenTycoonIGO.totalSupply (dataset/contracts/transaction_order/4000.sol#93) is set pre-construction with a non-constant function or state variable:
	- 850 * (10 ** uint256(decimals))
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#function-initializing-state
INFO:Detectors:
Version constraint ^0.4.20 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ABIEncoderV2PackedStorage_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.20 (dataset/contracts/transaction_order/4000.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessAdmin.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/4000.sol#30) is not in mixedCase
Parameter AccessService.setService(address)._newService (dataset/contracts/transaction_order/4000.sol#60) is not in mixedCase
Parameter AccessService.setFinance(address)._newFinance (dataset/contracts/transaction_order/4000.sol#66) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._target (dataset/contracts/transaction_order/4000.sol#72) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._amount (dataset/contracts/transaction_order/4000.sol#72) is not in mixedCase
Contract tokenRecipient (dataset/contracts/transaction_order/4000.sol#87-89) is not in CapWords
Parameter TokenTycoonIGO.balanceOf(address)._owner (dataset/contracts/transaction_order/4000.sol#121) is not in mixedCase
Parameter TokenTycoonIGO.approve(address,uint256)._spender (dataset/contracts/transaction_order/4000.sol#125) is not in mixedCase
Parameter TokenTycoonIGO.approve(address,uint256)._value (dataset/contracts/transaction_order/4000.sol#125) is not in mixedCase
Parameter TokenTycoonIGO.allowance(address,address)._owner (dataset/contracts/transaction_order/4000.sol#131) is not in mixedCase
Parameter TokenTycoonIGO.allowance(address,address)._spender (dataset/contracts/transaction_order/4000.sol#131) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/4000.sol#135) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/4000.sol#135) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/4000.sol#135) is not in mixedCase
Parameter TokenTycoonIGO.transfer(address,uint256)._to (dataset/contracts/transaction_order/4000.sol#141) is not in mixedCase
Parameter TokenTycoonIGO.transfer(address,uint256)._value (dataset/contracts/transaction_order/4000.sol#141) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/4000.sol#145) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/4000.sol#145) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/4000.sol#145) is not in mixedCase
Parameter TokenTycoonIGO.buy(string)._account (dataset/contracts/transaction_order/4000.sol#172) is not in mixedCase
Parameter TokenTycoonIGO.getBalanceByAccount(string)._account (dataset/contracts/transaction_order/4000.sol#219) is not in mixedCase
Parameter TokenTycoonIGO.getIGOAccoountByAddr(address)._addr (dataset/contracts/transaction_order/4000.sol#229) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/4000.sol#172-213) uses literals with too many digits:
	- tthVal = 1100000000000000000 (dataset/contracts/transaction_order/4000.sol#176)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/4000.sol#172-213) uses literals with too many digits:
	- tthVal = 3600000000000000000 (dataset/contracts/transaction_order/4000.sol#178)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/4000.sol#172-213) uses literals with too many digits:
	- tthVal = 6500000000000000000 (dataset/contracts/transaction_order/4000.sol#180)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/4000.sol#172-213) uses literals with too many digits:
	- tthVal = 15000000000000000000 (dataset/contracts/transaction_order/4000.sol#182)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/4000.sol#172-213) uses literals with too many digits:
	- tthVal = 34000000000000000000 (dataset/contracts/transaction_order/4000.sol#184)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TokenTycoonIGO.decimals (dataset/contracts/transaction_order/4000.sol#92) should be constant 
TokenTycoonIGO.name (dataset/contracts/transaction_order/4000.sol#94) should be constant 
TokenTycoonIGO.symbol (dataset/contracts/transaction_order/4000.sol#95) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/4000.sol analyzed (4 contracts with 100 detectors), 37 result(s) found
