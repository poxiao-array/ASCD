'solc --version' running
'solc ./dataset/contracts/transaction_order/37366.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/37366.sol:
./dataset/contracts/transaction_order/37366.sol:12:18: Warning: Unused local variable
	function invest(address receiver) payable {}
	                ^--------------^

INFO:Detectors:
Reservation (dataset/contracts/transaction_order/37366.sol#47-109) contract sets array length with a user-controlled value:
	- investors.push(msg.sender) (dataset/contracts/transaction_order/37366.sol#63)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
Reentrancy in Reservation.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37366.sol#75-87):
	External calls:
	- ico.invest.value(amount)(investors[i]) (dataset/contracts/transaction_order/37366.sol#84)
	State variables written after the call(s):
	- delete balanceOf[investors[i]] (dataset/contracts/transaction_order/37366.sol#83)
	Reservation.balanceOf (dataset/contracts/transaction_order/37366.sol#50) can be used in cross function reentrancies:
	- Reservation.balanceOf (dataset/contracts/transaction_order/37366.sol#50)
	- Reservation.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37366.sol#75-87)
	- Reservation.fallback() (dataset/contracts/transaction_order/37366.sol#60-68)
	- Reservation.withdraw() (dataset/contracts/transaction_order/37366.sol#91-97)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
mortal.close() (dataset/contracts/transaction_order/37366.sol#41-44) uses a dangerous strict equality:
	- require(bool)(address(this).balance == 0) (dataset/contracts/transaction_order/37366.sol#42)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Contract locking ether found:
	Contract ICO (dataset/contracts/transaction_order/37366.sol#11-13) has payable functions:
	 - ICO.invest(address) (dataset/contracts/transaction_order/37366.sol#12)
	But does not have a function to withdraw the ether
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#contracts-that-lock-ether
INFO:Detectors:
owned.changeOwner(address) (dataset/contracts/transaction_order/37366.sol#35-37) should emit an event for: 
	- owner = newOwner (dataset/contracts/transaction_order/37366.sol#36) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
owned.changeOwner(address).newOwner (dataset/contracts/transaction_order/37366.sol#35) lacks a zero-check on :
		- owner = newOwner (dataset/contracts/transaction_order/37366.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Reservation.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37366.sol#75-87) has external calls inside a loop: ico.invest.value(amount)(investors[i]) (dataset/contracts/transaction_order/37366.sol#84)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Reservation.buyTokens(uint256,uint256) (dataset/contracts/transaction_order/37366.sol#75-87) has costly operations inside a loop:
	- delete balanceOf[investors[i]] (dataset/contracts/transaction_order/37366.sol#83)
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
	- ^0.4.15 (dataset/contracts/transaction_order/37366.sol#9)
solc-0.4.15 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract owned (dataset/contracts/transaction_order/37366.sol#24-38) is not in CapWords
Contract mortal (dataset/contracts/transaction_order/37366.sol#40-45) is not in CapWords
Parameter Reservation.buyTokens(uint256,uint256)._from (dataset/contracts/transaction_order/37366.sol#75) is not in mixedCase
Parameter Reservation.buyTokens(uint256,uint256)._to (dataset/contracts/transaction_order/37366.sol#75) is not in mixedCase
Parameter Reservation.setICO(address)._icoAddr (dataset/contracts/transaction_order/37366.sol#104) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/37366.sol analyzed (5 contracts with 100 detectors), 15 result(s) found
