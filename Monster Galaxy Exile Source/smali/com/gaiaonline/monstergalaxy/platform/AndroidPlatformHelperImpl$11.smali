.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->removeTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 377
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$9(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Landroid/widget/TextView;)V

    .line 379
    return-void
.end method
