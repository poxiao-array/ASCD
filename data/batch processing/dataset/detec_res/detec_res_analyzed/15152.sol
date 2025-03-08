'solc --version' running
'solc ./dataset/contracts/transaction_order/15152.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EOMarketToken (dataset/contracts/transaction_order/15152.sol#98-218) contract sets array length with a user-controlled value:
	- shareholders.push(_to) (dataset/contracts/transaction_order/15152.sol#185)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
AccessService.setService(address) (dataset/contracts/transaction_order/15152.sol#67-71) should emit an event for: 
	- addrService = _newService (dataset/contracts/transaction_order/15152.sol#70) 
AccessService.setFinance(address) (dataset/contracts/transaction_order/15152.sol#73-77) should emit an event for: 
	- addrFinance = _newFinance (dataset/contracts/transaction_order/15152.sol#76) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
EOMarketToken.buy(uint256) (dataset/contracts/transaction_order/15152.sol#192-207) should emit an event for: 
	- totalSold += _amount (dataset/contracts/transaction_order/15152.sol#205) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
AccessService.withdraw(address,uint256).receiver (dataset/contracts/transaction_order/15152.sol#84) lacks a zero-check on :
		- receiver.transfer(_amount) (dataset/contracts/transaction_order/15152.sol#87)
		- receiver.transfer(this.balance) (dataset/contracts/transaction_order/15152.sol#89)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.20 (dataset/contracts/transaction_order/15152.sol#10)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessAdmin.setAdmin(address)._newAdmin (dataset/contracts/transaction_order/15152.sol#38) is not in mixedCase
Parameter AccessService.setService(address)._newService (dataset/contracts/transaction_order/15152.sol#67) is not in mixedCase
Parameter AccessService.setFinance(address)._newFinance (dataset/contracts/transaction_order/15152.sol#73) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._target (dataset/contracts/transaction_order/15152.sol#79) is not in mixedCase
Parameter AccessService.withdraw(address,uint256)._amount (dataset/contracts/transaction_order/15152.sol#79) is not in mixedCase
Contract shareRecipient (dataset/contracts/transaction_order/15152.sol#94-96) is not in CapWords
Parameter EOMarketToken.balanceOf(address)._owner (dataset/contracts/transaction_order/15152.sol#125) is not in mixedCase
Parameter EOMarketToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/15152.sol#129) is not in mixedCase
Parameter EOMarketToken.approve(address,uint256)._value (dataset/contracts/transaction_order/15152.sol#129) is not in mixedCase
Parameter EOMarketToken.allowance(address,address)._owner (dataset/contracts/transaction_order/15152.sol#135) is not in mixedCase
Parameter EOMarketToken.allowance(address,address)._spender (dataset/contracts/transaction_order/15152.sol#135) is not in mixedCase
Parameter EOMarketToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/15152.sol#139) is not in mixedCase
Parameter EOMarketToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/15152.sol#139) is not in mixedCase
Parameter EOMarketToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/15152.sol#139) is not in mixedCase
Parameter EOMarketToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/15152.sol#145) is not in mixedCase
Parameter EOMarketToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/15152.sol#145) is not in mixedCase
Parameter EOMarketToken.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/15152.sol#149) is not in mixedCase
Parameter EOMarketToken.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/15152.sol#149) is not in mixedCase
Parameter EOMarketToken.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/15152.sol#149) is not in mixedCase
Parameter EOMarketToken.buy(uint256)._amount (dataset/contracts/transaction_order/15152.sol#192) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
EOMarketToken.decimals (dataset/contracts/transaction_order/15152.sol#99) should be constant 
EOMarketToken.name (dataset/contracts/transaction_order/15152.sol#102) should be constant 
EOMarketToken.symbol (dataset/contracts/transaction_order/15152.sol#103) should be constant 
EOMarketToken.totalSupply (dataset/contracts/transaction_order/15152.sol#100) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/15152.sol analyzed (4 contracts with 100 detectors), 31 result(s) found
