package com.gaiaworld.pets.cats
{
   import com.gaiaworld.global.util.StringFunctions;
   import com.gaiaworld.pets.BasePet;
   import com.gaiaworld.pets.constants.PetConstants;
   import com.gaiaworld.pets.interfaces.IPet;
   import com.gaiaworld.room.interfaces.ISurfaceObject;
   import com.gaiaworld.room.interfaces.IWorldItem2;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class Cat extends BasePet implements ISurfaceObject, IPet, IWorldItem2
   {
       
      
      private var hitShape:MovieClip;
      
      private var checkFrameOn:Boolean = false;
      
      private var myColor:Number;
      
      private var text2:TextField;
      
      private var advTimer:Timer;
      
      private var eyeDelayTimer:Timer;
      
      private var ec:ColorTransform;
      
      public var useName:Boolean = true;
      
      public function Cat()
      {
         this.hitShape = new MovieClip();
         this.text2 = new TextField();
         this.advTimer = new Timer(250);
         this.eyeDelayTimer = new Timer(1000);
         super();
         speed = petModel.speed;
         loadPet("pets/cat.swf");
         this.addChild(this.hitShape);
         this.hitBox = this.hitShape;
         this.hitShape.visible = false;
         checkStats();
      }
      
      override protected function adjustX() : void
      {
         if(moveX > 0)
         {
            loader.x = 20;
         }
         else
         {
            loader.x = -20;
         }
      }
      
      private function advAnimation(param1:TimerEvent) : void
      {
         if(this.checkAnimation())
         {
            this.animationPath().nextFrame();
            if(this.animationPath().currentFrame == this.animationPath().totalFrames)
            {
               this.animationPath().gotoAndStop(1);
            }
         }
      }
      
      private function showFrame(param1:Event) : void
      {
         if(this.checkAnimation())
         {
            this.text2.text = String(this.animationPath().currentFrame);
         }
      }
      
      override public function get myName() : String
      {
         return "fluff";
      }
      
      override public function setAction(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
         if(StringFunctions.startsWith("eat:",param1) == true)
         {
            _loc2_ = param1.split(":");
            _loc3_ = Number(_loc2_[1]);
            this.doEatAnimation(_loc3_);
         }
         switch(param1)
         {
            case "sleep":
               this.doSleepAnimation();
               currentStatus = "sleep";
               break;
            case "wait":
               this.doWaitAnimation();
               break;
            case "wash":
               this.doWashAnimation();
               break;
            case "walk":
               this.doWalkAnimation();
               break;
            case "happy":
               this.doHappyAnimation();
               break;
            case "sad":
               this.doSadAnimation();
               break;
            case "eat":
               this.doEatAnimation();
         }
      }
      
      public function goFrame(param1:Number) : void
      {
         this.animationPath().gotoAndStop(param1);
      }
      
      public function getTotalFrames() : *
      {
         return this.animationPath().totalFrames;
      }
      
      private function turnToFront() : *
      {
         switch(dataProvider.lifeStage)
         {
            case PetConstants.LIFE_STAGE_ADULT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("adult_front");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_ADOLESCENT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("adolescent_front");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_INFANT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("kitten_front");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_EGG:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("box_front");
                  }
               }
         }
      }
      
      private function turnToBack() : *
      {
         switch(dataProvider.lifeStage)
         {
            case PetConstants.LIFE_STAGE_ADULT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("adult_back");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_ADOLESCENT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("adolescent_back");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_INFANT:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("kitten_back");
                  }
               }
               break;
            case PetConstants.LIFE_STAGE_EGG:
               if(petClip)
               {
                  if(petClip.pet)
                  {
                     petClip.pet.gotoAndStop("box_back");
                  }
               }
         }
      }
      
      override public function setName(param1:String) : void
      {
         if(this.useName == false)
         {
            return;
         }
         var _loc2_:TextFormat = new TextFormat();
         var _loc3_:Font = new Font3();
         _loc2_.font = _loc3_.fontName;
         _loc2_.size = 12;
         _loc2_.color = 0;
         text1.multiline = false;
         text1.selectable = false;
         text1.autoSize = TextFieldAutoSize.CENTER;
         text1.text = param1 + " ";
         text1.x = -text1.width / 2;
         text1.y = loader.y + loader.height + 6;
         if(dataProvider.lifeStage == 1)
         {
            text1.y = loader.y + loader.height + 30;
         }
         this.addChild(text1);
      }
      
      override protected function buildPet() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:ColorTransform = null;
         var _loc3_:Number = NaN;
         var _loc4_:ColorTransform = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:ColorTransform = null;
         if(dataProvider != null && petIsLoaded == true && petClip != null)
         {
            if(this.owner == null)
            {
               this.visible = true;
            }
            if(dataProvider.name != null)
            {
               this.setName(dataProvider.name);
            }
            if(faceFront == true)
            {
               this.turnToFront();
            }
            else
            {
               this.turnToBack();
            }
            if(this.checkAnimation())
            {
               if(this.animationPath().accessory_mouth)
               {
                  this.animationPath().accessory_mouth.visible = false;
               }
               if(this.animationPath().accessory_head)
               {
                  this.animationPath().accessory_head.visible = false;
               }
               if(this.animationPath().accessory_collar_front)
               {
                  this.animationPath().accessory_collar_front.visible = false;
               }
            }
            this.myColor = this.dataProvider.color;
            _loc1_ = 1;
            switch(dataProvider.coat_pattern)
            {
               case "solid":
                  _loc1_ = 1;
                  break;
               case "tabby":
                  _loc1_ = 2;
                  break;
               case "urajiro":
                  _loc1_ = 3;
                  break;
               case "saddle":
                  _loc1_ = 4;
                  break;
               case "point":
                  _loc1_ = 5;
                  break;
               case "leopard":
                  _loc1_ = 6;
                  break;
               case "feral":
                  _loc1_ = 7;
                  break;
               case "calico":
                  _loc1_ = 8;
                  break;
               case "mask":
                  _loc1_ = 9;
                  break;
               case "tortoiseshell":
                  _loc1_ = 10;
            }
            if(this.headPath())
            {
               _loc3_ = 1;
               switch(dataProvider.head_type)
               {
                  case "smooth":
                     _loc3_ = 1;
                     break;
                  case "tufty":
                     _loc3_ = 2;
                     break;
                  case "fluffy":
                     _loc3_ = 3;
               }
               this.headPath().gotoAndStop(_loc3_);
               if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
               {
                  if(this.headPath().pc)
                  {
                     _loc2_ = MovieClip(this.headPath().pc).transform.colorTransform;
                     _loc2_.color = dataProvider.secondColor;
                     this.headPath().pc.gotoAndStop(_loc1_);
                     MovieClip(this.headPath().pc).transform.colorTransform = _loc2_;
                  }
                  if(this.headPath().uc)
                  {
                     this.headPath().uc.gotoAndStop(_loc1_);
                  }
               }
               if(this.headPath().bcHead)
               {
                  _loc4_ = Sprite(this.headPath().bcHead).transform.colorTransform;
                  _loc4_.color = this.myColor;
                  Sprite(this.headPath().bcHead).transform.colorTransform = _loc4_;
                  if(this.bodyPath())
                  {
                     if(this.bodyPath().bcBody)
                     {
                        Sprite(this.bodyPath().bcBody).transform.colorTransform = _loc4_;
                     }
                     if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                     {
                        if(this.bodyPath().pc)
                        {
                           _loc2_ = MovieClip(this.bodyPath().pc).transform.colorTransform;
                           _loc2_.color = dataProvider.secondColor;
                           this.bodyPath().pc.gotoAndStop(_loc1_);
                           MovieClip(this.bodyPath().pc).transform.colorTransform = _loc2_;
                        }
                        if(this.bodyPath().uc)
                        {
                           this.bodyPath().uc.gotoAndStop(_loc1_);
                        }
                     }
                  }
                  if(this.animationPath().legfront_l)
                  {
                     if(this.animationPath().legfront_l.bcLeg)
                     {
                        Sprite(this.animationPath().legfront_l.bcLeg).transform.colorTransform = _loc4_;
                     }
                  }
                  if(this.animationPath().legfront_r)
                  {
                     if(this.animationPath().legfront_l.bcLeg)
                     {
                        Sprite(this.animationPath().legfront_r.bcLeg).transform.colorTransform = _loc4_;
                     }
                  }
                  if(this.animationPath().legback_r)
                  {
                     if(this.animationPath().legfront_l.bcLeg)
                     {
                        Sprite(this.animationPath().legback_r.bcLeg).transform.colorTransform = _loc4_;
                     }
                  }
                  if(this.animationPath().legback_l)
                  {
                     if(this.animationPath().legback_l.bcLeg)
                     {
                        Sprite(this.animationPath().legback_l.bcLeg).transform.colorTransform = _loc4_;
                     }
                  }
                  _loc5_ = 1;
                  switch(dataProvider.tail_type)
                  {
                     case "long":
                        _loc5_ = 1;
                        break;
                     case "fluffy":
                        _loc5_ = 2;
                        break;
                     case "short":
                        _loc5_ = 3;
                  }
                  if(this.animationPath().tail)
                  {
                     this.animationPath().tail.gotoAndStop(_loc5_);
                     if(this.animationPath().tail.bcTail)
                     {
                        this.animationPath().tail.bcTail.transform.colorTransform = _loc4_;
                     }
                     if(this.animationPath().tail)
                     {
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().tail.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().tail.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().tail.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().tail.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().tail.uc)
                           {
                              this.animationPath().tail.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                  }
                  if(this.animationPath().tail2)
                  {
                     this.animationPath().tail2.gotoAndStop(_loc5_);
                     if(this.animationPath().tail2.bcTail)
                     {
                        this.animationPath().tail2.bcTail.transform.colorTransform = _loc4_;
                     }
                     if(this.animationPath().tail2)
                     {
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().tail2.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().tail2.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().tail2.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().tail2.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().tail2.uc)
                           {
                              this.animationPath().tail2.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                  }
                  if(this.animationPath().tail3)
                  {
                     this.animationPath().tail3.gotoAndStop(_loc5_);
                     if(this.animationPath().tail3.bcTail)
                     {
                        Sprite(this.animationPath().tail3.bcTail).transform.colorTransform = _loc4_;
                     }
                     if(this.animationPath().tail3)
                     {
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().tail3.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().tail3.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().tail3.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().tail3.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().tail3.uc)
                           {
                              this.animationPath().tail3.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                  }
                  if(this.animationPath().tail4)
                  {
                     this.animationPath().tail4.gotoAndStop(_loc5_);
                     if(this.animationPath().tail4.bcTail)
                     {
                        Sprite(this.animationPath().tail4.bcTail).transform.colorTransform = _loc4_;
                     }
                     if(this.animationPath().tail4)
                     {
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().tail4.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().tail4.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().tail4.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().tail4.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().tail4.uc)
                           {
                              this.animationPath().tail4.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                  }
                  _loc6_ = 1;
                  switch(dataProvider.ear_type)
                  {
                     case "pointed":
                        _loc6_ = 1;
                        break;
                     case "folded":
                        _loc6_ = 2;
                        break;
                     case "curved":
                        _loc6_ = 3;
                  }
                  if(this.checkAnimation())
                  {
                     if(this.animationPath().ear_l)
                     {
                        MovieClip(this.animationPath().ear_l).gotoAndStop(_loc6_);
                        if(this.animationPath().ear_l.bc)
                        {
                           MovieClip(this.animationPath().ear_l.bc).transform.colorTransform = _loc4_;
                        }
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().ear_l.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().ear_l.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().ear_l.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().ear_l.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().ear_l.uc)
                           {
                              this.animationPath().ear_l.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                     if(this.animationPath().ear_r)
                     {
                        MovieClip(this.animationPath().ear_r).gotoAndStop(_loc6_);
                        if(this.animationPath().ear_r.bc)
                        {
                           MovieClip(this.animationPath().ear_r.bc).transform.colorTransform = _loc4_;
                        }
                        if(dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                        {
                           if(this.animationPath().ear_r.pc)
                           {
                              _loc2_ = MovieClip(this.animationPath().ear_r.pc).transform.colorTransform;
                              _loc2_.color = dataProvider.secondColor;
                              this.animationPath().ear_r.pc.gotoAndStop(_loc1_);
                              MovieClip(this.animationPath().ear_r.pc).transform.colorTransform = _loc2_;
                           }
                           if(this.animationPath().ear_r.uc)
                           {
                              this.animationPath().ear_r.uc.gotoAndStop(_loc1_);
                           }
                        }
                     }
                  }
                  if(this.animationPath() != null)
                  {
                     if(this.animationPath().winkL)
                     {
                        if(this.animationPath().winkL.eye_l_back)
                        {
                           if(this.animationPath().winkL.eye_l_back)
                           {
                              this.ec = this.animationPath().winkL.eye_l_back.shadow.transform.colorTransform;
                              this.ec.color = dataProvider.eyeColor;
                              if(!this.animationPath().winkL.eye_l_back.shadow)
                              {
                              }
                              if(this.animationPath().winkL.eye_l_back.ec)
                              {
                                 this.animationPath().winkL.eye_l_back.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                     }
                     if(this.animationPath().winkR)
                     {
                        if(this.animationPath().winkR.eye_r_back)
                        {
                           if(this.animationPath().winkR.eye_r_back)
                           {
                              this.ec = this.animationPath().winkR.eye_r_back.shadow.transform.colorTransform;
                              this.ec.color = dataProvider.eyeColor;
                              if(!this.animationPath().winkR.eye_r_back.shadow)
                              {
                              }
                              if(this.animationPath().winkR.eye_r_back.ec)
                              {
                                 this.animationPath().winkR.eye_r_back.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                     }
                     if(this.animationPath().eyeL && this.animationPath().eyeR)
                     {
                        if(this.animationPath().winkOutline)
                        {
                           if(this.animationPath().winkOutline.ec)
                           {
                              this.animationPath().winkOutline.ec = this.ec;
                           }
                           if(this.animationPath().winkOutline.outline)
                           {
                              this.animationPath().winkOutline.outline = this.ec;
                           }
                        }
                        if(this.animationPath().eyeL.eye_l_back)
                        {
                           this.ec = this.animationPath().eyeL.eye_l_back.transform.colorTransform;
                           this.ec.color = dataProvider.eyeColor;
                           this.animationPath().eyeL.gotoAndStop(1);
                           this.animationPath().eyeR.gotoAndStop(1);
                           if(this.animationPath().eyeL.eye_l_back.ec)
                           {
                              this.animationPath().eyeL.eye_l_back.ec.transform.colorTransform = this.ec;
                              if(this.animationPath().eyeL.pupil)
                              {
                                 this.animationPath().eyeL.pupil.eyeStyle.gotoAndStop(this.dataProvider.eyeStyle);
                                 this.animationPath().eyeL.pupil.eyeStyle.transform.colorTransform = this.ec;
                                 if(this.animationPath().eyeL.pupil.shadow)
                                 {
                                    this.animationPath().eyeL.pupil.shadow.gotoAndStop(this.dataProvider.eyeStyle);
                                 }
                              }
                              if(this.animationPath().eyeL.outline)
                              {
                                 this.animationPath().eyeL.outline.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                        if(this.animationPath().eyeR.eye_r_back)
                        {
                           if(this.animationPath().eyeR.eye_r_back.ec)
                           {
                              this.animationPath().eyeR.eye_r_back.ec.transform.colorTransform = this.ec;
                              if(this.animationPath().eyeR.pupil)
                              {
                                 this.animationPath().eyeR.pupil.eyeStyle.gotoAndStop(this.dataProvider.eyeStyle);
                                 this.animationPath().eyeR.pupil.eyeStyle.transform.colorTransform = this.ec;
                                 if(this.animationPath().eyeR.pupil.shadow)
                                 {
                                    this.animationPath().eyeR.pupil.shadow.gotoAndStop(this.dataProvider.eyeStyle);
                                 }
                              }
                              if(this.animationPath().eyeR.outline)
                              {
                                 this.animationPath().eyeR.outline.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                        if(this.animationPath().eyeL2)
                        {
                           if(this.animationPath().eyeL2.eye_l_back)
                           {
                              if(this.animationPath().eyeL2.eye_l_back.ec)
                              {
                                 this.animationPath().eyeL2.eye_l_back.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                        if(this.animationPath().eyeR2)
                        {
                           if(this.animationPath().eyeR2.eye_r_back)
                           {
                              if(this.animationPath().eyeR2.eye_r_back.ec)
                              {
                                 this.animationPath().eyeR2.eye_r_back.ec.transform.colorTransform = this.ec;
                              }
                           }
                           if(this.animationPath().eyeR2.eye_r_back2)
                           {
                              if(this.animationPath().eyeR2.eye_r_back2.ec)
                              {
                                 this.animationPath().eyeR2.eye_r_back2.ec.transform.colorTransform = this.ec;
                              }
                           }
                        }
                     }
                     if(this.animationPath().eyeL4)
                     {
                        if(this.animationPath().eyeL4.eye_l_back)
                        {
                           if(this.animationPath().eyeL4.eye_l_back.ec)
                           {
                              this.animationPath().eyeL4.eye_l_back.ec.transform.colorTransform = this.ec;
                           }
                        }
                        if(this.animationPath().eyeL4.eye_l_back2)
                        {
                           if(this.animationPath().eyeL4.eye_l_back2.ec)
                           {
                              this.animationPath().eyeL4.eye_l_back2.ec.transform.colorTransform = this.ec;
                           }
                        }
                        if(this.animationPath().eyeL4.wink)
                        {
                           if(this.animationPath().eyeL4.wink.ec)
                           {
                              this.animationPath().eyeL4.wink.ec.transform.colorTransform = this.ec;
                           }
                        }
                     }
                     if(this.animationPath().eyeR4)
                     {
                        if(this.animationPath().eyeR4.eye_r_back)
                        {
                           if(this.animationPath().eyeR4.eye_r_back.ec)
                           {
                              this.animationPath().eyeR4.eye_r_back.ec.transform.colorTransform = this.ec;
                           }
                        }
                     }
                  }
                  if(this.animationPath() != null)
                  {
                     if(this.animationPath().mouth != null)
                     {
                        if(this.animationPath().mouth.mouth2 != null)
                        {
                           if(this.animationPath().mouth.mouth2.bc != null)
                           {
                              _loc7_ = this.animationPath().mouth.mouth2.bc.transform.colorTransform;
                              _loc7_.color = this.myColor;
                              Sprite(this.animationPath().mouth.mouth2.bc).transform.colorTransform = _loc7_;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function startEyes(param1:TimerEvent) : void
      {
         this.eyeDelayTimer.removeEventListener(TimerEvent.TIMER,this.startEyes);
         this.eyeDelayTimer.stop();
         if(this.animationPath().eyeL && this.animationPath().eyeR)
         {
            this.animationPath().eyeL.gotoAndPlay(2);
            this.animationPath().eyeR.gotoAndPlay(2);
         }
      }
      
      private function checkPetClip() : Boolean
      {
         if(petClip)
         {
            if(petClip.pet)
            {
               if(petClip.pet.pet2)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function checkAnimation() : Boolean
      {
         if(petClip)
         {
            if(petClip.pet)
            {
               if(petClip.pet.pet2)
               {
                  if(petClip.pet.pet2.animation)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function animationPath() : MovieClip
      {
         return petClip.pet.pet2.animation;
      }
      
      private function pet2Path() : MovieClip
      {
         return petClip.pet.pet2;
      }
      
      private function headPath() : MovieClip
      {
         if(this.animationPath())
         {
            if(this.animationPath().head)
            {
               return this.animationPath().head;
            }
         }
         return null;
      }
      
      private function bodyPath() : MovieClip
      {
         if(this.animationPath())
         {
            if(this.animationPath().body)
            {
               return this.animationPath().body;
            }
         }
         return null;
      }
      
      override public function doStill() : void
      {
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("still");
            this.buildPet();
         }
      }
      
      override protected function doWaitAnimation() : void
      {
         if(this.checkForWakeUp("wait") == true)
         {
            return;
         }
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("idle");
            this.buildPet();
         }
      }
      
      override protected function doWalkAnimation() : void
      {
         if(this.checkForWakeUp("walk") == true)
         {
            return;
         }
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("run");
            this.buildPet();
         }
      }
      
      override protected function doHappyAnimation() : void
      {
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("happy");
            this.buildPet();
         }
      }
      
      override protected function doSadAnimation() : void
      {
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("sad");
            this.buildPet();
         }
      }
      
      override protected function doEatAnimation(param1:Number = 1) : void
      {
         if(this.checkForWakeUp("eat") == true)
         {
            return;
         }
         if(this.checkPetClip())
         {
            if(dataProvider.lifeStage != PetConstants.LIFE_STAGE_EGG)
            {
               this.turnToFront();
               faceFront = true;
               this.pet2Path().gotoAndStop("eat");
               this.buildPet();
            }
         }
      }
      
      override protected function doSleepAnimation() : void
      {
         if(this.checkPetClip())
         {
            this.pet2Path().gotoAndStop("sleep");
            this.buildPet();
         }
      }
      
      override protected function doWashAnimation() : void
      {
         if(this.checkForWakeUp("wash") == true)
         {
            return;
         }
         if(this.checkPetClip())
         {
            if(dataProvider.lifeStage != PetConstants.LIFE_STAGE_EGG)
            {
               this.turnToFront();
               faceFront = true;
               this.pet2Path().gotoAndStop("wash");
               currentStatus = "wash";
               eventController.addEventListener(this,Event.ENTER_FRAME,this.checkFrame);
               this.buildPet();
            }
         }
      }
      
      private function checkForWakeUp(param1:String) : *
      {
         if(currentStatus == "sleep")
         {
            this.nextAction = param1;
            currentStatus = "wakeup";
            this.checkFrameOn = true;
            this.pet2Path().gotoAndStop("wakeUp");
            this.buildPet();
            eventController.addEventListener(this,Event.ENTER_FRAME,this.checkFrame);
            return true;
         }
      }
      
      private function checkFrame(param1:Event) : *
      {
         var _loc2_:Number = NaN;
         switch(currentStatus)
         {
            case "wait":
               break;
            case "walk":
               if(this.checkAnimation())
               {
                  _loc2_ = petClip.pet.pet2.animation.currentFrame;
                  if(_loc2_ == 22)
                  {
                     this.checkFrameOn = false;
                     eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
                     currentStatus = "none";
                     petClip.pet.pet2.gotoAndStop(1);
                     this.buildPet();
                  }
               }
            case "wakeup":
               if(this.checkAnimation())
               {
                  _loc2_ = petClip.pet.pet2.animation.currentFrame;
                  if(_loc2_ == 43 && this.dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADULT)
                  {
                     this.checkFrameOn = false;
                     eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
                     this.setAction(nextAction);
                  }
                  if(this.dataProvider.lifeStage == PetConstants.LIFE_STAGE_ADOLESCENT && _loc2_ == 12)
                  {
                     this.checkFrameOn = false;
                     eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
                     this.setAction(nextAction);
                  }
                  if(this.dataProvider.lifeStage == PetConstants.LIFE_STAGE_INFANT && _loc2_ == 14)
                  {
                     this.checkFrameOn = false;
                     eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
                     this.setAction(nextAction);
                  }
               }
               break;
            case "wash":
               if(this.checkAnimation())
               {
                  _loc2_ = petClip.pet.pet2.animation.currentFrame;
                  if(_loc2_ == 63)
                  {
                     this.checkFrameOn = false;
                     eventController.removeEventListener(this,Event.ENTER_FRAME,this.checkFrame);
                     this.setAction("wait");
                  }
               }
         }
      }
   }
}
