'solc --version' running
'solc ./dataset/contracts/transaction_order/35584.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
OysterPrePearl (dataset/contracts/transaction_order/35584.sol#5-205) has incorrect ERC20 function interface:OysterPrePearl.transfer(address,uint256) (dataset/contracts/transaction_order/35584.sol#119-121)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/35584.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/35584.sol#3) is not in CapWords
Parameter OysterPrePearl.transfer(address,uint256)._to (dataset/contracts/transaction_order/35584.sol#119) is not in mixedCase
Parameter OysterPrePearl.transfer(address,uint256)._value (dataset/contracts/transaction_order/35584.sol#119) is not in mixedCase
Parameter OysterPrePearl.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/35584.sol#132) is not in mixedCase
Parameter OysterPrePearl.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/35584.sol#132) is not in mixedCase
Parameter OysterPrePearl.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/35584.sol#132) is not in mixedCase
Parameter OysterPrePearl.approve(address,uint256)._spender (dataset/contracts/transaction_order/35584.sol#147) is not in mixedCase
Parameter OysterPrePearl.approve(address,uint256)._value (dataset/contracts/transaction_order/35584.sol#147) is not in mixedCase
Parameter OysterPrePearl.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/35584.sol#162) is not in mixedCase
Parameter OysterPrePearl.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/35584.sol#162) is not in mixedCase
Parameter OysterPrePearl.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/35584.sol#162) is not in mixedCase
Parameter OysterPrePearl.burn(uint256)._value (dataset/contracts/transaction_order/35584.sol#179) is not in mixedCase
Parameter OysterPrePearl.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/35584.sol#195) is not in mixedCase
Parameter OysterPrePearl.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/35584.sol#195) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
OysterPrePearl.decimals (dataset/contracts/transaction_order/35584.sol#9) should be constant 
OysterPrePearl.name (dataset/contracts/transaction_order/35584.sol#7) should be constant 
OysterPrePearl.symbol (dataset/contracts/transaction_order/35584.sol#8) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/35584.sol#3)
approveAndCall(address,uint256,bytes) should be declared external:
	- OysterPrePearl.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/35584.sol#162-170)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/35584.sol analyzed (2 contracts with 100 detectors), 22 result(s) found
