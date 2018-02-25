.class Lcom/badlogic/gdx/backends/android/AndroidInput$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "AndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$1;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput$1;->newObject()Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    move-result-object v0

    return-object v0
.end method
