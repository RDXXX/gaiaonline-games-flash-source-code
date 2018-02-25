.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->setTextViewText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->val$text:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x41900000    # 18.0f

    .line 453
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->val$text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 457
    .local v0, "c":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0xee

    if-le v2, v3, :cond_1

    .line 458
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x22

    add-int/lit8 v2, v2, -0x7

    int-to-float v1, v2

    .line 461
    .local v1, "newSize":F
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v2

    sub-float v3, v4, v1

    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v4}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$6(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    .end local v1    # "newSize":F
    :goto_0
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->val$text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .end local v0    # "c":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 463
    .restart local v0    # "c":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v3}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$6(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method
