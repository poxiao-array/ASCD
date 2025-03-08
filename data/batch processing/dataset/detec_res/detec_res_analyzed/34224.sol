'solc --version' running
'solc ./dataset/contracts/transaction_order/34224.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/34224.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter Destructible.destroyAndSend(address)._recipient (dataset/contracts/transaction_order/34224.sol#53) is not in mixedCase
Parameter BaseToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/34224.sol#97) is not in mixedCase
Parameter BaseToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/34224.sol#97) is not in mixedCase
Parameter BaseToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/34224.sol#105) is not in mixedCase
Parameter BaseToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/34224.sol#105) is not in mixedCase
Parameter BaseToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/34224.sol#105) is not in mixedCase
Parameter BaseToken.balanceOf(address)._owner (dataset/contracts/transaction_order/34224.sol#114) is not in mixedCase
Parameter BaseToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/34224.sol#118) is not in mixedCase
Parameter BaseToken.approve(address,uint256)._value (dataset/contracts/transaction_order/34224.sol#118) is not in mixedCase
Parameter BaseToken.allowance(address,address)._owner (dataset/contracts/transaction_order/34224.sol#124) is not in mixedCase
Parameter BaseToken.allowance(address,address)._spender (dataset/contracts/transaction_order/34224.sol#124) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TeraCoin.TeraCoin() (dataset/contracts/transaction_order/34224.sol#138-141) uses literals with too many digits:
	- totalSupply = 1000000000000 (dataset/contracts/transaction_order/34224.sol#139)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TeraCoin.decimals (dataset/contracts/transaction_order/34224.sol#134) should be constant 
TeraCoin.name (dataset/contracts/transaction_order/34224.sol#133) should be constant 
TeraCoin.symbol (dataset/contracts/transaction_order/34224.sol#135) should be constant 
TeraCoin.version (dataset/contracts/transaction_order/34224.sol#136) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/34224.sol analyzed (5 contracts with 100 detectors), 18 result(s) found
