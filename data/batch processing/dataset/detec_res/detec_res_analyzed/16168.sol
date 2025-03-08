'solc --version' running
'solc ./dataset/contracts/transaction_order/16168.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TokenERC20.getEth(uint256) (dataset/contracts/transaction_order/16168.sol#189-191) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(num) (dataset/contracts/transaction_order/16168.sol#190)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
TokenERC20.selfdestructs() (dataset/contracts/transaction_order/16168.sol#185-187) allows anyone to destruct the contract
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#suicidal
INFO:Detectors:
TokenERC20.getBalance(address) (dataset/contracts/transaction_order/16168.sol#161-170) is declared view but changes state variables:
	- TokenERC20.balances (dataset/contracts/transaction_order/16168.sol#40)
TokenERC20.balanceOf(address) (dataset/contracts/transaction_order/16168.sol#173-175) is declared view but changes state variables:
	- TokenERC20.balances (dataset/contracts/transaction_order/16168.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-changing-the-state
INFO:Detectors:
TokenERC20 (dataset/contracts/transaction_order/16168.sol#22-197) has incorrect ERC20 function interface:TokenERC20.transfer(address,uint256) (dataset/contracts/transaction_order/16168.sol#72-74)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
owned.transferOwnership(address) (dataset/contracts/transaction_order/16168.sol#15-17) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/16168.sol#16) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.transferOwnership(address).newOwner (dataset/contracts/transaction_order/16168.sol#15) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/16168.sol#16)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.16 (dataset/contracts/transaction_order/16168.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/16168.sol#3-18) is not in CapWords
Contract tokenRecipient (dataset/contracts/transaction_order/16168.sol#20) is not in CapWords
Parameter TokenERC20.transfer(address,uint256)._to (dataset/contracts/transaction_order/16168.sol#72) is not in mixedCase
Parameter TokenERC20.transfer(address,uint256)._value (dataset/contracts/transaction_order/16168.sol#72) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/16168.sol#76) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/16168.sol#76) is not in mixedCase
Parameter TokenERC20.transferFrom(address,address,uint256)._value (dataset/contracts/transaction_order/16168.sol#76) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._spender (dataset/contracts/transaction_order/16168.sol#83) is not in mixedCase
Parameter TokenERC20.approve(address,uint256)._value (dataset/contracts/transaction_order/16168.sol#83) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._spender (dataset/contracts/transaction_order/16168.sol#89) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._value (dataset/contracts/transaction_order/16168.sol#89) is not in mixedCase
Parameter TokenERC20.approveAndCall(address,uint256,bytes)._extraData (dataset/contracts/transaction_order/16168.sol#89) is not in mixedCase
Parameter TokenERC20.burn(uint256)._value (dataset/contracts/transaction_order/16168.sol#99) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._from (dataset/contracts/transaction_order/16168.sol#107) is not in mixedCase
Parameter TokenERC20.burnFrom(address,uint256)._value (dataset/contracts/transaction_order/16168.sol#107) is not in mixedCase
Parameter TokenERC20.getBalance(address)._a (dataset/contracts/transaction_order/16168.sol#161) is not in mixedCase
Parameter TokenERC20.balanceOf(address)._owner (dataset/contracts/transaction_order/16168.sol#173) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
TokenERC20.airdropNum (dataset/contracts/transaction_order/16168.sol#30) should be constant 
TokenERC20.airdroptotal (dataset/contracts/transaction_order/16168.sol#29) should be constant 
TokenERC20.decimals (dataset/contracts/transaction_order/16168.sol#26) should be constant 
TokenERC20.name (dataset/contracts/transaction_order/16168.sol#24) should be constant 
TokenERC20.symbol (dataset/contracts/transaction_order/16168.sol#25) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
receiveApproval(address,uint256,address,bytes) should be declared external:
	- tokenRecipient.receiveApproval(address,uint256,address,bytes) (dataset/contracts/transaction_order/16168.sol#20)
approveAndCall(address,uint256,bytes) should be declared external:
	- TokenERC20.approveAndCall(address,uint256,bytes) (dataset/contracts/transaction_order/16168.sol#89-97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/16168.sol analyzed (3 contracts with 100 detectors), 33 result(s) found
