.class Lcom/ansca/corona/ViewManager$24;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addMapView(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IIIII)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$24;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$24;->val$width:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$24;->val$height:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$24;->val$left:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$24;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1004
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    new-instance v1, Lcom/ansca/corona/MapView;

    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ansca/corona/MapView;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v1, "view":Lcom/ansca/corona/MapView;
    iget v2, p0, Lcom/ansca/corona/ViewManager$24;->val$id:I

    invoke-virtual {v1, v2}, Lcom/ansca/corona/MapView;->setId(I)V

    .line 1011
    new-instance v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/MapView;->setTag(Ljava/lang/Object;)V

    .line 1014
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/ansca/corona/ViewManager$24;->val$width:I

    iget v3, p0, Lcom/ansca/corona/ViewManager$24;->val$height:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$24;->val$left:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$24;->val$top:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 1015
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    invoke-virtual {v1}, Lcom/ansca/corona/MapView;->bringToFront()V

    .line 1019
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1020
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$24;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v2}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
