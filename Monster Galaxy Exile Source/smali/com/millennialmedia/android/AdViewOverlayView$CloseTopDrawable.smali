.class Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;
.super Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTopDrawable"
.end annotation


# instance fields
.field final dist:F

.field final scale:F

.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;ZF)V
    .locals 2
    .param p2, "enabled"    # Z
    .param p3, "scale"    # F

    .prologue
    .line 467
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Z)V

    .line 469
    iput p3, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    .line 470
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    .line 471
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x1000000

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v2, 0x41200000    # 10.0f

    .line 477
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 478
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v1

    .line 479
    .local v10, "width":I
    int-to-float v0, v10

    div-float v9, v0, v2

    .line 480
    .local v9, "strokeWidth":F
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v1, v3

    sub-float v7, v0, v1

    .line 481
    .local v7, "cx":F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v1, v3

    add-float v8, v0, v1

    .line 482
    .local v8, "cy":F
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 483
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 486
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 488
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 489
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->scale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 491
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v9, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 493
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 494
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v1, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v2, v8, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v3, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 495
    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v1, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v2, v8, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    sub-float v3, v7, v0

    iget v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->dist:F

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 496
    return-void
.end method
