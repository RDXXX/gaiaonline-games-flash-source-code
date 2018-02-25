.class Lcom/ansca/corona/ViewManager$15;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$alpha:F

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IF)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$15;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$15;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$15;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 677
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$15;->this$0:Lcom/ansca/corona/ViewManager;

    iget v5, p0, Lcom/ansca/corona/ViewManager$15;->val$id:I

    invoke-virtual {v4, v5}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v3

    .line 678
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 680
    iget v1, p0, Lcom/ansca/corona/ViewManager$15;->val$alpha:F

    .line 681
    .local v1, "newAlpha":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    .line 682
    const/4 v1, 0x0

    .line 689
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 690
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    if-eqz v4, :cond_1

    .line 691
    check-cast v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    .end local v2    # "tag":Ljava/lang/Object;
    const-string v4, "alpha"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_1
    const v4, 0x3f7ff972    # 0.9999f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    .line 696
    instance-of v4, v3, Landroid/webkit/WebView;

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/ansca/corona/MapView;

    if-eqz v4, :cond_3

    .line 699
    :cond_2
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$15;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/ansca/corona/ViewManager;->access$500(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V

    .line 702
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 703
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 704
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 705
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 711
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "newAlpha":F
    :cond_4
    :goto_1
    return-void

    .line 684
    .restart local v1    # "newAlpha":F
    :cond_5
    cmpl-float v4, v1, v6

    if-lez v4, :cond_0

    .line 685
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 708
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
