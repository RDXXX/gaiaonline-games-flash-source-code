.class Lcom/badlogic/gdx/backends/android/AndroidInput$4;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput;->setOnscreenKeyboardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Z)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iput-boolean p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 424
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->val$visible:Z

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 427
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 428
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 432
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    iget-object v2, v2, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
