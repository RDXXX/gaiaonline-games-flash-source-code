if(!_global.com)
{
   _global.com = new Object();
}
§§pop();
if(!_global.com.omniture)
{
   _global.com.omniture = new Object();
}
§§pop();
if(!com.omniture.ActionSource)
{
   com.omniture.ActionSource.prototype = new MovieClip().__set__version = function(version)
   {
      return this.__get__version();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__version = function()
   {
      return this.s.version;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__account = function(account)
   {
      this.s.account = account;
      return this.__get__account();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__account = function()
   {
      return this.s.account;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__charSet = function(charSet)
   {
      this.s.charSet = charSet;
      return this.__get__charSet();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__charSet = function()
   {
      return this.s.charSet;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__pageName = function(pageName)
   {
      this.s.pageName = pageName;
      return this.__get__pageName();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__pageName = function()
   {
      return this.s.pageName;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__pageURL = function(pageURL)
   {
      this.s.pageURL = pageURL;
      return this.__get__pageURL();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__pageURL = function()
   {
      return this.s.pageURL;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__trackClickMap = function(trackClickMap)
   {
      this.s.trackClickMap = trackClickMap;
      return this.__get__trackClickMap();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__trackClickMap = function()
   {
      return this.s.trackClickMap;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__movieID = function(movieID)
   {
      this.s.movieID = movieID;
      return this.__get__movieID();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__movieID = function()
   {
      return this.s.movieID;
   };
   com.omniture.ActionSource.prototype = new MovieClip().__set__autoTrack = function(autoTrack)
   {
      this.s.autoTrack = autoTrack;
      return this.__get__autoTrack();
   };
   com.omniture.ActionSource.prototype = new MovieClip().__get__autoTrack = function()
   {
      return this.s.autoTrack;
   };
   com.omniture.ActionSource.prototype = new MovieClip().loadActionSource = function(path)
   {
      var _loc1_ = this;
      _loc1_.s = _loc1_.createEmptyMovieClip("s",100);
      _loc1_.s.loadMovie(path);
      _loc1_.loadInterval = setInterval(_loc1_,"checkActionSourceLoaded",10);
      _loc1_;
   };
   com.omniture.ActionSource.prototype = new MovieClip().checkActionSourceLoaded = function()
   {
      var _loc1_ = this;
      §§push(_loc1_);
      if(_loc1_.s.track.toString() == "[type Function]")
      {
         _loc1_.s.movie = _loc1_;
         _loc1_.s.wrapperObject = _loc1_;
         clearInterval(_loc1_.loadInterval);
         _loc1_.broadcastEvent("loaded");
      }
      _loc1_ = §§pop();
   };
   com.omniture.ActionSource.prototype = new MovieClip().addEventListener = function(event, obj, method)
   {
      this.broadcaster.addEventListener(event,obj,method);
   };
   com.omniture.ActionSource.prototype = new MovieClip().removeEventListener = function(event, obj, method)
   {
      this.broadcaster.removeEventListener(event,obj,method);
   };
   com.omniture.ActionSource.prototype = new MovieClip().broadcastEvent = function(event, data)
   {
      this.broadcaster.broadcastEvent(event,data);
   };
   com.omniture.ActionSource.prototype = new MovieClip().track = function()
   {
      this.s.track();
   };
   com.omniture.ActionSource.prototype = new MovieClip().trackLink = function(linkURL, linkType, linkName)
   {
      this.s.trackLink(linkURL,linkType,linkName);
   };
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("account",com.omniture.ActionSource.prototype = new MovieClip().__get__account,com.omniture.ActionSource.prototype = new MovieClip().__set__account));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("autoTrack",com.omniture.ActionSource.prototype = new MovieClip().__get__autoTrack,com.omniture.ActionSource.prototype = new MovieClip().__set__autoTrack));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("charSet",com.omniture.ActionSource.prototype = new MovieClip().__get__charSet,com.omniture.ActionSource.prototype = new MovieClip().__set__charSet));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("movieID",com.omniture.ActionSource.prototype = new MovieClip().__get__movieID,com.omniture.ActionSource.prototype = new MovieClip().__set__movieID));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("pageName",com.omniture.ActionSource.prototype = new MovieClip().__get__pageName,com.omniture.ActionSource.prototype = new MovieClip().__set__pageName));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("pageURL",com.omniture.ActionSource.prototype = new MovieClip().__get__pageURL,com.omniture.ActionSource.prototype = new MovieClip().__set__pageURL));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("trackClickMap",com.omniture.ActionSource.prototype = new MovieClip().__get__trackClickMap,com.omniture.ActionSource.prototype = new MovieClip().__set__trackClickMap));
   §§push((com.omniture.ActionSource.prototype = new MovieClip()).addProperty("version",com.omniture.ActionSource.prototype = new MovieClip().__get__version,com.omniture.ActionSource.prototype = new MovieClip().__set__version));
   §§push(ASSetPropFlags(com.omniture.ActionSource.prototype,null,1));
}
§§pop();
