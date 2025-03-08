'solc --version' running
'solc ./dataset/contracts/transaction_order/24569.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BecToken.fallback() (dataset/contracts/transaction_order/24569.sol#131) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(this.balance) (dataset/contracts/transaction_order/24569.sol#131)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
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
	- ^0.4.20 (dataset/contracts/transaction_order/24569.sol#1)
solc-0.4.20 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter BasicToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/24569.sol#31) is not in mixedCase
Parameter BasicToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/24569.sol#31) is not in mixedCase
Parameter BasicToken.balanceOf(address)._owner (dataset/contracts/transaction_order/24569.sol#39) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/24569.sol#51) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/24569.sol#51) is not in mixedCase
Parameter StandardToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/24569.sol#51) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/24569.sol#61) is not in mixedCase
Parameter StandardToken.approve(address,uint256)._value (dataset/contracts/transaction_order/24569.sol#61) is not in mixedCase
Parameter StandardToken.allowance(address,address)._owner (dataset/contracts/transaction_order/24569.sol#66) is not in mixedCase
Parameter StandardToken.allowance(address,address)._spender (dataset/contracts/transaction_order/24569.sol#66) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/24569.sol#108) is not in mixedCase
Parameter PausableToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/24569.sol#108) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/24569.sol#111) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/24569.sol#111) is not in mixedCase
Parameter PausableToken.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/24569.sol#111) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._spender (dataset/contracts/transaction_order/24569.sol#114) is not in mixedCase
Parameter PausableToken.approve(address,uint256)._value (dataset/contracts/transaction_order/24569.sol#114) is not in mixedCase
Parameter PausableToken.batchTransfer(address[],uint256)._receivers (dataset/contracts/transaction_order/24569.sol#117) is not in mixedCase
Parameter PausableToken.batchTransfer(address[],uint256)._value (dataset/contracts/transaction_order/24569.sol#117) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
BecToken.BecToken() (dataset/contracts/transaction_order/24569.sol#136-139) uses literals with too many digits:
	- totalSupply = 7000000000 * (10 ** (uint256(decimals))) (dataset/contracts/transaction_order/24569.sol#137)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
BecToken.decimals (dataset/contracts/transaction_order/24569.sol#135) should be constant 
BecToken.name (dataset/contracts/transaction_order/24569.sol#132) should be constant 
BecToken.symbol (dataset/contracts/transaction_order/24569.sol#133) should be constant 
BecToken.version (dataset/contracts/transaction_order/24569.sol#134) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
batchTransfer(address[],uint256) should be declared external:
	- PausableToken.batchTransfer(address[],uint256) (dataset/contracts/transaction_order/24569.sol#117-128)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/24569.sol analyzed (9 contracts with 100 detectors), 28 result(s) found
