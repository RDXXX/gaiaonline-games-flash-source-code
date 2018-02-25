.class Lcom/ansca/corona/MapView$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView$JavaScriptInterface;->onMapLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView$JavaScriptInterface;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 771
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2, v3}, Lcom/ansca/corona/MapView;->access$602(Lcom/ansca/corona/MapView;Z)Z

    .line 774
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$300(Lcom/ansca/corona/MapView;)Lcom/ansca/corona/MessageBasedTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 777
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v3, v3, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v3}, Lcom/ansca/corona/MapView;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 778
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v3, v3, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v3}, Lcom/ansca/corona/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 779
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$200(Lcom/ansca/corona/MapView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 786
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v2, v4}, Lcom/ansca/corona/MapView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 789
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 791
    .local v1, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$700(Lcom/ansca/corona/MapView;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-class v2, Landroid/view/View;

    const-string v3, "setAlpha"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 794
    .local v0, "setAlphaMethod":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$700(Lcom/ansca/corona/MapView;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v0    # "setAlphaMethod":Ljava/lang/reflect/Method;
    .end local v1    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v2}, Lcom/ansca/corona/MapView;->access$800(Lcom/ansca/corona/MapView;)V

    .line 804
    return-void

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v2, v2, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    iget-object v3, p0, Lcom/ansca/corona/MapView$JavaScriptInterface$1;->this$1:Lcom/ansca/corona/MapView$JavaScriptInterface;

    iget-object v3, v3, Lcom/ansca/corona/MapView$JavaScriptInterface;->this$0:Lcom/ansca/corona/MapView;

    invoke-static {v3}, Lcom/ansca/corona/MapView;->access$700(Lcom/ansca/corona/MapView;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ansca/corona/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 796
    :catch_0
    move-exception v2

    goto :goto_0
.end method
