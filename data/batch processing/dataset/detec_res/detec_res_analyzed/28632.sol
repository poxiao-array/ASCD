'solc --version' running
'solc ./dataset/contracts/transaction_order/28632.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Askcoin (dataset/contracts/transaction_order/28632.sol#176-272) has incorrect ERC20 function interface:TokenERC20.transfer(address,uint256) (dataset/contracts/transaction_order/28632.sol#84-87)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
Owned.transferOwnership(address) (dataset/contracts/transaction_order/28632.sol#15-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/28632.sol#16) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/28632.sol#15) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/28632.sol#16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TokenERC20._transfer(address,address,uint256) (dataset/contracts/transaction_order/28632.sol#58-74) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/28632.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract tokenRecipient (dataset/contracts/transaction_order/28632.sol#20) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/28632.sol#84) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/28632.sol#84) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/28632.sol#98) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/28632.sol#98) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/28632.sol#98) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/28632.sol#113) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/28632.sol#113) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/28632.sol#128) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/28632.sol#128) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/28632.sol#128) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/28632.sol#145) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/28632.sol#161) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/28632.sol#161) is not in mixedCase
Parameter Askcoin.setEnableSell(bool)._enable (dataset/contracts/transaction_order/28632.sol#215) is not in mixedCase
Parameter Askcoin.setMainnetLocked(bool)._locked (dataset/contracts/transaction_order/28632.sol#219) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Askcoin.Askcoin() (dataset/contracts/transaction_order/28632.sol#189-190) uses literals with too many digits:
	- TokenERC20(1000000000,Askcoin,ASK) (dataset/contracts/transaction_order/28632.sol#190)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
TokenERC20.decimals (dataset/contracts/transaction_order/28632.sol#26) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/28632.sol#20)
approveAndCall(address,uint256,bytes) should be declared external:
	- TokenERC20.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/28632.sol#128-136)
setMainnetAccount(string) should be declared external:
	- Askcoin.setMainnetAccount(string) (dataset/contracts/transaction_order/28632.sol#258-261)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/28632.sol analyzed (4 contracts with 100 detectors), 27 result(s) found
