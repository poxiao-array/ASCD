'solc --version' running
'solc ./dataset/contracts/transaction_order/38864.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
MemeNetworkToken.finalize() (dataset/contracts/transaction_order/38864.sol#94-107) sends eth to arbitrary user
	Dangerous calls:
	- ! devAddress.send(this.balance) (dataset/contracts/transaction_order/38864.sol#106)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
MemeNetworkToken (dataset/contracts/transaction_order/38864.sol#20-109) has incorrect ERC20 function interface:MemeNetworkToken.transfer(address,uint256) (dataset/contracts/transaction_order/38864.sol#60-70)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-erc20-interface
INFO:Detectors:
MemeNetworkToken.MemeNetworkToken(address,uint256)._devAddress (dataset/contracts/transaction_order/38864.sol#44) lacks a zero-check on :
		- devAddress = _devAddress (dataset/contracts/transaction_order/38864.sol#47)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#64):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#66):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#79):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#81):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#83):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#85):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#95):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#98):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/38864.sol#106):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/38864.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter MemeNetworkToken.balanceOf(address)._owner (dataset/contracts/transaction_order/38864.sol#51) is not in mixedCase
Parameter MemeNetworkToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/38864.sol#60) is not in mixedCase
Parameter MemeNetworkToken.transfer(address,uint256)._value (dataset/contracts/transaction_order/38864.sol#60) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
MemeNetworkToken.slitherConstructorConstantVariables() (dataset/contracts/transaction_order/38864.sol#20-109) uses literals with too many digits:
	- tokenCreationCap = 100000000000000000000000 * tokenCreationRate (dataset/contracts/transaction_order/38864.sol#27)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Slither:./dataset/contracts/transaction_order/38864.sol analyzed (1 contracts with 100 detectors), 18 result(s) found
