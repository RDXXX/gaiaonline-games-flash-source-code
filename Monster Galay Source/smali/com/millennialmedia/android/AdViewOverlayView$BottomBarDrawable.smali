.class Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomBarDrawable"
.end annotation


# instance fields
.field protected final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 374
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    .line 375
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 376
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0x78

    const/16 v1, 0x32

    const/16 v0, 0x8

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 383
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    .line 384
    .local v10, "startEndColor":I
    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    .line 385
    .local v9, "middleColor":I
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 388
    .local v6, "borderColor":I
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v9, v1, v3

    const/4 v2, 0x1

    aput v10, v1, v2

    invoke-direct {v8, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 389
    .local v8, "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 390
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 394
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    const/4 v2, 0x0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 398
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 409
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 414
    return-void
.end method
