.class Lcom/ansca/corona/ViewManager$18;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->addWebView(IIIIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$autoCloseEnabled:Z

.field final synthetic val$height:I

.field final synthetic val$id:I

.field final synthetic val$isPopup:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ZIZIIII)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    iput-boolean p2, p0, Lcom/ansca/corona/ViewManager$18;->val$isPopup:Z

    iput p3, p0, Lcom/ansca/corona/ViewManager$18;->val$id:I

    iput-boolean p4, p0, Lcom/ansca/corona/ViewManager$18;->val$autoCloseEnabled:Z

    iput p5, p0, Lcom/ansca/corona/ViewManager$18;->val$width:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$18;->val$height:I

    iput p7, p0, Lcom/ansca/corona/ViewManager$18;->val$left:I

    iput p8, p0, Lcom/ansca/corona/ViewManager$18;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 894
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget-boolean v4, p0, Lcom/ansca/corona/ViewManager$18;->val$isPopup:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$700(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v3

    .line 900
    .local v3, "viewGroup":Landroid/widget/AbsoluteLayout;
    :goto_1
    if-eqz v3, :cond_0

    .line 905
    new-instance v2, Lcom/ansca/corona/CoronaWebView;

    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/ansca/corona/CoronaWebView;-><init>(Landroid/content/Context;)V

    .line 906
    .local v2, "view":Lcom/ansca/corona/CoronaWebView;
    iget v4, p0, Lcom/ansca/corona/ViewManager$18;->val$id:I

    invoke-virtual {v2, v4}, Lcom/ansca/corona/CoronaWebView;->setId(I)V

    .line 907
    new-instance v4, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    iget-object v5, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V

    invoke-virtual {v2, v4}, Lcom/ansca/corona/CoronaWebView;->setTag(Ljava/lang/Object;)V

    .line 908
    iget-boolean v4, p0, Lcom/ansca/corona/ViewManager$18;->val$isPopup:Z

    invoke-virtual {v2, v4}, Lcom/ansca/corona/CoronaWebView;->setBackKeySupported(Z)V

    .line 909
    iget-boolean v4, p0, Lcom/ansca/corona/ViewManager$18;->val$autoCloseEnabled:Z

    invoke-virtual {v2, v4}, Lcom/ansca/corona/CoronaWebView;->setAutoCloseEnabled(Z)V

    .line 913
    iget v4, p0, Lcom/ansca/corona/ViewManager$18;->val$width:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/ansca/corona/ViewManager$18;->val$height:I

    if-gtz v4, :cond_4

    .line 914
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 916
    .local v1, "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 917
    move-object v0, v1

    .line 922
    .end local v1    # "relativeParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    invoke-virtual {v3, v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaWebView;->bringToFront()V

    .line 926
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 927
    :try_start_0
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$300(Lcom/ansca/corona/ViewManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 899
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "view":Lcom/ansca/corona/CoronaWebView;
    .end local v3    # "viewGroup":Landroid/widget/AbsoluteLayout;
    :cond_3
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$18;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v4}, Lcom/ansca/corona/ViewManager;->access$000(Lcom/ansca/corona/ViewManager;)Landroid/widget/AbsoluteLayout;

    move-result-object v3

    goto :goto_1

    .line 920
    .restart local v2    # "view":Lcom/ansca/corona/CoronaWebView;
    .restart local v3    # "viewGroup":Landroid/widget/AbsoluteLayout;
    :cond_4
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, p0, Lcom/ansca/corona/ViewManager$18;->val$width:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$18;->val$height:I

    iget v6, p0, Lcom/ansca/corona/ViewManager$18;->val$left:I

    iget v7, p0, Lcom/ansca/corona/ViewManager$18;->val$top:I

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_2
.end method
