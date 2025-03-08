'solc --version' running
'solc ./dataset/contracts/transaction_order/37261.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/37261.sol:
./dataset/contracts/transaction_order/37261.sol:12:18: Warning: Unused local variable
	function invest(address receiver) payable {}
	                ^--------------^

INFO:Detectors:
Reservation2 (dataset/contracts/transaction_order/37261.sol#53-117) contract sets array length with a user-controlled value:
	- investors.push(msg.sender) (dataset/contracts/transaction_order/37261.sol#74)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Reentrancy in Reservation2.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37261.sol#83-95):
	External calls:
	- ico.invest.value(amount)(investors[i]) (dataset/contracts/transaction_order/37261.sol#92)
	State variables written after the call(s):
	- delete balanceOf[investors[i]] (dataset/contracts/transaction_order/37261.sol#91)
	Reservation2.balanceOf (dataset/contracts/transaction_order/37261.sol#56) can be used in cross function reentrancies:
	- Reservation2.balanceOf (dataset/contracts/transaction_order/37261.sol#56)
	- Reservation2.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37261.sol#83-95)
	- Reservation2.fallback() (dataset/contracts/transaction_order/37261.sol#68-78)
	- Reservation2.withdraw() (dataset/contracts/transaction_order/37261.sol#99-105)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
mortal.close() (dataset/contracts/transaction_order/37261.sol#47-50) uses a dangerous strict equality:
	- require(bool)(address(this).balance == 0) (dataset/contracts/transaction_order/37261.sol#48)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Contract locking ether found:
	Contract ICO (dataset/contracts/transaction_order/37261.sol#11-13) has payable functions:
	 - ICO.invest(address) (dataset/contracts/transaction_order/37261.sol#12)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
INFO:Detectors:
owned.changeOwner(address) (dataset/contracts/transaction_order/37261.sol#41-43) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/37261.sol#42) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.changeOwner(address).newOwner (dataset/contracts/transaction_order/37261.sol#41) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/37261.sol#42)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reservation2.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37261.sol#83-95) has external calls inside a loop: ico.invest.value(amount)(investors[i]) (dataset/contracts/transaction_order/37261.sol#92)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Reservation2.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37261.sol#83-95) has costly operations inside a loop:
	- delete balanceOf[investors[i]] (dataset/contracts/transaction_order/37261.sol#91)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#costly-operations-inside-a-loop
INFO:Detectors:
Version constraint ^0.4.15 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.15 (dataset/contracts/transaction_order/37261.sol#9)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/37261.sol#30-44) is not in CapWords
Contract mortal (dataset/contracts/transaction_order/37261.sol#46-51) is not in CapWords
Parameter Reservation2.buyTokens(uint256,uint256)._from (dataset/contracts/transaction_order/37261.sol#83) is not in mixedCase
Parameter Reservation2.buyTokens(uint256,uint256)._to (dataset/contracts/transaction_order/37261.sol#83) is not in mixedCase
Parameter Reservation2.setICO(address)._icoAddr (dataset/contracts/transaction_order/37261.sol#112) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/37261.sol analyzed (5 contracts with 100 detectors), 15 result(s) found
