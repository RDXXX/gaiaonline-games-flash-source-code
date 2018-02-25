.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->addTextField(Ljava/lang/String;IIIIZZLjava/lang/Integer;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$capWords:Z

.field private final synthetic val$disallowedChars:Ljava/lang/String;

.field private final synthetic val$fullScreenKeyboard:Z

.field private final synthetic val$height:I

.field private final synthetic val$maxChars:Ljava/lang/Integer;

.field private final synthetic val$multiline:Z

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$requestFocus:Z

.field private final synthetic val$width:I

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;ZZLjava/lang/Integer;Ljava/lang/String;IIZIILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$multiline:Z

    iput-boolean p3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$capWords:Z

    iput-object p4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$maxChars:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$disallowedChars:Ljava/lang/String;

    iput p6, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$width:I

    iput p7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$height:I

    iput-boolean p8, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$fullScreenKeyboard:Z

    iput p9, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$x:I

    iput p10, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$y:I

    iput-object p11, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$name:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$requestFocus:Z

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 237
    new-instance v0, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, "editText":Landroid/widget/EditText;
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$multiline:Z

    if-nez v4, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$5(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    const/high16 v4, 0x41a00000    # 20.0f

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$6(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 243
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 244
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$capWords:Z

    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    .line 246
    or-int/lit16 v4, v4, 0x2000

    .line 245
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 249
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/text/InputFilter;>;"
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$maxChars:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 251
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$maxChars:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$disallowedChars:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 255
    new-instance v4, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$disallowedChars:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/text/InputFilter;

    .line 276
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/InputFilter;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 279
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$width:I

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 280
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$height:I

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHeight(I)V

    .line 281
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 282
    sget v5, Lcom/gaiaonline/monstergalaxy/R$drawable;->edittext:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 281
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$fullScreenKeyboard:Z

    if-nez v4, :cond_4

    .line 284
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 291
    :cond_4
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 292
    .local v3, "wrapLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 295
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x33

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 298
    iget v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$x:I

    iget v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$y:I

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 299
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 302
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$7(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$name:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-boolean v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$requestFocus:Z

    if-eqz v4, :cond_5

    .line 307
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$3(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Z)V

    .line 308
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->val$name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$4(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    .line 310
    :cond_5
    return-void
.end method
