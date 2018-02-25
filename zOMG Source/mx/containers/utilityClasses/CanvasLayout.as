package mx.containers.utilityClasses
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import mx.containers.errors.ConstraintError;
   import mx.core.Container;
   import mx.core.EdgeMetrics;
   import mx.core.FlexVersion;
   import mx.core.IConstraintClient;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.events.ChildExistenceChangedEvent;
   import mx.events.MoveEvent;
   
   use namespace mx_internal;
   
   public class CanvasLayout extends Layout
   {
      
      mx_internal static const VERSION:String = "3.6.0.21751";
      
      private static var r:Rectangle = new Rectangle();
       
      
      private var colSpanChildren:Array;
      
      private var constraintRegionsInUse:Boolean = false;
      
      private var rowSpanChildren:Array;
      
      private var constraintCache:Dictionary;
      
      private var _contentArea:Rectangle;
      
      public function CanvasLayout()
      {
         colSpanChildren = [];
         rowSpanChildren = [];
         constraintCache = new Dictionary(true);
         super();
      }
      
      private function parseConstraints(child:IUIComponent = null) : ChildConstraintInfo
      {
         var left:Number = NaN;
         var right:Number = NaN;
         var horizontalCenter:Number = NaN;
         var top:Number = NaN;
         var bottom:Number = NaN;
         var verticalCenter:Number = NaN;
         var baseline:Number = NaN;
         var leftBoundary:String = null;
         var rightBoundary:String = null;
         var hcBoundary:String = null;
         var topBoundary:String = null;
         var bottomBoundary:String = null;
         var vcBoundary:String = null;
         var baselineBoundary:String = null;
         var temp:Array = null;
         var i:int = 0;
         var col:ConstraintColumn = null;
         var found:Boolean = false;
         var row:ConstraintRow = null;
         var constraints:LayoutConstraints = getLayoutConstraints(child);
         if(!constraints)
         {
            return null;
         }
         temp = parseConstraintExp(constraints.left);
         if(!temp)
         {
            left = NaN;
         }
         else if(temp.length == 1)
         {
            left = Number(temp[0]);
         }
         else
         {
            leftBoundary = temp[0];
            left = temp[1];
         }
         temp = parseConstraintExp(constraints.right);
         if(!temp)
         {
            right = NaN;
         }
         else if(temp.length == 1)
         {
            right = Number(temp[0]);
         }
         else
         {
            rightBoundary = temp[0];
            right = temp[1];
         }
         temp = parseConstraintExp(constraints.horizontalCenter);
         if(!temp)
         {
            horizontalCenter = NaN;
         }
         else if(temp.length == 1)
         {
            horizontalCenter = Number(temp[0]);
         }
         else
         {
            hcBoundary = temp[0];
            horizontalCenter = temp[1];
         }
         temp = parseConstraintExp(constraints.top);
         if(!temp)
         {
            top = NaN;
         }
         else if(temp.length == 1)
         {
            top = Number(temp[0]);
         }
         else
         {
            topBoundary = temp[0];
            top = temp[1];
         }
         temp = parseConstraintExp(constraints.bottom);
         if(!temp)
         {
            bottom = NaN;
         }
         else if(temp.length == 1)
         {
            bottom = Number(temp[0]);
         }
         else
         {
            bottomBoundary = temp[0];
            bottom = temp[1];
         }
         temp = parseConstraintExp(constraints.verticalCenter);
         if(!temp)
         {
            verticalCenter = NaN;
         }
         else if(temp.length == 1)
         {
            verticalCenter = Number(temp[0]);
         }
         else
         {
            vcBoundary = temp[0];
            verticalCenter = temp[1];
         }
         temp = parseConstraintExp(constraints.baseline);
         if(!temp)
         {
            baseline = NaN;
         }
         else if(temp.length == 1)
         {
            baseline = Number(temp[0]);
         }
         else
         {
            baselineBoundary = temp[0];
            baseline = temp[1];
         }
         var colEntry:ContentColumnChild = new ContentColumnChild();
         var pushEntry:Boolean = false;
         var leftIndex:Number = 0;
         var rightIndex:Number = 0;
         var hcIndex:Number = 0;
         for(i = 0; i < IConstraintLayout(target).constraintColumns.length; i++)
         {
            col = IConstraintLayout(target).constraintColumns[i];
            if(col.mx_internal::contentSize)
            {
               if(col.id == leftBoundary)
               {
                  colEntry.leftCol = col;
                  colEntry.leftOffset = left;
                  colEntry.left = leftIndex = i;
                  pushEntry = true;
               }
               if(col.id == rightBoundary)
               {
                  colEntry.rightCol = col;
                  colEntry.rightOffset = right;
                  colEntry.right = rightIndex = i + 1;
                  pushEntry = true;
               }
               if(col.id == hcBoundary)
               {
                  colEntry.hcCol = col;
                  colEntry.hcOffset = horizontalCenter;
                  colEntry.hc = hcIndex = i + 1;
                  pushEntry = true;
               }
            }
         }
         if(pushEntry)
         {
            colEntry.child = child;
            if(colEntry.leftCol && !colEntry.rightCol || colEntry.rightCol && !colEntry.leftCol || colEntry.hcCol)
            {
               colEntry.span = 1;
            }
            else
            {
               colEntry.span = rightIndex - leftIndex;
            }
            found = false;
            for(i = 0; i < colSpanChildren.length; i++)
            {
               if(colEntry.child == colSpanChildren[i].child)
               {
                  found = true;
                  break;
               }
            }
            if(!found)
            {
               colSpanChildren.push(colEntry);
            }
         }
         pushEntry = false;
         var rowEntry:ContentRowChild = new ContentRowChild();
         var topIndex:Number = 0;
         var bottomIndex:Number = 0;
         var vcIndex:Number = 0;
         var baselineIndex:Number = 0;
         for(i = 0; i < IConstraintLayout(target).constraintRows.length; i++)
         {
            row = IConstraintLayout(target).constraintRows[i];
            if(row.mx_internal::contentSize)
            {
               if(row.id == topBoundary)
               {
                  rowEntry.topRow = row;
                  rowEntry.topOffset = top;
                  rowEntry.top = topIndex = i;
                  pushEntry = true;
               }
               if(row.id == bottomBoundary)
               {
                  rowEntry.bottomRow = row;
                  rowEntry.bottomOffset = bottom;
                  rowEntry.bottom = bottomIndex = i + 1;
                  pushEntry = true;
               }
               if(row.id == vcBoundary)
               {
                  rowEntry.vcRow = row;
                  rowEntry.vcOffset = verticalCenter;
                  rowEntry.vc = vcIndex = i + 1;
                  pushEntry = true;
               }
               if(row.id == baselineBoundary)
               {
                  rowEntry.baselineRow = row;
                  rowEntry.baselineOffset = baseline;
                  rowEntry.baseline = baselineIndex = i + 1;
                  pushEntry = true;
               }
            }
         }
         if(pushEntry)
         {
            rowEntry.child = child;
            if(rowEntry.topRow && !rowEntry.bottomRow || rowEntry.bottomRow && !rowEntry.topRow || rowEntry.vcRow || rowEntry.baselineRow)
            {
               rowEntry.span = 1;
            }
            else
            {
               rowEntry.span = bottomIndex - topIndex;
            }
            found = false;
            for(i = 0; i < rowSpanChildren.length; i++)
            {
               if(rowEntry.child == rowSpanChildren[i].child)
               {
                  found = true;
                  break;
               }
            }
            if(!found)
            {
               rowSpanChildren.push(rowEntry);
            }
         }
         var info:ChildConstraintInfo = new ChildConstraintInfo(left,right,horizontalCenter,top,bottom,verticalCenter,baseline,leftBoundary,rightBoundary,hcBoundary,topBoundary,bottomBoundary,vcBoundary,baselineBoundary);
         constraintCache[child] = info;
         return info;
      }
      
      private function bound(a:Number, min:Number, max:Number) : Number
      {
         if(a < min)
         {
            a = min;
         }
         else if(a > max)
         {
            a = max;
         }
         else
         {
            a = Math.floor(a);
         }
         return a;
      }
      
      private function shareRowSpace(entry:ContentRowChild, availableHeight:Number) : Number
      {
         var tempTopHeight:Number = NaN;
         var tempBtmHeight:Number = NaN;
         var share:Number = NaN;
         var topRow:ConstraintRow = entry.topRow;
         var bottomRow:ConstraintRow = entry.bottomRow;
         var child:IUIComponent = entry.child;
         var topHeight:Number = 0;
         var bottomHeight:Number = 0;
         var top:Number = !!entry.topOffset?Number(entry.topOffset):Number(0);
         var bottom:Number = !!entry.bottomOffset?Number(entry.bottomOffset):Number(0);
         if(topRow && topRow.height)
         {
            topHeight = topHeight + topRow.height;
         }
         else if(bottomRow && !topRow)
         {
            topRow = IConstraintLayout(target).constraintRows[entry.bottom - 2];
            if(topRow && topRow.height)
            {
               topHeight = topHeight + topRow.height;
            }
         }
         if(bottomRow && bottomRow.height)
         {
            bottomHeight = bottomHeight + bottomRow.height;
         }
         else if(topRow && !bottomRow)
         {
            bottomRow = IConstraintLayout(target).constraintRows[entry.top + 1];
            if(bottomRow && bottomRow.height)
            {
               bottomHeight = bottomHeight + bottomRow.height;
            }
         }
         if(topRow && isNaN(topRow.height))
         {
            topRow.setActualHeight(Math.max(0,topRow.maxHeight));
         }
         if(bottomRow && isNaN(bottomRow.height))
         {
            bottomRow.setActualHeight(Math.max(0,bottomRow.height));
         }
         var childHeight:Number = child.getExplicitOrMeasuredHeight();
         if(childHeight)
         {
            if(!entry.topRow)
            {
               if(childHeight > topHeight)
               {
                  tempBtmHeight = childHeight - topHeight + bottom;
               }
               else
               {
                  tempBtmHeight = childHeight + bottom;
               }
            }
            if(!entry.bottomRow)
            {
               if(childHeight > bottomHeight)
               {
                  tempTopHeight = childHeight - bottomHeight + top;
               }
               else
               {
                  tempTopHeight = childHeight + top;
               }
            }
            if(entry.topRow && entry.bottomRow)
            {
               share = childHeight / Number(entry.span);
               if(share + top < topHeight)
               {
                  tempTopHeight = topHeight;
                  tempBtmHeight = childHeight - (topHeight - top) + bottom;
               }
               else
               {
                  tempTopHeight = share + top;
               }
               if(share + bottom < bottomHeight)
               {
                  tempBtmHeight = bottomHeight;
                  tempTopHeight = childHeight - (bottomHeight - bottom) + top;
               }
               else
               {
                  tempBtmHeight = share + bottom;
               }
            }
            tempBtmHeight = bound(tempBtmHeight,bottomRow.minHeight,bottomRow.maxHeight);
            bottomRow.setActualHeight(tempBtmHeight);
            availableHeight = availableHeight - tempBtmHeight;
            tempTopHeight = bound(tempTopHeight,topRow.minHeight,topRow.maxHeight);
            topRow.setActualHeight(tempTopHeight);
            availableHeight = availableHeight - tempTopHeight;
         }
         return availableHeight;
      }
      
      private function parseConstraintExp(val:String) : Array
      {
         if(!val)
         {
            return null;
         }
         var temp:String = val.replace(/:/g," ");
         var args:Array = temp.split(/\s+/);
         return args;
      }
      
      private function measureColumnsAndRows() : void
      {
         var i:int = 0;
         var k:int = 0;
         var cc:ConstraintColumn = null;
         var cr:ConstraintRow = null;
         var spaceToDistribute:Number = NaN;
         var w:Number = NaN;
         var h:Number = NaN;
         var remainingSpace:Number = NaN;
         var colEntry:ContentColumnChild = null;
         var rowEntry:ContentRowChild = null;
         var cols:Array = IConstraintLayout(target).constraintColumns;
         var rows:Array = IConstraintLayout(target).constraintRows;
         if(!rows.length > 0 && !cols.length > 0)
         {
            constraintRegionsInUse = false;
            return;
         }
         constraintRegionsInUse = true;
         var canvasX:Number = 0;
         var canvasY:Number = 0;
         var vm:EdgeMetrics = Container(target).viewMetrics;
         var availableWidth:Number = Container(target).width - vm.left - vm.right;
         var availableHeight:Number = Container(target).height - vm.top - vm.bottom;
         var fixedSize:Array = [];
         var percentageSize:Array = [];
         var contentSize:Array = [];
         if(cols.length > 0)
         {
            for(i = 0; i < cols.length; i++)
            {
               cc = cols[i];
               if(!isNaN(cc.percentWidth))
               {
                  percentageSize.push(cc);
               }
               else if(!isNaN(cc.width) && !cc.mx_internal::contentSize)
               {
                  fixedSize.push(cc);
               }
               else
               {
                  contentSize.push(cc);
                  cc.mx_internal::contentSize = true;
               }
            }
            for(i = 0; i < fixedSize.length; i++)
            {
               cc = ConstraintColumn(fixedSize[i]);
               availableWidth = availableWidth - cc.width;
            }
            if(contentSize.length > 0)
            {
               if(colSpanChildren.length > 0)
               {
                  colSpanChildren.sortOn("span");
                  for(k = 0; k < colSpanChildren.length; k++)
                  {
                     colEntry = colSpanChildren[k];
                     if(colEntry.span == 1)
                     {
                        if(colEntry.hcCol)
                        {
                           cc = ConstraintColumn(cols[cols.indexOf(colEntry.hcCol)]);
                        }
                        else if(colEntry.leftCol)
                        {
                           cc = ConstraintColumn(cols[cols.indexOf(colEntry.leftCol)]);
                        }
                        else if(colEntry.rightCol)
                        {
                           cc = ConstraintColumn(cols[cols.indexOf(colEntry.rightCol)]);
                        }
                        w = colEntry.child.getExplicitOrMeasuredWidth();
                        if(colEntry.hcOffset)
                        {
                           w = w + colEntry.hcOffset;
                        }
                        else
                        {
                           if(colEntry.leftOffset)
                           {
                              w = w + colEntry.leftOffset;
                           }
                           if(colEntry.rightOffset)
                           {
                              w = w + colEntry.rightOffset;
                           }
                        }
                        if(!isNaN(cc.width))
                        {
                           w = Math.max(cc.width,w);
                        }
                        w = bound(w,cc.minWidth,cc.maxWidth);
                        cc.setActualWidth(w);
                        availableWidth = availableWidth - cc.width;
                     }
                     else
                     {
                        availableWidth = shareColumnSpace(colEntry,availableWidth);
                     }
                  }
                  colSpanChildren = [];
               }
               for(i = 0; i < contentSize.length; i++)
               {
                  cc = contentSize[i];
                  if(!cc.width)
                  {
                     w = bound(0,cc.minWidth,0);
                     cc.setActualWidth(w);
                  }
               }
            }
            remainingSpace = availableWidth;
            for(i = 0; i < percentageSize.length; i++)
            {
               cc = ConstraintColumn(percentageSize[i]);
               if(remainingSpace <= 0)
               {
                  w = 0;
               }
               else
               {
                  w = Math.round(remainingSpace * cc.percentWidth / 100);
               }
               w = bound(w,cc.minWidth,cc.maxWidth);
               cc.setActualWidth(w);
               availableWidth = availableWidth - w;
            }
            for(i = 0; i < cols.length; i++)
            {
               cc = ConstraintColumn(cols[i]);
               cc.x = canvasX;
               canvasX = canvasX + cc.width;
            }
         }
         fixedSize = [];
         percentageSize = [];
         contentSize = [];
         if(rows.length > 0)
         {
            for(i = 0; i < rows.length; i++)
            {
               cr = rows[i];
               if(!isNaN(cr.percentHeight))
               {
                  percentageSize.push(cr);
               }
               else if(!isNaN(cr.height) && !cr.mx_internal::contentSize)
               {
                  fixedSize.push(cr);
               }
               else
               {
                  contentSize.push(cr);
                  cr.mx_internal::contentSize = true;
               }
            }
            for(i = 0; i < fixedSize.length; i++)
            {
               cr = ConstraintRow(fixedSize[i]);
               availableHeight = availableHeight - cr.height;
            }
            if(contentSize.length > 0)
            {
               if(rowSpanChildren.length > 0)
               {
                  rowSpanChildren.sortOn("span");
                  for(k = 0; k < rowSpanChildren.length; k++)
                  {
                     rowEntry = rowSpanChildren[k];
                     if(rowEntry.span == 1)
                     {
                        if(rowEntry.vcRow)
                        {
                           cr = ConstraintRow(rows[rows.indexOf(rowEntry.vcRow)]);
                        }
                        else if(rowEntry.baselineRow)
                        {
                           cr = ConstraintRow(rows[rows.indexOf(rowEntry.baselineRow)]);
                        }
                        else if(rowEntry.topRow)
                        {
                           cr = ConstraintRow(rows[rows.indexOf(rowEntry.topRow)]);
                        }
                        else if(rowEntry.bottomRow)
                        {
                           cr = ConstraintRow(rows[rows.indexOf(rowEntry.bottomRow)]);
                        }
                        h = rowEntry.child.getExplicitOrMeasuredHeight();
                        if(rowEntry.baselineOffset)
                        {
                           h = h + rowEntry.baselineOffset;
                        }
                        else if(rowEntry.vcOffset)
                        {
                           h = h + rowEntry.vcOffset;
                        }
                        else
                        {
                           if(rowEntry.topOffset)
                           {
                              h = h + rowEntry.topOffset;
                           }
                           if(rowEntry.bottomOffset)
                           {
                              h = h + rowEntry.bottomOffset;
                           }
                        }
                        if(!isNaN(cr.height))
                        {
                           h = Math.max(cr.height,h);
                        }
                        h = bound(h,cr.minHeight,cr.maxHeight);
                        cr.setActualHeight(h);
                        availableHeight = availableHeight - cr.height;
                     }
                     else
                     {
                        availableHeight = shareRowSpace(rowEntry,availableHeight);
                     }
                  }
                  rowSpanChildren = [];
               }
               for(i = 0; i < contentSize.length; i++)
               {
                  cr = ConstraintRow(contentSize[i]);
                  if(!cr.height)
                  {
                     h = bound(0,cr.minHeight,0);
                     cr.setActualHeight(h);
                  }
               }
            }
            remainingSpace = availableHeight;
            for(i = 0; i < percentageSize.length; i++)
            {
               cr = ConstraintRow(percentageSize[i]);
               if(remainingSpace <= 0)
               {
                  h = 0;
               }
               else
               {
                  h = Math.round(remainingSpace * cr.percentHeight / 100);
               }
               h = bound(h,cr.minHeight,cr.maxHeight);
               cr.setActualHeight(h);
               availableHeight = availableHeight - h;
            }
            for(i = 0; i < rows.length; i++)
            {
               cr = rows[i];
               cr.y = canvasY;
               canvasY = canvasY + cr.height;
            }
         }
      }
      
      private function child_moveHandler(event:MoveEvent) : void
      {
         if(event.target is IUIComponent)
         {
            if(!IUIComponent(event.target).includeInLayout)
            {
               return;
            }
         }
         var target:Container = super.target;
         if(target)
         {
            target.invalidateSize();
            target.invalidateDisplayList();
            _contentArea = null;
         }
      }
      
      private function applyAnchorStylesDuringMeasure(child:IUIComponent, r:Rectangle) : void
      {
         var i:int = 0;
         var constraintChild:IConstraintClient = child as IConstraintClient;
         if(!constraintChild)
         {
            return;
         }
         var childInfo:ChildConstraintInfo = constraintCache[constraintChild];
         if(!childInfo)
         {
            childInfo = parseConstraints(child);
         }
         var left:Number = childInfo.left;
         var right:Number = childInfo.right;
         var horizontalCenter:Number = childInfo.hc;
         var top:Number = childInfo.top;
         var bottom:Number = childInfo.bottom;
         var verticalCenter:Number = childInfo.vc;
         var cols:Array = IConstraintLayout(target).constraintColumns;
         var rows:Array = IConstraintLayout(target).constraintRows;
         var holder:Number = 0;
         if(!cols.length > 0)
         {
            if(!isNaN(horizontalCenter))
            {
               r.x = Math.round((target.width - child.width) / 2 + horizontalCenter);
            }
            else if(!isNaN(left) && !isNaN(right))
            {
               r.x = left;
               r.width = r.width + right;
            }
            else if(!isNaN(left))
            {
               r.x = left;
            }
            else if(!isNaN(right))
            {
               r.x = 0;
               r.width = r.width + right;
            }
         }
         else
         {
            r.x = 0;
            for(i = 0; i < cols.length; i++)
            {
               holder = holder + ConstraintColumn(cols[i]).width;
            }
            r.width = holder;
         }
         if(!rows.length > 0)
         {
            if(!isNaN(verticalCenter))
            {
               r.y = Math.round((target.height - child.height) / 2 + verticalCenter);
            }
            else if(!isNaN(top) && !isNaN(bottom))
            {
               r.y = top;
               r.height = r.height + bottom;
            }
            else if(!isNaN(top))
            {
               r.y = top;
            }
            else if(!isNaN(bottom))
            {
               r.y = 0;
               r.height = r.height + bottom;
            }
         }
         else
         {
            holder = 0;
            r.y = 0;
            for(i = 0; i < rows.length; i++)
            {
               holder = holder + ConstraintRow(rows[i]).height;
            }
            r.height = holder;
         }
      }
      
      override public function measure() : void
      {
         var target:Container = null;
         var vm:EdgeMetrics = null;
         var contentArea:Rectangle = null;
         var child:IUIComponent = null;
         var col:ConstraintColumn = null;
         var row:ConstraintRow = null;
         target = super.target;
         var w:Number = 0;
         var h:Number = 0;
         var i:Number = 0;
         vm = target.viewMetrics;
         for(i = 0; i < target.numChildren; i++)
         {
            child = target.getChildAt(i) as IUIComponent;
            parseConstraints(child);
         }
         for(i = 0; i < IConstraintLayout(target).constraintColumns.length; i++)
         {
            col = IConstraintLayout(target).constraintColumns[i];
            if(col.mx_internal::contentSize)
            {
               col.mx_internal::_width = NaN;
            }
         }
         for(i = 0; i < IConstraintLayout(target).constraintRows.length; i++)
         {
            row = IConstraintLayout(target).constraintRows[i];
            if(row.mx_internal::contentSize)
            {
               row.mx_internal::_height = NaN;
            }
         }
         measureColumnsAndRows();
         _contentArea = null;
         contentArea = measureContentArea();
         target.measuredWidth = contentArea.width + vm.left + vm.right;
         target.measuredHeight = contentArea.height + vm.top + vm.bottom;
      }
      
      private function target_childRemoveHandler(event:ChildExistenceChangedEvent) : void
      {
         DisplayObject(event.relatedObject).removeEventListener(MoveEvent.MOVE,child_moveHandler);
         delete constraintCache[event.relatedObject];
      }
      
      override public function set target(value:Container) : void
      {
         var i:int = 0;
         var n:int = 0;
         var target:Container = super.target;
         if(value != target)
         {
            if(target)
            {
               target.removeEventListener(ChildExistenceChangedEvent.CHILD_ADD,target_childAddHandler);
               target.removeEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,target_childRemoveHandler);
               n = target.numChildren;
               for(i = 0; i < n; i++)
               {
                  DisplayObject(target.getChildAt(i)).removeEventListener(MoveEvent.MOVE,child_moveHandler);
               }
            }
            if(value)
            {
               value.addEventListener(ChildExistenceChangedEvent.CHILD_ADD,target_childAddHandler);
               value.addEventListener(ChildExistenceChangedEvent.CHILD_REMOVE,target_childRemoveHandler);
               n = value.numChildren;
               for(i = 0; i < n; i++)
               {
                  DisplayObject(value.getChildAt(i)).addEventListener(MoveEvent.MOVE,child_moveHandler);
               }
            }
            super.target = value;
         }
      }
      
      private function measureContentArea() : Rectangle
      {
         var i:int = 0;
         var cols:Array = null;
         var rows:Array = null;
         var child:IUIComponent = null;
         var childConstraints:LayoutConstraints = null;
         var cx:Number = NaN;
         var cy:Number = NaN;
         var pw:Number = NaN;
         var ph:Number = NaN;
         var rightEdge:Number = NaN;
         var bottomEdge:Number = NaN;
         if(_contentArea)
         {
            return _contentArea;
         }
         _contentArea = new Rectangle();
         var n:int = target.numChildren;
         if(n == 0 && constraintRegionsInUse)
         {
            cols = IConstraintLayout(target).constraintColumns;
            rows = IConstraintLayout(target).constraintRows;
            if(cols.length > 0)
            {
               _contentArea.right = cols[cols.length - 1].x + cols[cols.length - 1].width;
            }
            else
            {
               _contentArea.right = 0;
            }
            if(rows.length > 0)
            {
               _contentArea.bottom = rows[rows.length - 1].y + rows[rows.length - 1].height;
            }
            else
            {
               _contentArea.bottom = 0;
            }
         }
         for(i = 0; i < n; i++)
         {
            child = target.getChildAt(i) as IUIComponent;
            childConstraints = getLayoutConstraints(child);
            if(child.includeInLayout)
            {
               cx = child.x;
               cy = child.y;
               pw = child.getExplicitOrMeasuredWidth();
               ph = child.getExplicitOrMeasuredHeight();
               if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
               {
                  if(!isNaN(child.percentWidth) || childConstraints && !isNaN(childConstraints.left) && !isNaN(childConstraints.right))
                  {
                     pw = child.minWidth;
                  }
               }
               else if(!isNaN(child.percentWidth) || childConstraints && !isNaN(childConstraints.left) && !isNaN(childConstraints.right) && isNaN(child.explicitWidth))
               {
                  pw = child.minWidth;
               }
               if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
               {
                  if(!isNaN(child.percentHeight) || childConstraints && !isNaN(childConstraints.top) && !isNaN(childConstraints.bottom))
                  {
                     ph = child.minHeight;
                  }
               }
               else if(!isNaN(child.percentHeight) || childConstraints && !isNaN(childConstraints.top) && !isNaN(childConstraints.bottom) && isNaN(child.explicitHeight))
               {
                  ph = child.minHeight;
               }
               r.x = cx;
               r.y = cy;
               r.width = pw;
               r.height = ph;
               applyAnchorStylesDuringMeasure(child,r);
               cx = r.x;
               cy = r.y;
               pw = r.width;
               ph = r.height;
               if(isNaN(cx))
               {
                  cx = child.x;
               }
               if(isNaN(cy))
               {
                  cy = child.y;
               }
               rightEdge = cx;
               bottomEdge = cy;
               if(isNaN(pw))
               {
                  pw = child.width;
               }
               if(isNaN(ph))
               {
                  ph = child.height;
               }
               rightEdge = rightEdge + pw;
               bottomEdge = bottomEdge + ph;
               _contentArea.right = Math.max(_contentArea.right,rightEdge);
               _contentArea.bottom = Math.max(_contentArea.bottom,bottomEdge);
            }
         }
         return _contentArea;
      }
      
      private function shareColumnSpace(entry:ContentColumnChild, availableWidth:Number) : Number
      {
         var tempLeftWidth:Number = NaN;
         var tempRightWidth:Number = NaN;
         var share:Number = NaN;
         var leftCol:ConstraintColumn = entry.leftCol;
         var rightCol:ConstraintColumn = entry.rightCol;
         var child:IUIComponent = entry.child;
         var leftWidth:Number = 0;
         var rightWidth:Number = 0;
         var right:Number = !!entry.rightOffset?Number(entry.rightOffset):Number(0);
         var left:Number = !!entry.leftOffset?Number(entry.leftOffset):Number(0);
         if(leftCol && leftCol.width)
         {
            leftWidth = leftWidth + leftCol.width;
         }
         else if(rightCol && !leftCol)
         {
            leftCol = IConstraintLayout(target).constraintColumns[entry.right - 2];
            if(leftCol && leftCol.width)
            {
               leftWidth = leftWidth + leftCol.width;
            }
         }
         if(rightCol && rightCol.width)
         {
            rightWidth = rightWidth + rightCol.width;
         }
         else if(leftCol && !rightCol)
         {
            rightCol = IConstraintLayout(target).constraintColumns[entry.left + 1];
            if(rightCol && rightCol.width)
            {
               rightWidth = rightWidth + rightCol.width;
            }
         }
         if(leftCol && isNaN(leftCol.width))
         {
            leftCol.setActualWidth(Math.max(0,leftCol.maxWidth));
         }
         if(rightCol && isNaN(rightCol.width))
         {
            rightCol.setActualWidth(Math.max(0,rightCol.maxWidth));
         }
         var childWidth:Number = child.getExplicitOrMeasuredWidth();
         if(childWidth)
         {
            if(!entry.leftCol)
            {
               if(childWidth > leftWidth)
               {
                  tempRightWidth = childWidth - leftWidth + right;
               }
               else
               {
                  tempRightWidth = childWidth + right;
               }
            }
            if(!entry.rightCol)
            {
               if(childWidth > rightWidth)
               {
                  tempLeftWidth = childWidth - rightWidth + left;
               }
               else
               {
                  tempLeftWidth = childWidth + left;
               }
            }
            if(entry.leftCol && entry.rightCol)
            {
               share = childWidth / Number(entry.span);
               if(share + left < leftWidth)
               {
                  tempLeftWidth = leftWidth;
                  tempRightWidth = childWidth - (leftWidth - left) + right;
               }
               else
               {
                  tempLeftWidth = share + left;
               }
               if(share + right < rightWidth)
               {
                  tempRightWidth = rightWidth;
                  tempLeftWidth = childWidth - (rightWidth - right) + left;
               }
               else
               {
                  tempRightWidth = share + right;
               }
            }
            tempLeftWidth = bound(tempLeftWidth,leftCol.minWidth,leftCol.maxWidth);
            leftCol.setActualWidth(tempLeftWidth);
            availableWidth = availableWidth - tempLeftWidth;
            tempRightWidth = bound(tempRightWidth,rightCol.minWidth,rightCol.maxWidth);
            rightCol.setActualWidth(tempRightWidth);
            availableWidth = availableWidth - tempRightWidth;
         }
         return availableWidth;
      }
      
      private function getLayoutConstraints(child:IUIComponent) : LayoutConstraints
      {
         var constraintChild:IConstraintClient = child as IConstraintClient;
         if(!constraintChild)
         {
            return null;
         }
         var constraints:LayoutConstraints = new LayoutConstraints();
         constraints.baseline = constraintChild.getConstraintValue("baseline");
         constraints.bottom = constraintChild.getConstraintValue("bottom");
         constraints.horizontalCenter = constraintChild.getConstraintValue("horizontalCenter");
         constraints.left = constraintChild.getConstraintValue("left");
         constraints.right = constraintChild.getConstraintValue("right");
         constraints.top = constraintChild.getConstraintValue("top");
         constraints.verticalCenter = constraintChild.getConstraintValue("verticalCenter");
         return constraints;
      }
      
      override public function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number) : void
      {
         var i:int = 0;
         var child:IUIComponent = null;
         var col:ConstraintColumn = null;
         var row:ConstraintRow = null;
         var target:Container = super.target;
         var n:int = target.numChildren;
         target.mx_internal::doingLayout = false;
         var vm:EdgeMetrics = target.viewMetrics;
         target.mx_internal::doingLayout = true;
         var viewableWidth:Number = unscaledWidth - vm.left - vm.right;
         var viewableHeight:Number = unscaledHeight - vm.top - vm.bottom;
         if(IConstraintLayout(target).constraintColumns.length > 0 || IConstraintLayout(target).constraintRows.length > 0)
         {
            constraintRegionsInUse = true;
         }
         if(constraintRegionsInUse)
         {
            for(i = 0; i < n; i++)
            {
               child = target.getChildAt(i) as IUIComponent;
               parseConstraints(child);
            }
            for(i = 0; i < IConstraintLayout(target).constraintColumns.length; i++)
            {
               col = IConstraintLayout(target).constraintColumns[i];
               if(col.mx_internal::contentSize)
               {
                  col.mx_internal::_width = NaN;
               }
            }
            for(i = 0; i < IConstraintLayout(target).constraintRows.length; i++)
            {
               row = IConstraintLayout(target).constraintRows[i];
               if(row.mx_internal::contentSize)
               {
                  row.mx_internal::_height = NaN;
               }
            }
            measureColumnsAndRows();
         }
         for(i = 0; i < n; i++)
         {
            child = target.getChildAt(i) as IUIComponent;
            applyAnchorStylesDuringUpdateDisplayList(viewableWidth,viewableHeight,child);
         }
      }
      
      private function applyAnchorStylesDuringUpdateDisplayList(availableWidth:Number, availableHeight:Number, child:IUIComponent = null) : void
      {
         var i:int = 0;
         var w:Number = NaN;
         var h:Number = NaN;
         var x:Number = NaN;
         var y:Number = NaN;
         var message:String = null;
         var vcHolder:Number = NaN;
         var hcHolder:Number = NaN;
         var vcY:Number = NaN;
         var hcX:Number = NaN;
         var baselineY:Number = NaN;
         var matchLeft:Boolean = false;
         var matchRight:Boolean = false;
         var matchHC:Boolean = false;
         var col:ConstraintColumn = null;
         var matchTop:Boolean = false;
         var matchBottom:Boolean = false;
         var matchVC:Boolean = false;
         var matchBaseline:Boolean = false;
         var row:ConstraintRow = null;
         var constraintChild:IConstraintClient = child as IConstraintClient;
         if(!constraintChild)
         {
            return;
         }
         var childInfo:ChildConstraintInfo = parseConstraints(child);
         var left:Number = childInfo.left;
         var right:Number = childInfo.right;
         var horizontalCenter:Number = childInfo.hc;
         var top:Number = childInfo.top;
         var bottom:Number = childInfo.bottom;
         var verticalCenter:Number = childInfo.vc;
         var baseline:Number = childInfo.baseline;
         var leftBoundary:String = childInfo.leftBoundary;
         var rightBoundary:String = childInfo.rightBoundary;
         var hcBoundary:String = childInfo.hcBoundary;
         var topBoundary:String = childInfo.topBoundary;
         var bottomBoundary:String = childInfo.bottomBoundary;
         var vcBoundary:String = childInfo.vcBoundary;
         var baselineBoundary:String = childInfo.baselineBoundary;
         var checkWidth:Boolean = false;
         var checkHeight:Boolean = false;
         var parentBoundariesLR:Boolean = !hcBoundary && !leftBoundary && !rightBoundary;
         var parentBoundariesTB:Boolean = !vcBoundary && !topBoundary && !bottomBoundary && !baselineBoundary;
         var leftHolder:Number = 0;
         var rightHolder:Number = availableWidth;
         var topHolder:Number = 0;
         var bottomHolder:Number = availableHeight;
         if(!parentBoundariesLR)
         {
            matchLeft = !!leftBoundary?true:false;
            matchRight = !!rightBoundary?true:false;
            matchHC = !!hcBoundary?true:false;
            for(i = 0; i < IConstraintLayout(target).constraintColumns.length; i++)
            {
               col = ConstraintColumn(IConstraintLayout(target).constraintColumns[i]);
               if(matchLeft)
               {
                  if(leftBoundary == col.id)
                  {
                     leftHolder = col.x;
                     matchLeft = false;
                  }
               }
               if(matchRight)
               {
                  if(rightBoundary == col.id)
                  {
                     rightHolder = col.x + col.width;
                     matchRight = false;
                  }
               }
               if(matchHC)
               {
                  if(hcBoundary == col.id)
                  {
                     hcHolder = col.width;
                     hcX = col.x;
                     matchHC = false;
                  }
               }
            }
            if(matchLeft)
            {
               message = resourceManager.getString("containers","columnNotFound",[leftBoundary]);
               throw new ConstraintError(message);
            }
            if(matchRight)
            {
               message = resourceManager.getString("containers","columnNotFound",[rightBoundary]);
               throw new ConstraintError(message);
            }
            if(matchHC)
            {
               message = resourceManager.getString("containers","columnNotFound",[hcBoundary]);
               throw new ConstraintError(message);
            }
         }
         else if(!parentBoundariesLR)
         {
            message = resourceManager.getString("containers","noColumnsFound");
            throw new ConstraintError(message);
         }
         availableWidth = Math.round(rightHolder - leftHolder);
         if(!isNaN(left) && !isNaN(right))
         {
            w = availableWidth - left - right;
            if(w < child.minWidth)
            {
               w = child.minWidth;
            }
         }
         else if(!isNaN(child.percentWidth))
         {
            w = child.percentWidth / 100 * availableWidth;
            w = bound(w,child.minWidth,child.maxWidth);
            checkWidth = true;
         }
         else
         {
            w = child.getExplicitOrMeasuredWidth();
         }
         if(!parentBoundariesTB && IConstraintLayout(target).constraintRows.length > 0)
         {
            matchTop = !!topBoundary?true:false;
            matchBottom = !!bottomBoundary?true:false;
            matchVC = !!vcBoundary?true:false;
            matchBaseline = !!baselineBoundary?true:false;
            for(i = 0; i < IConstraintLayout(target).constraintRows.length; i++)
            {
               row = ConstraintRow(IConstraintLayout(target).constraintRows[i]);
               if(matchTop)
               {
                  if(topBoundary == row.id)
                  {
                     topHolder = row.y;
                     matchTop = false;
                  }
               }
               if(matchBottom)
               {
                  if(bottomBoundary == row.id)
                  {
                     bottomHolder = row.y + row.height;
                     matchBottom = false;
                  }
               }
               if(matchVC)
               {
                  if(vcBoundary == row.id)
                  {
                     vcHolder = row.height;
                     vcY = row.y;
                     matchVC = false;
                  }
               }
               if(matchBaseline)
               {
                  if(baselineBoundary == row.id)
                  {
                     baselineY = row.y;
                     matchBaseline = false;
                  }
               }
            }
            if(matchTop)
            {
               message = resourceManager.getString("containers","rowNotFound",[topBoundary]);
               throw new ConstraintError(message);
            }
            if(matchBottom)
            {
               message = resourceManager.getString("containers","rowNotFound",[bottomBoundary]);
               throw new ConstraintError(message);
            }
            if(matchVC)
            {
               message = resourceManager.getString("containers","rowNotFound",[vcBoundary]);
               throw new ConstraintError(message);
            }
            if(matchBaseline)
            {
               message = resourceManager.getString("containers","rowNotFound",[baselineBoundary]);
               throw new ConstraintError(message);
            }
         }
         else if(!parentBoundariesTB && IConstraintLayout(target).constraintRows.length <= 0)
         {
            message = resourceManager.getString("containers","noRowsFound");
            throw new ConstraintError(message);
         }
         availableHeight = Math.round(bottomHolder - topHolder);
         if(!isNaN(top) && !isNaN(bottom))
         {
            h = availableHeight - top - bottom;
            if(h < child.minHeight)
            {
               h = child.minHeight;
            }
         }
         else if(!isNaN(child.percentHeight))
         {
            h = child.percentHeight / 100 * availableHeight;
            h = bound(h,child.minHeight,child.maxHeight);
            checkHeight = true;
         }
         else
         {
            h = child.getExplicitOrMeasuredHeight();
         }
         if(!isNaN(horizontalCenter))
         {
            if(hcBoundary)
            {
               x = Math.round((hcHolder - w) / 2 + horizontalCenter + hcX);
            }
            else
            {
               x = Math.round((availableWidth - w) / 2 + horizontalCenter);
            }
         }
         else if(!isNaN(left))
         {
            if(leftBoundary)
            {
               x = leftHolder + left;
            }
            else
            {
               x = left;
            }
         }
         else if(!isNaN(right))
         {
            if(rightBoundary)
            {
               x = rightHolder - right - w;
            }
            else
            {
               x = availableWidth - right - w;
            }
         }
         if(!isNaN(baseline))
         {
            if(baselineBoundary)
            {
               y = baselineY - child.baselinePosition + baseline;
            }
            else
            {
               y = baseline;
            }
         }
         if(!isNaN(verticalCenter))
         {
            if(vcBoundary)
            {
               y = Math.round((vcHolder - h) / 2 + verticalCenter + vcY);
            }
            else
            {
               y = Math.round((availableHeight - h) / 2 + verticalCenter);
            }
         }
         else if(!isNaN(top))
         {
            if(topBoundary)
            {
               y = topHolder + top;
            }
            else
            {
               y = top;
            }
         }
         else if(!isNaN(bottom))
         {
            if(bottomBoundary)
            {
               y = bottomHolder - bottom - h;
            }
            else
            {
               y = availableHeight - bottom - h;
            }
         }
         x = !!isNaN(x)?Number(child.x):Number(x);
         y = !!isNaN(y)?Number(child.y):Number(y);
         child.move(x,y);
         if(checkWidth)
         {
            if(x + w > availableWidth)
            {
               w = Math.max(availableWidth - x,child.minWidth);
            }
         }
         if(checkHeight)
         {
            if(y + h > availableHeight)
            {
               h = Math.max(availableHeight - y,child.minHeight);
            }
         }
         if(!isNaN(w) && !isNaN(h))
         {
            child.setActualSize(w,h);
         }
      }
      
      private function target_childAddHandler(event:ChildExistenceChangedEvent) : void
      {
         DisplayObject(event.relatedObject).addEventListener(MoveEvent.MOVE,child_moveHandler);
      }
   }
}

