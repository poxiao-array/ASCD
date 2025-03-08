'solc --version' running
'solc ./dataset/contracts/transaction_order/30101.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
TelcoinSaleCapEscrow (dataset/contracts/transaction_order/30101.sol#35-157) has incorrect ERC20 function interface:TelcoinSaleCapEscrow.approve(address,uint256) (dataset/contracts/transaction_order/30101.sol#86-94)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
TelcoinSaleCapEscrow.approve(address,uint256) (dataset/contracts/transaction_order/30101.sol#86-94) has external calls inside a loop: wallet.transfer(_weiAmount) (dataset/contracts/transaction_order/30101.sol#93)
TelcoinSaleCapEscrow.reject(address) (dataset/contracts/transaction_order/30101.sol#136-143) has external calls inside a loop: require(bool)(_participant.call.value(weiAmount)()) (dataset/contracts/transaction_order/30101.sol#142)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
Version constraint 0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder.
It is used by:
	- 0.4.18 (dataset/contracts/transaction_order/30101.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in TelcoinSaleCapEscrow.reject(address) (dataset/contracts/transaction_order/30101.sol#136-143):
	- require(bool)(_participant.call.value(weiAmount)()) (dataset/contracts/transaction_order/30101.sol#142)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Parameter TelcoinSaleCapEscrow.approve(address,uint256)._participant (dataset/contracts/transaction_order/30101.sol#86) is not in mixedCase
Parameter TelcoinSaleCapEscrow.approve(address,uint256)._weiAmount (dataset/contracts/transaction_order/30101.sol#86) is not in mixedCase
Parameter TelcoinSaleCapEscrow.approveMany(address[],uint256[])._participants (dataset/contracts/transaction_order/30101.sol#96) is not in mixedCase
Parameter TelcoinSaleCapEscrow.approveMany(address[],uint256[])._weiAmounts (dataset/contracts/transaction_order/30101.sol#96) is not in mixedCase
Parameter TelcoinSaleCapEscrow.changeWallet(address)._wallet (dataset/contracts/transaction_order/30101.sol#104) is not in mixedCase
Parameter TelcoinSaleCapEscrow.placeValue(address)._beneficiary (dataset/contracts/transaction_order/30101.sol#120) is not in mixedCase
Parameter TelcoinSaleCapEscrow.reject(address)._participant (dataset/contracts/transaction_order/30101.sol#136) is not in mixedCase
Parameter TelcoinSaleCapEscrow.rejectMany(address[])._participants (dataset/contracts/transaction_order/30101.sol#145) is not in mixedCase
Parameter TelcoinSaleCapEscrow.transferOwnership(address)._to (dataset/contracts/transaction_order/30101.sol#151) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
approveMany(address[],uint256[]) should be declared external:
	- TelcoinSaleCapEscrow.approveMany(address[],uint256[]) (dataset/contracts/transaction_order/30101.sol#96-102)
rejectMany(address[]) should be declared external:
	- TelcoinSaleCapEscrow.rejectMany(address[]) (dataset/contracts/transaction_order/30101.sol#145-149)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/30101.sol analyzed (2 contracts with 100 detectors), 17 result(s) found
