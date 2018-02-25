.class Lcom/ansca/corona/ViewManager$7;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$color:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;II)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$7;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$7;->val$id:I

    iput p3, p0, Lcom/ansca/corona/ViewManager$7;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$7;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    iget v3, p0, Lcom/ansca/corona/ViewManager$7;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 412
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    iget v1, p0, Lcom/ansca/corona/ViewManager$7;->val$color:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextViewColor(I)V

    goto :goto_0
.end method
