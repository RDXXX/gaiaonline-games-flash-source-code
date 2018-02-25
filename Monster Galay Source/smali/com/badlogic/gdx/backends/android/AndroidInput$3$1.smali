.class Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$3;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$3$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input$TextInputListener;->input(Ljava/lang/String;)V

    .line 182
    return-void
.end method
