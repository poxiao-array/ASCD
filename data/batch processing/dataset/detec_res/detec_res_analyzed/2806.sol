'solc --version' running
'solc ./dataset/contracts/transaction_order/2806.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Version constraint 0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- EventStructWrongData.
It is used by:
	- 0.4.24 (dataset/contracts/transaction_order/2806.sol#1)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract admined (dataset/contracts/transaction_order/2806.sol#72-112) is not in CapWords
Parameter admined.transferAdminship(address)._newAdmin (dataset/contracts/transaction_order/2806.sol#95) is not in mixedCase
Parameter admined.setAdminLevel(address,uint8)._target (dataset/contracts/transaction_order/2806.sol#102) is not in mixedCase
Parameter admined.setAdminLevel(address,uint8)._level (dataset/contracts/transaction_order/2806.sol#102) is not in mixedCase
Parameter ERC20Token.balanceOf(address)._owner (dataset/contracts/transaction_order/2806.sol#128) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._to (dataset/contracts/transaction_order/2806.sol#137) is not in mixedCase
Parameter ERC20Token.transfer(address,uint256)._value (dataset/contracts/transaction_order/2806.sol#137) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/2806.sol#151) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/2806.sol#151) is not in mixedCase
Parameter ERC20Token.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/2806.sol#151) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._spender (dataset/contracts/transaction_order/2806.sol#165) is not in mixedCase
Parameter ERC20Token.approve(address,uint256)._value (dataset/contracts/transaction_order/2806.sol#165) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._owner (dataset/contracts/transaction_order/2806.sol#177) is not in mixedCase
Parameter ERC20Token.allowance(address,address)._spender (dataset/contracts/transaction_order/2806.sol#177) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
AssetMTC.constructor() (dataset/contracts/transaction_order/2806.sol#198-202) uses literals with too many digits:
	- totalSupply = 20000000 * (10 ** uint256(decimals)) (dataset/contracts/transaction_order/2806.sol#199)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
AssetMTC.decimals (dataset/contracts/transaction_order/2806.sol#194) should be constant 
AssetMTC.name (dataset/contracts/transaction_order/2806.sol#193) should be constant 
AssetMTC.symbol (dataset/contracts/transaction_order/2806.sol#195) should be constant 
AssetMTC.version (dataset/contracts/transaction_order/2806.sol#196) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Slither:./dataset/contracts/transaction_order/2806.sol analyzed (5 contracts with 100 detectors), 21 result(s) found
