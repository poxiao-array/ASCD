'solc --version' running
'solc ./dataset/contracts/transaction_order/3998.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenTycoonIGO.buy(string).tthVal (dataset/contracts/transaction_order/3998.sol#173) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
AccessService.setService(address) (dataset/contracts/transaction_order/3998.sol#59-63) should emit an event for: 
	- addrService = _newService (dataset/contracts/transaction_order/3998.sol#62) 
AccessService.setFinance(address) (dataset/contracts/transaction_order/3998.sol#65-69) should emit an event for: 
	- addrFinance = _newFinance (dataset/contracts/transaction_order/3998.sol#68) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
AccessService.withdraw(address,uint256).receiver (dataset/contracts/transaction_order/3998.sol#76) lacks a zero-check on :
		- receiver.transfer(_amount) (dataset/contracts/transaction_order/3998.sol#79)
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/3998.sol#81)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TokenTycoonIGO.totalSupply (dataset/contracts/transaction_order/3998.sol#92) is set pre-construction with a non-constant function or state variable:
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
	- ^0.4.20 (dataset/contracts/transaction_order/3998.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessAdmin.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/3998.sol#29) is not in mixedCase
Parameter AccessService.setService(address)._newService (dataset/contracts/transaction_order/3998.sol#59) is not in mixedCase
Parameter AccessService.setFinance(address)._newFinance (dataset/contracts/transaction_order/3998.sol#65) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._target (dataset/contracts/transaction_order/3998.sol#71) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._amount (dataset/contracts/transaction_order/3998.sol#71) is not in mixedCase
Contract tokenRecipient (dataset/contracts/transaction_order/3998.sol#86-88) is not in CapWords
Parameter TokenTycoonIGO.balanceOf(address)._owner (dataset/contracts/transaction_order/3998.sol#120) is not in mixedCase
Parameter TokenTycoonIGO.approve(address,uint256)._spender (dataset/contracts/transaction_order/3998.sol#124) is not in mixedCase
Parameter TokenTycoonIGO.approve(address,uint256)._value (dataset/contracts/transaction_order/3998.sol#124) is not in mixedCase
Parameter TokenTycoonIGO.allowance(address,address)._owner (dataset/contracts/transaction_order/3998.sol#130) is not in mixedCase
Parameter TokenTycoonIGO.allowance(address,address)._spender (dataset/contracts/transaction_order/3998.sol#130) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/3998.sol#134) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/3998.sol#134) is not in mixedCase
Parameter TokenTycoonIGO.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/3998.sol#134) is not in mixedCase
Parameter TokenTycoonIGO.transfer(address,uint256)._to (dataset/contracts/transaction_order/3998.sol#140) is not in mixedCase
Parameter TokenTycoonIGO.transfer(address,uint256)._value (dataset/contracts/transaction_order/3998.sol#140) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/3998.sol#144) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/3998.sol#144) is not in mixedCase
Parameter TokenTycoonIGO.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/3998.sol#144) is not in mixedCase
Parameter TokenTycoonIGO.buy(string)._account (dataset/contracts/transaction_order/3998.sol#171) is not in mixedCase
Parameter TokenTycoonIGO.getBalanceByAccount(string)._account (dataset/contracts/transaction_order/3998.sol#218) is not in mixedCase
Parameter TokenTycoonIGO.getIGOAccoountByAddr(address)._addr (dataset/contracts/transaction_order/3998.sol#228) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/3998.sol#171-212) uses literals with too many digits:
	- tthVal = 1100000000000000000 (dataset/contracts/transaction_order/3998.sol#175)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/3998.sol#171-212) uses literals with too many digits:
	- tthVal = 3600000000000000000 (dataset/contracts/transaction_order/3998.sol#177)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/3998.sol#171-212) uses literals with too many digits:
	- tthVal = 6500000000000000000 (dataset/contracts/transaction_order/3998.sol#179)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/3998.sol#171-212) uses literals with too many digits:
	- tthVal = 15000000000000000000 (dataset/contracts/transaction_order/3998.sol#181)
TokenTycoonIGO.buy(string) (dataset/contracts/transaction_order/3998.sol#171-212) uses literals with too many digits:
	- tthVal = 34000000000000000000 (dataset/contracts/transaction_order/3998.sol#183)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TokenTycoonIGO.decimals (dataset/contracts/transaction_order/3998.sol#91) should be constant 
TokenTycoonIGO.name (dataset/contracts/transaction_order/3998.sol#93) should be constant 
TokenTycoonIGO.symbol (dataset/contracts/transaction_order/3998.sol#94) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/3998.sol analyzed (4 contracts with 100 detectors), 37 result(s) found
