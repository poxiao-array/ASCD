'solc --version' running
'solc ./dataset/contracts/transaction_order/13161.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256) (dataset/contracts/transaction_order/13161.sol#462-490) sends eth to arbitrary user
	Dangerous calls:
	- _oldOwner.transfer(payment) (dataset/contracts/transaction_order/13161.sol#487)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
etherdoodleToken (dataset/contracts/transaction_order/13161.sol#148-729) contract sets array length with a user-controlled value:
	- ownerToPixel[_to].push(_pixelId) (dataset/contracts/transaction_order/13161.sol#637)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
INFO:Detectors:
AddressUtils.isContract(address) (dataset/contracts/transaction_order/13161.sol#60-71) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
etherdoodleToken.isInvulnerableByArea(uint256) (dataset/contracts/transaction_order/13161.sol#506-616) contains a tautology or contradiction:
	- require(bool)(_pixelId >= 0 && _pixelId <= 999999) (dataset/contracts/transaction_order/13161.sol#507)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#tautology-or-contradiction
INFO:Detectors:
etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256).payment (dataset/contracts/transaction_order/13161.sol#464) is a local variable never initialized
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#uninitialized-local-variables
INFO:Detectors:
etherdoodleToken.assignCEO(address) (dataset/contracts/transaction_order/13161.sol#247-250) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/13161.sol#249) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256) (dataset/contracts/transaction_order/13161.sol#462-490) has external calls inside a loop: _oldOwner.transfer(payment) (dataset/contracts/transaction_order/13161.sol#487)
etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string) (dataset/contracts/transaction_order/13161.sol#437-459) has external calls inside a loop: msg.sender.transfer(excessValue) (dataset/contracts/transaction_order/13161.sol#455)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation/#calls-inside-a-loop
INFO:Detectors:
AddressUtils.isContract(address) (dataset/contracts/transaction_order/13161.sol#60-71) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/13161.sol#69-70)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
etherdoodleToken.isInvulnerableByArea(uint256) (dataset/contracts/transaction_order/13161.sol#506-616) has a high cyclomatic complexity (34).
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#cyclomatic-complexity
INFO:Detectors:
Version constraint ^0.4.23 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- ^0.4.23 (dataset/contracts/transaction_order/13161.sol#1)
solc-0.4.23 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Contract etherdoodleToken (dataset/contracts/transaction_order/13161.sol#148-729) is not in CapWords
Parameter etherdoodleToken.assignCEO(address)._newCEO (dataset/contracts/transaction_order/13161.sol#247) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._pixelId (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._colourR (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._colourG (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._colourB (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._price (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.updateAllPixelDetails(uint256,uint8,uint8,uint8,uint256,string)._text (dataset/contracts/transaction_order/13161.sol#253) is not in mixedCase
Parameter etherdoodleToken.approve(address,uint256)._to (dataset/contracts/transaction_order/13161.sol#286) is not in mixedCase
Parameter etherdoodleToken.approve(address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#286) is not in mixedCase
Parameter etherdoodleToken.getApproved(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#298) is not in mixedCase
Parameter etherdoodleToken.setApprovalForAll(address,bool)._to (dataset/contracts/transaction_order/13161.sol#303) is not in mixedCase
Parameter etherdoodleToken.setApprovalForAll(address,bool)._approved (dataset/contracts/transaction_order/13161.sol#303) is not in mixedCase
Parameter etherdoodleToken.exists(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#315) is not in mixedCase
Parameter etherdoodleToken.isApprovedForAll(address,address)._owner (dataset/contracts/transaction_order/13161.sol#321) is not in mixedCase
Parameter etherdoodleToken.isApprovedForAll(address,address)._operator (dataset/contracts/transaction_order/13161.sol#321) is not in mixedCase
Parameter etherdoodleToken.balanceOf(address)._owner (dataset/contracts/transaction_order/13161.sol#326) is not in mixedCase
Parameter etherdoodleToken.ownerOf(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#332) is not in mixedCase
Parameter etherdoodleToken.isApprovedOrOwner(address,uint256)._spender (dataset/contracts/transaction_order/13161.sol#338) is not in mixedCase
Parameter etherdoodleToken.isApprovedOrOwner(address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#338) is not in mixedCase
Parameter etherdoodleToken.clearApproval(address,uint256)._owner (dataset/contracts/transaction_order/13161.sol#344) is not in mixedCase
Parameter etherdoodleToken.clearApproval(address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#344) is not in mixedCase
Parameter etherdoodleToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/13161.sol#358) is not in mixedCase
Parameter etherdoodleToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/13161.sol#358) is not in mixedCase
Parameter etherdoodleToken.transferFrom(address,address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#358) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/13161.sol#366) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/13161.sol#366) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#366) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256,bytes)._from (dataset/contracts/transaction_order/13161.sol#371) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256,bytes)._to (dataset/contracts/transaction_order/13161.sol#371) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256,bytes)._pixelId (dataset/contracts/transaction_order/13161.sol#371) is not in mixedCase
Parameter etherdoodleToken.safeTransferFrom(address,address,uint256,bytes)._data (dataset/contracts/transaction_order/13161.sol#371) is not in mixedCase
Parameter etherdoodleToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/13161.sol#377) is not in mixedCase
Parameter etherdoodleToken.transfer(address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#377) is not in mixedCase
Parameter etherdoodleToken.getPixelData(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#382) is not in mixedCase
Parameter etherdoodleToken.getPixelText(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#395) is not in mixedCase
Parameter etherdoodleToken.getPixelPrice(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#400) is not in mixedCase
Parameter etherdoodleToken.getPixelsOwned(address)._owner (dataset/contracts/transaction_order/13161.sol#411) is not in mixedCase
Parameter etherdoodleToken.getOwnerPixelCount(address)._owner (dataset/contracts/transaction_order/13161.sol#416) is not in mixedCase
Parameter etherdoodleToken.getPixelColour(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#421) is not in mixedCase
Parameter etherdoodleToken.payout(address)._to (dataset/contracts/transaction_order/13161.sol#428) is not in mixedCase
Parameter etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string)._Id (dataset/contracts/transaction_order/13161.sol#437) is not in mixedCase
Parameter etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string)._R (dataset/contracts/transaction_order/13161.sol#437) is not in mixedCase
Parameter etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string)._G (dataset/contracts/transaction_order/13161.sol#437) is not in mixedCase
Parameter etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string)._B (dataset/contracts/transaction_order/13161.sol#437) is not in mixedCase
Parameter etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string)._text (dataset/contracts/transaction_order/13161.sol#437) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#462) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._colourR (dataset/contracts/transaction_order/13161.sol#462) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._colourG (dataset/contracts/transaction_order/13161.sol#462) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._colourB (dataset/contracts/transaction_order/13161.sol#462) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._text (dataset/contracts/transaction_order/13161.sol#462) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._oldOwner (dataset/contracts/transaction_order/13161.sol#463) is not in mixedCase
Parameter etherdoodleToken.processMultiPurchase(uint32,uint8,uint8,uint8,string,address,address,uint256)._newOwner (dataset/contracts/transaction_order/13161.sol#463) is not in mixedCase
Parameter etherdoodleToken.isInvulnerableByArea(uint256)._pixelId (dataset/contracts/transaction_order/13161.sol#506) is not in mixedCase
Parameter etherdoodleToken.checkAndCallSafeTransfer(address,address,uint256,bytes)._from (dataset/contracts/transaction_order/13161.sol#717) is not in mixedCase
Parameter etherdoodleToken.checkAndCallSafeTransfer(address,address,uint256,bytes)._to (dataset/contracts/transaction_order/13161.sol#717) is not in mixedCase
Parameter etherdoodleToken.checkAndCallSafeTransfer(address,address,uint256,bytes)._pixelId (dataset/contracts/transaction_order/13161.sol#717) is not in mixedCase
Parameter etherdoodleToken.checkAndCallSafeTransfer(address,address,uint256,bytes)._data (dataset/contracts/transaction_order/13161.sol#717) is not in mixedCase
Constant etherdoodleToken.stepAt (dataset/contracts/transaction_order/13161.sol#176) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
Reentrancy in etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string) (dataset/contracts/transaction_order/13161.sol#437-459):
	External calls:
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- _oldOwner.transfer(payment) (dataset/contracts/transaction_order/13161.sol#487)
	- msg.sender.transfer(excessValue) (dataset/contracts/transaction_order/13161.sol#455)
	State variables written after the call(s):
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- ownerPixelCount[_to] = SafeMath.add(ownerPixelCount[_to],1) (dataset/contracts/transaction_order/13161.sol#636)
		- ownerPixelCount[_from] = SafeMath.sub(ownerPixelCount[_from],1) (dataset/contracts/transaction_order/13161.sol#645)
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- ownerToPixel[_to].push(_pixelId) (dataset/contracts/transaction_order/13161.sol#637)
		- ownerToPixel[_from][i] = ownerToPixel[_from][ownerToPixel[_from].length - 1] (dataset/contracts/transaction_order/13161.sol#641)
		- delete ownerToPixel[_from][ownerToPixel[_from].length - 1] (dataset/contracts/transaction_order/13161.sol#642)
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- pixelToApproved[_pixelId] = address(0) (dataset/contracts/transaction_order/13161.sol#347)
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- pixelToOwner[_pixelId] = _to (dataset/contracts/transaction_order/13161.sol#647)
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- pixelToPrice[_id] = startingPrice (dataset/contracts/transaction_order/13161.sol#628)
		- pixelToPrice[_pixelId] = SafeMath.div(SafeMath.mul(sellingPrice,300),95) (dataset/contracts/transaction_order/13161.sol#480)
		- pixelToPrice[_pixelId] = SafeMath.div(SafeMath.mul(sellingPrice,150),95) (dataset/contracts/transaction_order/13161.sol#482)
	- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
		- pixels[_pixelId].colourR = _colourR (dataset/contracts/transaction_order/13161.sol#493)
		- pixels[_id] = Pixel(_id,_colourR,_colourG,_colourB,_pixelText) (dataset/contracts/transaction_order/13161.sol#627)
		- pixels[_pixelId].pixelText = _text (dataset/contracts/transaction_order/13161.sol#500)
		- pixels[_pixelId].colourG = _colourG (dataset/contracts/transaction_order/13161.sol#494)
		- pixels[_pixelId].colourB = _colourB (dataset/contracts/transaction_order/13161.sol#495)
	Event emitted after the call(s):
	- Approval(_owner,address(0),_pixelId) (dataset/contracts/transaction_order/13161.sol#348)
		- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
	- ColourChanged(_id,_colourR,_colourG,_colourB) (dataset/contracts/transaction_order/13161.sol#629)
		- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
	- ColourChanged(_pixelId,_colourR,_colourG,_colourB) (dataset/contracts/transaction_order/13161.sol#496)
		- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
	- TextChanged(_pixelId,_text) (dataset/contracts/transaction_order/13161.sol#501)
		- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
	- Transfer(_from,_to,_pixelId) (dataset/contracts/transaction_order/13161.sol#648)
		- excessValue = processMultiPurchase(_Id[i],_R[i],_G[i],_B[i],_text,oldOwner,newOwner,excessValue) (dataset/contracts/transaction_order/13161.sol#451)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-4
INFO:Detectors:
onERC721Received(address,uint256,bytes) should be declared external:
	- ERC721Receiver.onERC721Received(address,uint256,bytes) (dataset/contracts/transaction_order/13161.sol#139-145)
multiPurchase(uint32[],uint8[],uint8[],uint8[],string) should be declared external:
	- etherdoodleToken.multiPurchase(uint32[],uint8[],uint8[],uint8[],string) (dataset/contracts/transaction_order/13161.sol#437-459)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/13161.sol analyzed (5 contracts with 100 detectors), 74 result(s) found
