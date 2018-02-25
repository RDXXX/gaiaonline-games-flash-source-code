.class Lcom/ansca/corona/ViewManager$14;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->displayObjectUpdateScreenBounds(IIIII)V
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
    .line 637
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$14;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$14;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$14;->val$width:I

    iput p4, p0, Lcom/ansca/corona/ViewManager$14;->val$height:I

    iput p5, p0, Lcom/ansca/corona/ViewManager$14;->val$left:I

    iput p6, p0, Lcom/ansca/corona/ViewManager$14;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 639
    iget-object v2, p0, Lcom/ansca/corona/ViewManager$14;->this$0:Lcom/ansca/corona/ViewManager;

    iget v3, p0, Lcom/ansca/corona/ViewManager$14;->val$id:I

    invoke-virtual {v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(I)Landroid/view/View;

    move-result-object v1

    .line 640
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 641
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, p0, Lcom/ansca/corona/ViewManager$14;->val$width:I

    iget v3, p0, Lcom/ansca/corona/ViewManager$14;->val$height:I

    iget v4, p0, Lcom/ansca/corona/ViewManager$14;->val$left:I

    iget v5, p0, Lcom/ansca/corona/ViewManager$14;->val$top:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 642
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
