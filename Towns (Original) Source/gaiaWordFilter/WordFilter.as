class gaiaWordFilter.WordFilter
{
   static var BAD_WORD = 0;
   static var CLEAN_WORD = 1;
   static var FILTER_LV = 2;
   static var WORD_LEN = 2;
   static var wordListCache = {};
   static var MASTER_WORD_LIST = [["卐","****",0],["nigger","****",0],["logicalgamer","****",0],["asshole","****",1],["asswad","****",1],["blowjob","****",1],["bukkake","****",1],["bukake","****",1],["buttsex","****",1],["buttshecks","****",1],["clit","****",1],["cocksuck","****",1],["cock","****",1],["cum","****",1],["cunt","****",1],["cyber","****",1],["dick","****",1],["dildo","****",1],["dyke","****",1],["faggot","****",1],["fag","****",1],["fuck","****",1],["fuk","****",1],["futanari","****",1],["futa","****",1],["feltch","****",1],["gaywad","****",1],["gayfer","****",1],["guro","****",1],["gook","****",1],["homo","****",1],["jiz","****",1],["kike","****",1],["kunt","****",1],["lez","****",1],["nepio","****",1],["nigga","****",1],["nudes","****",1],["nip","****",1],["paedo","****",1],["penis","****",1],["prick","****",1],["phuc","****",1],["porn","****",1],["prons","****",1],["pronz","****",1],["pussy","****",1],["poon","****",1],["rape","****",1],["rapist","****",1],["shit","****",1],["slut","****",1],["syber","****",1],["titties","****",1],["tit","****",1],["twat","****",1],["wetback","****",1],["whore","****",1],["yaoi","****",1],["yuri","****",1],["hebe","****",1],["pedo","****",1],["anal","****",4],["bastard","****",4],["bitch","****",4],["chink","****",4],["choad","****",4],["chode","****",4],["coon","****",4],["douche","****",4],["dike","****",4],["horny","****",4],["hump","****",4],["heeb","****",4],["queer","****",4],["sex","****",4],["vagina","****",4],["anus","****",9],["boner","****",9],["boob","****",9]];
   function WordFilter()
   {
   }
   static function cleanBadWords(raw, filterLv)
   {
      if(isNaN(filterLv))
      {
         filterLv = Infinity;
      }
      var _loc6_ = gaiaWordFilter.WordFilter.wordListCache["lessThan" + filterLv];
      var _loc1_ = undefined;
      var _loc7_ = _loc6_.length;
      var _loc3_ = new String(raw);
      var _loc5_ = new String(_loc3_.toLowerCase());
      var _loc2_ = undefined;
      if(_loc6_ == undefined)
      {
         _loc6_ = gaiaWordFilter.WordFilter.makeWordList(filterLv);
         _loc7_ = _loc6_.length;
      }
      var _loc4_ = 0;
      while(_loc4_ < _loc7_)
      {
         _loc2_ = _loc6_[_loc4_];
         _loc1_ = _loc5_.indexOf(_loc2_[gaiaWordFilter.WordFilter.BAD_WORD]);
         while(_loc1_ != -1)
         {
            _loc3_ = new String(_loc3_.substr(0,_loc1_) + _loc2_[gaiaWordFilter.WordFilter.CLEAN_WORD] + _loc3_.substr(_loc1_ + _loc2_[gaiaWordFilter.WordFilter.WORD_LEN]));
            _loc1_ = _loc5_.indexOf(_loc2_[0],_loc1_ + 1);
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   static function cleanBrackets(raw)
   {
      var _loc1_ = undefined;
      var _loc2_ = new String(raw);
      _loc1_ = _loc2_.indexOf(">");
      while(_loc1_ != -1)
      {
         _loc2_ = new String(_loc2_.substr(0,_loc1_) + "&gt;" + _loc2_.substr(_loc1_ + 1));
         _loc1_ = _loc2_.indexOf(">",_loc1_ + 1);
      }
      _loc1_ = _loc2_.indexOf("<");
      while(_loc1_ != -1)
      {
         _loc2_ = new String(_loc2_.substr(0,_loc1_) + "&lt;" + _loc2_.substr(_loc1_ + 1));
         _loc1_ = _loc2_.indexOf("<",_loc1_ + 1);
      }
      return _loc2_;
   }
   static function cleanBracketsAndBadWords(raw, filterLv)
   {
      return gaiaWordFilter.WordFilter.cleanBrackets(gaiaWordFilter.WordFilter.cleanBadWords(raw,filterLv));
   }
   static function noBadWords(raw, filterLv)
   {
      if(isNaN(filterLv))
      {
         filterLv = Infinity;
      }
      var _loc5_ = gaiaWordFilter.WordFilter.wordListCache["lessThan" + filterLv];
      var _loc2_ = _loc5_.length;
      var _loc4_ = undefined;
      var _loc3_ = undefined;
      var _loc7_ = new String(raw.toLowerCase());
      var _loc6_ = true;
      if(_loc5_ == undefined)
      {
         _loc5_ = gaiaWordFilter.WordFilter.makeWordList(filterLv);
         _loc2_ = _loc5_.length;
      }
      var _loc1_ = 0;
      while(_loc1_ < _loc2_)
      {
         _loc4_ = _loc5_[_loc1_];
         _loc3_ = _loc7_.indexOf(_loc4_[gaiaWordFilter.WordFilter.BAD_WORD]);
         if(_loc3_ != -1)
         {
            _loc6_ = false;
            _loc1_ = _loc2_;
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc6_;
   }
   static function noBrackets(raw)
   {
      var _loc1_ = undefined;
      var _loc2_ = true;
      _loc1_ = raw.indexOf(">");
      if(_loc1_ != -1)
      {
         _loc2_ = false;
      }
      _loc1_ = raw.indexOf("<");
      if(_loc1_ != -1)
      {
         _loc2_ = false;
      }
      return _loc2_;
   }
   static function noBracketsOrBadWords(raw, filterLv)
   {
      return gaiaWordFilter.WordFilter.noBadWords(raw,filterLv) && gaiaWordFilter.WordFilter.noBrackets(raw);
   }
   static function makeWordList(filterLv)
   {
      var _loc4_ = gaiaWordFilter.WordFilter.MASTER_WORD_LIST.length;
      var _loc2_ = new Array();
      if(isNaN(filterLv))
      {
         filterLv = Infinity;
      }
      var _loc1_ = 0;
      while(_loc1_ < _loc4_)
      {
         if(gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.FILTER_LV] <= filterLv)
         {
            _loc2_.push([gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.BAD_WORD],gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.CLEAN_WORD],gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.BAD_WORD].length]);
         }
         _loc1_ = _loc1_ + 1;
      }
      gaiaWordFilter.WordFilter.wordListCache["lessThan" + filterLv] = _loc2_;
      return _loc2_;
   }
   static function getBadWords(filterLv)
   {
      var _loc2_ = new Array();
      var _loc4_ = gaiaWordFilter.WordFilter.MASTER_WORD_LIST.length;
      if(isNaN(filterLv))
      {
         filterLv = Infinity;
      }
      var _loc1_ = 0;
      while(_loc1_ < _loc4_)
      {
         if(gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.FILTER_LV] <= filterLv)
         {
            _loc2_.push(gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.BAD_WORD]);
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc2_;
   }
   static function getBadWordData(filterLv)
   {
      var _loc3_ = new Array();
      var _loc2_ = undefined;
      var _loc5_ = gaiaWordFilter.WordFilter.MASTER_WORD_LIST.length;
      if(isNaN(filterLv))
      {
         filterLv = Infinity;
      }
      var _loc1_ = 0;
      while(_loc1_ < _loc5_)
      {
         if(gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.FILTER_LV] <= filterLv)
         {
            _loc2_ = new Object();
            _loc2_.word = gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.BAD_WORD];
            _loc2_.cleanedWord = gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.CLEAN_WORD];
            _loc2_.filterLevel = gaiaWordFilter.WordFilter.MASTER_WORD_LIST[_loc1_][gaiaWordFilter.WordFilter.FILTER_LV];
            _loc3_.push(_loc2_);
         }
         _loc1_ = _loc1_ + 1;
      }
      return _loc3_;
   }
}
