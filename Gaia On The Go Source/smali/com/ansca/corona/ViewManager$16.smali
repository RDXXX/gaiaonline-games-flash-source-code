.class Lcom/ansca/corona/ViewManager$16;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectBackground(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$16;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 719
    iget-object v7, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    iget v8, p0, Lcom/ansca/corona/ViewManager$16;->val$id:I

    invoke-virtual {v7, v8}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v5

    .line 720
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    instance-of v7, v5, Lcom/ansca/corona/MapView;

    if-nez v7, :cond_0

    .line 730
    instance-of v7, v5, Landroid/webkit/WebView;

    if-eqz v7, :cond_4

    .line 733
    iget-boolean v7, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-eqz v7, :cond_3

    .line 734
    .local v1, "color":I
    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 738
    iget-object v7, p0, Lcom/ansca/corona/ViewManager$16;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v7, v5, v6}, Lcom/ansca/corona/ViewManager;->access$500(Lcom/ansca/corona/ViewManager;Landroid/view/View;Z)V

    .line 782
    .end local v1    # "color":I
    :cond_2
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    move v1, v6

    .line 733
    goto :goto_1

    .line 743
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 746
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-eqz v6, :cond_5

    if-nez v0, :cond_0

    :cond_5
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-nez v6, :cond_6

    if-eqz v0, :cond_0

    .line 752
    :cond_6
    const/4 v2, 0x0

    .line 753
    .local v2, "hashMap":Lcom/ansca/corona/ViewManager$StringObjectHashMap;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 754
    .local v3, "tag":Ljava/lang/Object;
    instance-of v6, v3, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    if-eqz v6, :cond_7

    move-object v2, v3

    .line 755
    check-cast v2, Lcom/ansca/corona/ViewManager$StringObjectHashMap;

    .line 757
    :cond_7
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    .line 758
    const-string v6, "backgroundDrawable"

    invoke-virtual {v2, v6}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 759
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    move-object v0, v4

    .line 760
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 767
    .end local v4    # "value":Ljava/lang/Object;
    :cond_8
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-eqz v6, :cond_9

    if-nez v0, :cond_9

    .line 768
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 769
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 776
    :goto_3
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-nez v6, :cond_2

    if-eqz v2, :cond_2

    .line 777
    const-string v6, "backgroundDrawable"

    invoke-virtual {v2, v6, v0}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 772
    :cond_9
    iget-boolean v6, p0, Lcom/ansca/corona/ViewManager$16;->val$isVisible:Z

    if-eqz v6, :cond_a

    move-object v6, v0

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    goto :goto_4
.end method
