//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

library CompareUint{
    function comp(uint _a, uint _b) internal pure returns(bool confirm){
        confirm = _a >= _b ? true : false;
    }
}

contract UseLibrary{
    function compare(uint _x, uint _y) external pure returns(bool){
        return CompareUint.comp(_x,_y);
    }
}

library FindIndex{
    //error cusError(string error);
    function findIndex(uint[] storage _array, uint _a) internal view returns(uint _index){
        for (uint i = 0; i < _array.length ; i++){
            if (_array[i] == _a){
                _index = i;
            }
        
        }
            //revert cusError("Index not found");
            
        
        
    }
}

contract StateVariableAsLibraryArgs{
    using FindIndex for uint[];
    uint[] public array = [1,4,5,3,2];
    function inArray(uint _index) external view returns(uint inside){
        inside = array.findIndex(_index);
        //inside = FindIndex.findIndex(array, _index);
    }
}
