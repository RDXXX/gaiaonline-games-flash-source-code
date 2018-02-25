.class Lcom/ansca/corona/ViewManager$9;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewFocus(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$focus:Z

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$9;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$9;->val$focus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 451
    const/4 v2, 0x0

    .line 452
    .local v2, "view":Lcom/ansca/corona/CoronaEditText;
    iget v3, p0, Lcom/ansca/corona/ViewManager$9;->val$id:I

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v4, Lcom/ansca/corona/CoronaEditText;

    iget v5, p0, Lcom/ansca/corona/ViewManager$9;->val$id:I

    invoke-virtual {v3, v4, v5}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "view":Lcom/ansca/corona/CoronaEditText;
    check-cast v2, Lcom/ansca/corona/CoronaEditText;

    .line 455
    .restart local v2    # "view":Lcom/ansca/corona/CoronaEditText;
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/ansca/corona/ViewManager$9;->val$focus:Z

    if-eqz v3, :cond_1

    .line 457
    invoke-virtual {v2}, Lcom/ansca/corona/CoronaEditText;->requestFocus()Z

    .line 460
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 465
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 475
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 472
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 473
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/ansca/corona/ViewManager$9;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v3}, Lcom/ansca/corona/ViewManager;->access$400(Lcom/ansca/corona/ViewManager;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