class LayoutConstraints
{
    
   
   public var baseline;
   
   public var left;
   
   public var bottom;
   
   public var top;
   
   public var horizontalCenter;
   
   public var verticalCenter;
   
   public var right;
   
   function LayoutConstraints()
   {
      super();
   }
}

class ChildConstraintInfo
{
    
   
   public var baseline:Number;
   
   public var left:Number;
   
   public var baselineBoundary:String;
   
   public var leftBoundary:String;
   
   public var hcBoundary:String;
   
   public var top:Number;
   
   public var right:Number;
   
   public var topBoundary:String;
   
   public var rightBoundary:String;
   
   public var bottom:Number;
   
   public var vc:Number;
   
   public var bottomBoundary:String;
   
   public var vcBoundary:String;
   
   public var hc:Number;
   
   function ChildConstraintInfo(left:Number, right:Number, hc:Number, top:Number, bottom:Number, vc:Number, baseline:Number, leftBoundary:String = null, rightBoundary:String = null, hcBoundary:String = null, topBoundary:String = null, bottomBoundary:String = null, vcBoundary:String = null, baselineBoundary:String = null)
   {
      super();
      this.left = left;
      this.right = right;
      this.hc = hc;
      this.top = top;
      this.bottom = bottom;
      this.vc = vc;
      this.baseline = baseline;
      this.leftBoundary = leftBoundary;
      this.rightBoundary = rightBoundary;
      this.hcBoundary = hcBoundary;
      this.topBoundary = topBoundary;
      this.bottomBoundary = bottomBoundary;
      this.vcBoundary = vcBoundary;
      this.baselineBoundary = baselineBoundary;
   }
}

