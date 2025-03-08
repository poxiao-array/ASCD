'solc --version' running
'solc ./dataset/contracts/transaction_order/10795.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CAPTOZ (dataset/contracts/transaction_order/10795.sol#188-277) has incorrect ERC20 function interface:TokenERC20.transfer(address,uint256) (dataset/contracts/transaction_order/10795.sol#97-99)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/10795.sol#27-29) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/10795.sol#28) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CAPTOZ.setPrices(uint256,uint256) (dataset/contracts/transaction_order/10795.sol#236-239) should emit an event for: 
	- sellPrice = newSellPrice (dataset/contracts/transaction_order/10795.sol#237) 
	- buyPrice = newBuyPrice (dataset/contracts/transaction_order/10795.sol#238) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-arithmetic
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/10795.sol#27) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/10795.sol#28)
CAPTOZ.reclaim(address,uint256).target (dataset/contracts/transaction_order/10795.sol#269) lacks a zero-check on :
		- target.transfer(txAmount) (dataset/contracts/transaction_order/10795.sol#274)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TokenERC20._transfer(address,address,uint256) (dataset/contracts/transaction_order/10795.sol#71-87) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.24 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.24 (dataset/contracts/transaction_order/10795.sol#11)
solc-0.4.24 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/10795.sol#13-30) is not in CapWords
Variable owned.Version (dataset/contracts/transaction_order/10795.sol#14) is not in mixedCase
Contract tokenRecipient (dataset/contracts/transaction_order/10795.sol#32) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/10795.sol#97) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/10795.sol#97) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/10795.sol#110) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/10795.sol#110) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/10795.sol#110) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/10795.sol#125) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/10795.sol#125) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/10795.sol#140) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/10795.sol#140) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/10795.sol#140) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/10795.sol#157) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/10795.sol#173) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/10795.sol#173) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CAPTOZ.constructor() (dataset/contracts/transaction_order/10795.sol#199-202) uses literals with too many digits:
	- buyPrice = 186800000000000 (dataset/contracts/transaction_order/10795.sol#200)
CAPTOZ.constructor() (dataset/contracts/transaction_order/10795.sol#199-202) uses literals with too many digits:
	- sellPrice = 186800000000000 (dataset/contracts/transaction_order/10795.sol#201)
CAPTOZ.constructor() (dataset/contracts/transaction_order/10795.sol#199-202) uses literals with too many digits:
	- TokenERC20(100000000000,CAPTOZ Token,CAPTOZ) (dataset/contracts/transaction_order/10795.sol#199)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TokenERC20.decimals (dataset/contracts/transaction_order/10795.sol#38) should be constant 
owned.Version (dataset/contracts/transaction_order/10795.sol#14) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
approveAndCall(address,uint256,bytes) should be declared external:
	- TokenERC20.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/10795.sol#140-148)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/10795.sol analyzed (4 contracts with 100 detectors), 30 result(s) found
