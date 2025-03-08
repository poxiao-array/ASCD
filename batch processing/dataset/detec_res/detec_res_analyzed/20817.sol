'solc --version' running
'solc ./dataset/contracts/transaction_order/20817.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
DinarETHCrypto.fallback() (dataset/contracts/transaction_order/20817.sol#114-118) sends eth to arbitrary user
	Dangerous calls:
	- owner.transfer(this.balance) (dataset/contracts/transaction_order/20817.sol#116)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
DinarETHCrypto.transferOwnership(address) (dataset/contracts/transaction_order/20817.sol#233-235) should emit an event for: 
	- owner = _newOwner (dataset/contracts/transaction_order/20817.sol#234) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
DinarETHCrypto.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/20817.sol#233) lacks a zero-check on :
		- owner = _newOwner (dataset/contracts/transaction_order/20817.sol#234)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.19 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.19 (dataset/contracts/transaction_order/20817.sol#1)
solc-0.4.19 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter DinarETHCrypto.balanceOf(address)._owner (dataset/contracts/transaction_order/20817.sol#121) is not in mixedCase
Parameter DinarETHCrypto.transfer(address,uint256)._to (dataset/contracts/transaction_order/20817.sol#131) is not in mixedCase
Parameter DinarETHCrypto.transfer(address,uint256)._amount (dataset/contracts/transaction_order/20817.sol#131) is not in mixedCase
Parameter DinarETHCrypto.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20817.sol#146) is not in mixedCase
Parameter DinarETHCrypto.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20817.sol#146) is not in mixedCase
Parameter DinarETHCrypto.transferFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/20817.sol#146) is not in mixedCase
Parameter DinarETHCrypto.approve(address,uint256)._spender (dataset/contracts/transaction_order/20817.sol#166) is not in mixedCase
Parameter DinarETHCrypto.approve(address,uint256)._amount (dataset/contracts/transaction_order/20817.sol#166) is not in mixedCase
Parameter DinarETHCrypto.allowance(address,address)._owner (dataset/contracts/transaction_order/20817.sol#176) is not in mixedCase
Parameter DinarETHCrypto.allowance(address,address)._spender (dataset/contracts/transaction_order/20817.sol#176) is not in mixedCase
Parameter DinarETHCrypto.send(address,uint256)._to (dataset/contracts/transaction_order/20817.sol#180) is not in mixedCase
Parameter DinarETHCrypto.send(address,uint256)._amount (dataset/contracts/transaction_order/20817.sol#180) is not in mixedCase
Parameter DinarETHCrypto.sendFrom(address,address,uint256)._from (dataset/contracts/transaction_order/20817.sol#184) is not in mixedCase
Parameter DinarETHCrypto.sendFrom(address,address,uint256)._to (dataset/contracts/transaction_order/20817.sol#184) is not in mixedCase
Parameter DinarETHCrypto.sendFrom(address,address,uint256)._amount (dataset/contracts/transaction_order/20817.sol#184) is not in mixedCase
Parameter DinarETHCrypto.increaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/20817.sol#192) is not in mixedCase
Parameter DinarETHCrypto.increaseApproval(address,uint256)._addedValue (dataset/contracts/transaction_order/20817.sol#192) is not in mixedCase
Parameter DinarETHCrypto.decreaseApproval(address,uint256)._spender (dataset/contracts/transaction_order/20817.sol#201) is not in mixedCase
Parameter DinarETHCrypto.decreaseApproval(address,uint256)._subtractedValue (dataset/contracts/transaction_order/20817.sol#201) is not in mixedCase
Parameter DinarETHCrypto.setGoldCertVerifier(string)._baseURL (dataset/contracts/transaction_order/20817.sol#222) is not in mixedCase
Parameter DinarETHCrypto.changeNameSymbol(string,string)._name (dataset/contracts/transaction_order/20817.sol#227) is not in mixedCase
Parameter DinarETHCrypto.changeNameSymbol(string,string)._symbol (dataset/contracts/transaction_order/20817.sol#227) is not in mixedCase
Parameter DinarETHCrypto.transferOwnership(address)._newOwner (dataset/contracts/transaction_order/20817.sol#233) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
DinarETHCrypto.fallback() (dataset/contracts/transaction_order/20817.sol#114-118) uses literals with too many digits:
	- this.balance > 1000000000000000000 (dataset/contracts/transaction_order/20817.sol#115)
DinarETHCrypto.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/20817.sol#76-237) uses literals with too many digits:
	- DNARtoGoldXchgRate = 10000000 (dataset/contracts/transaction_order/20817.sol#83)
DinarETHCrypto.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/20817.sol#76-237) uses literals with too many digits:
	- _totalSupply = 9900000000000000 (dataset/contracts/transaction_order/20817.sol#84)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
setGoldCertVerifier(string) should be declared external:
	- DinarETHCrypto.setGoldCertVerifier(string) (dataset/contracts/transaction_order/20817.sol#222-224)
	- DinarETHInterface.setGoldCertVerifier(string) (dataset/contracts/transaction_order/20817.sol#66)
changeNameSymbol(string,string) should be declared external:
	- DinarETHCrypto.changeNameSymbol(string,string) (dataset/contracts/transaction_order/20817.sol#227-230)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/20817.sol analyzed (4 contracts with 100 detectors), 33 result(s) found