import mx.containers.utilityClasses.ConstraintColumn;
import mx.core.IUIComponent;

class ContentColumnChild
{
    
   
   public var rightCol:ConstraintColumn;
   
   public var hcCol:ConstraintColumn;
   
   public var left:Number;
   
   public var child:IUIComponent;
   
   public var rightOffset:Number;
   
   public var span:Number;
   
   public var hcOffset:Number;
   
   public var leftCol:ConstraintColumn;
   
   public var leftOffset:Number;
   
   public var hc:Number;
   
   public var right:Number;
   
   function ContentColumnChild()
   {
      super();
   }
}

import mx.containers.utilityClasses.ConstraintRow;
import mx.core.IUIComponent;

class ContentRowChild
{
    
   
   public var topRow:ConstraintRow;
   
   public var topOffset:Number;
   
   public var baseline:Number;
   
   public var baselineRow:ConstraintRow;
   
   public var span:Number;
   
   public var top:Number;
   
   public var vcOffset:Number;
   
   public var child:IUIComponent;
   
   public var bottomOffset:Number;
   
   public var bottom:Number;
   
   public var vc:Number;
   
   public var bottomRow:ConstraintRow;
   
   public var vcRow:ConstraintRow;
   
   public var baselineOffset:Number;
   
   function ContentRowChild()
   {
      super();
   }
}
