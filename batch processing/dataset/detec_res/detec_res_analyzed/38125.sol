'solc --version' running
'solc ./dataset/contracts/transaction_order/38125.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
SandwichShop.addToCart(uint256,string).newOrder (dataset/contracts/transaction_order/38125.sol#111) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
SandwichShop.transferFromRegister(address,uint256).addr (dataset/contracts/transaction_order/38125.sol#170) lacks a zero-check on :
		- addr.transfer(amount) (dataset/contracts/transaction_order/38125.sol#174)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
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
	- ^0.4.11 (dataset/contracts/transaction_order/38125.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Event SandwichShop.testSandwichOrder(uint256,address) (dataset/contracts/transaction_order/38125.sol#31) is not in CapWords
Parameter SandwichShop.getSandwichInfo(uint256)._sandwich (dataset/contracts/transaction_order/38125.sol#84) is not in mixedCase
Parameter SandwichShop.decrementQuantity(uint256)._sandnum (dataset/contracts/transaction_order/38125.sol#97) is not in mixedCase
Parameter SandwichShop.setQuantity(uint256,uint256)._sandnum (dataset/contracts/transaction_order/38125.sol#102) is not in mixedCase
Parameter SandwichShop.setQuantity(uint256,uint256)._quantity (dataset/contracts/transaction_order/38125.sol#102) is not in mixedCase
Parameter SandwichShop.addToCart(uint256,string)._sandwichID (dataset/contracts/transaction_order/38125.sol#107) is not in mixedCase
Parameter SandwichShop.addToCart(uint256,string)._notes (dataset/contracts/transaction_order/38125.sol#107) is not in mixedCase
Parameter SandwichShop.getCartLength(address)._curious (dataset/contracts/transaction_order/38125.sol#127) is not in mixedCase
Parameter SandwichShop.getCartItemInfo(address,uint256)._curious (dataset/contracts/transaction_order/38125.sol#132) is not in mixedCase
Parameter SandwichShop.getCartItemInfo(address,uint256)._slot (dataset/contracts/transaction_order/38125.sol#132) is not in mixedCase
Parameter SandwichShop.getCartSubtotal(address)._curious (dataset/contracts/transaction_order/38125.sol#143) is not in mixedCase
Parameter SandwichShop.checkoutCart(string)._firstname (dataset/contracts/transaction_order/38125.sol#148) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
addToCart(uint256,string) should be declared external:
	- SandwichShop.addToCart(uint256,string) (dataset/contracts/transaction_order/38125.sol#107-124)
checkoutCart(string) should be declared external:
	- SandwichShop.checkoutCart(string) (dataset/contracts/transaction_order/38125.sol#148-168)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/38125.sol analyzed (1 contracts with 100 detectors), 18 result(s) found
