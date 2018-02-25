.class Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$9;
.super Ljava/lang/Object;
.source "TweaksScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->access$4()Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 241
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->access$4()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->access$5(Landroid/widget/ScrollView;)V

    .line 243
    return-void
.end method
