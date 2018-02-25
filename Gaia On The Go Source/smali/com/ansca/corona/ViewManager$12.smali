.class Lcom/ansca/corona/ViewManager$12;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->destroyDisplayObject(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$12;->this$0:Lcom/ansca/corona/ViewManager;

    iput-object p2, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 600
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 601
    .local v0, "parentView":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 602
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parentView":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 608
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    instance-of v1, v1, Lcom/ansca/corona/MapView;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$12;->val$view:Landroid/view/View;

    check-cast v1, Lcom/ansca/corona/MapView;

    invoke-virtual {v1}, Lcom/ansca/corona/MapView;->destroy()V

    goto :goto_0
.end method
