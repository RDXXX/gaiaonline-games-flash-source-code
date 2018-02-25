.class public Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
.source "AndroidClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method
