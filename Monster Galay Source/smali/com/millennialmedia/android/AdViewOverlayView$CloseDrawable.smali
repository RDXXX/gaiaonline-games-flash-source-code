.class Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseDrawable"
.end annotation


# instance fields
.field protected enabled:Z

.field protected final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Z)V
    .locals 2
    .param p2, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 423
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 419
    iput-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    .line 424
    iput-boolean p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    .line 425
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    .line 426
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 427
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 428
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v0, 0xff

    const/high16 v11, 0x40000000    # 2.0f

    .line 433
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 434
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v10, v1, v2

    .line 435
    .local v10, "width":I
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v8, v1, v2

    .line 436
    .local v8, "height":I
    int-to-float v1, v10

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v9, v1, v2

    .line 437
    .local v9, "strokeWidth":F
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 438
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->enabled:Z

    if-eqz v1, :cond_0

    move v7, v0

    .line 439
    .local v7, "grayScale":I
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 440
    div-float v1, v9, v11

    div-float v2, v9, v11

    int-to-float v0, v10

    div-float v3, v9, v11

    sub-float v3, v0, v3

    int-to-float v0, v8

    div-float v4, v9, v11

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 441
    int-to-float v0, v10

    div-float v1, v9, v11

    sub-float v1, v0, v1

    div-float v2, v9, v11

    div-float v3, v9, v11

    int-to-float v0, v8

    div-float v4, v9, v11

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    return-void

    .line 438
    .end local v7    # "grayScale":I
    :cond_0
    const/16 v7, 0x50

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 453
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 458
    return-void
.end method
