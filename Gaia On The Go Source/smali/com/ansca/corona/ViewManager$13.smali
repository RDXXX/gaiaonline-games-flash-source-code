.class Lcom/ansca/corona/ViewManager$13;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setDisplayObjectVisible(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$13;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 620
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    iget v2, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    invoke-virtual {v1, v2}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 622
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$13;->val$visible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$13;->val$visible:Z

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    iget v2, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    iget-object v3, p0, Lcom/ansca/corona/ViewManager$13;->this$0:Lcom/ansca/corona/ViewManager;

    iget v4, p0, Lcom/ansca/corona/ViewManager$13;->val$id:I

    invoke-virtual {v3, v4}, Lcom/ansca/corona/ViewManager;->getDisplayObjectAlpha(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->setDisplayObjectAlpha(IF)V

    .line 630
    :cond_0
    :goto_1
    return-void

    .line 622
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 627
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
