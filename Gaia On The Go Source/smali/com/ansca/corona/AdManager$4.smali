.class Lcom/ansca/corona/AdManager$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/AdManager;->hideInneractiveAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/AdManager;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AdManager;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/ansca/corona/AdManager$4;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 665
    iget-object v1, p0, Lcom/ansca/corona/AdManager$4;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/ansca/corona/AdManager$4;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 667
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/ansca/corona/AdManager$4;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v1}, Lcom/ansca/corona/AdManager;->access$500(Lcom/ansca/corona/AdManager;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 671
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/AdManager$4;->this$0:Lcom/ansca/corona/AdManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/AdManager;->access$502(Lcom/ansca/corona/AdManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 672
    return-void
.end method
