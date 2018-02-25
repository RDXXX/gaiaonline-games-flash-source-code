.class Lcom/ansca/corona/ViewManager$6;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewAlign(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$align:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$6;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$6;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$6;->val$align:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$6;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    iget v3, p0, Lcom/ansca/corona/ViewManager$6;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 390
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$6;->val$align:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setTextViewAlign(Ljava/lang/String;)V

    goto :goto_0
.end method
