.class Lcom/ansca/corona/ViewManager$10;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewText(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$10;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$10;->val$id:I

    iput-object p3, p0, Lcom/ansca/corona/ViewManager$10;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 483
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$10;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v5, Lcom/ansca/corona/CoronaEditText;

    iget v6, p0, Lcom/ansca/corona/ViewManager$10;->val$id:I

    invoke-virtual {v4, v5, v6}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaEditText;

    .line 484
    .local v3, "view":Lcom/ansca/corona/CoronaEditText;
    if-nez v3, :cond_0

    .line 504
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {v3}, Lcom/ansca/corona/CoronaEditText;->getSelectionStart()I

    move-result v1

    .line 490
    .local v1, "selectionStartIndex":I
    invoke-virtual {v3}, Lcom/ansca/corona/CoronaEditText;->getSelectionEnd()I

    move-result v0

    .line 493
    .local v0, "selectionEndIndex":I
    iget-object v4, p0, Lcom/ansca/corona/ViewManager$10;->val$text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaEditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v3}, Lcom/ansca/corona/CoronaEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 497
    .local v2, "textLength":I
    if-le v1, v2, :cond_1

    .line 498
    move v1, v2

    .line 500
    :cond_1
    if-le v0, v2, :cond_2

    .line 501
    move v0, v2

    .line 503
    :cond_2
    invoke-virtual {v3, v1, v0}, Lcom/ansca/corona/CoronaEditText;->setSelection(II)V

    goto :goto_0
.end method
