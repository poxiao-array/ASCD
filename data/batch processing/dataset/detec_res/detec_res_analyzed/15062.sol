'solc --version' running
'solc ./dataset/contracts/transaction_order/15062.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/15062.sol:
./dataset/contracts/transaction_order/15062.sol:159:7: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
    		owner.send(msg.value);//
    		^-------------------^
./dataset/contracts/transaction_order/15062.sol:167:7: Warning: Failure condition of 'send' ignored. Consider using 'transfer' instead.
    		owner.send(num);
    		^-------------^

INFO:Detectors:
EncryptedToken (dataset/contracts/transaction_order/15062.sol#115-174) has incorrect ERC20 function interface:TokenERC20.transfer(address,uint256) (dataset/contracts/transaction_order/15062.sol#67-69)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
EncryptedToken.fallback() (dataset/contracts/transaction_order/15062.sol#156-160) ignores return value by owner.send(msg.value) (dataset/contracts/transaction_order/15062.sol#159)
EncryptedToken.getEth(uint256) (dataset/contracts/transaction_order/15062.sol#166-168) ignores return value by owner.send(num) (dataset/contracts/transaction_order/15062.sol#167)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unchecked-send
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/15062.sol#15-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/15062.sol#16) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/15062.sol#15) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/15062.sol#16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
TokenERC20._transfer(address,address,uint256) (dataset/contracts/transaction_order/15062.sol#48-65) is never used and should be removed
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
	- ^0.4.16 (dataset/contracts/transaction_order/15062.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/15062.sol#3-18) is not in CapWords
Contract tokenRecipient (dataset/contracts/transaction_order/15062.sol#20) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/15062.sol#67) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/15062.sol#67) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/15062.sol#71) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/15062.sol#71) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/15062.sol#71) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/15062.sol#78) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/15062.sol#78) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/15062.sol#85) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/15062.sol#85) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/15062.sol#85) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/15062.sol#95) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/15062.sol#104) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/15062.sol#104) is not in mixedCase
Parameter EncryptedToken.balanceOfa(address)._owner (dataset/contracts/transaction_order/15062.sol#170) is not in mixedCase
Variable EncryptedToken.INITIAL_SUPPLY (dataset/contracts/transaction_order/15062.sol#116) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
EncryptedToken.slitherConstructorVariables() (dataset/contracts/transaction_order/15062.sol#115-174) uses literals with too many digits:
	- INITIAL_SUPPLY = 880000000 (dataset/contracts/transaction_order/15062.sol#116)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
EncryptedToken.INITIAL_SUPPLY (dataset/contracts/transaction_order/15062.sol#116) should be constant 
TokenERC20.decimals (dataset/contracts/transaction_order/15062.sol#25) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/15062.sol#20)
approveAndCall(address,uint256,bytes) should be declared external:
	- TokenERC20.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/15062.sol#85-93)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/15062.sol analyzed (4 contracts with 100 detectors), 30 result(s) found
