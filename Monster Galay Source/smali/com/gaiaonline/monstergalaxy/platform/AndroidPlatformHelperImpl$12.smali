.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->addTextView(IIILjava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$color:Lcom/badlogic/gdx/graphics/Color;

.field private final synthetic val$left:I

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$top:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Lcom/badlogic/gdx/graphics/Color;IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$color:Lcom/badlogic/gdx/graphics/Color;

    iput p3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$top:I

    iput p4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$left:I

    iput p5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$width:I

    iput-object p6, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$text:Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x43f00000    # 480.0f

    .line 398
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    float-to-int v7, v7

    mul-int/lit16 v5, v7, 0xff

    .line 399
    .local v5, "r":I
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    float-to-int v7, v7

    mul-int/lit16 v1, v7, 0xff

    .line 400
    .local v1, "g":I
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$color:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    float-to-int v7, v7

    mul-int/lit16 v0, v7, 0xff

    .line 402
    .local v0, "b":I
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 404
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 405
    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 407
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v8}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$9(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Landroid/widget/TextView;)V

    .line 408
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$10(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 409
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    const/high16 v8, 0x41900000    # 18.0f

    iget-object v9, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v9}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$6(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 410
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    const/4 v7, -0x1

    .line 414
    const/4 v8, -0x2

    .line 412
    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 416
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$top:I

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x43a00000    # 320.0f

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 417
    .local v6, "topPix":I
    iget v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$left:I

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v10

    float-to-int v2, v7

    .line 419
    .local v2, "leftPix":I
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 420
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 422
    const/16 v7, 0x33

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 424
    iget v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$width:I

    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v10

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 426
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$text:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 427
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->val$text:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_0
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 432
    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 431
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 434
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v7}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 435
    iget-object v8, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v8}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 437
    return-void
.end method
