.class public Lcom/badlogic/gdx/scenes/scene2d/ui/utils/DesktopClipboard;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
.source "DesktopClipboard.java"

# interfaces
.implements Ljava/awt/datatransfer/ClipboardOwner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 6

    .prologue
    .line 33
    const-string v4, ""

    .line 34
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v1

    .line 35
    .local v1, "clipboard":Ljava/awt/datatransfer/Clipboard;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/awt/datatransfer/Clipboard;->getContents(Ljava/lang/Object;)Ljava/awt/datatransfer/Transferable;

    move-result-object v2

    .line 36
    .local v2, "contents":Ljava/awt/datatransfer/Transferable;
    if-eqz v2, :cond_1

    sget-object v5, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v2, v5}, Ljava/awt/datatransfer/Transferable;->isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 37
    .local v3, "hasTransferableText":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    sget-object v5, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v2, v5}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_1
    return-object v4

    .line 36
    .end local v3    # "hasTransferableText":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 42
    .restart local v3    # "hasTransferableText":Z
    :catch_0
    move-exception v5

    goto :goto_1

    .line 40
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public lostOwnership(Ljava/awt/datatransfer/Clipboard;Ljava/awt/datatransfer/Transferable;)V
    .locals 0
    .param p1, "arg0"    # Ljava/awt/datatransfer/Clipboard;
    .param p2, "arg1"    # Ljava/awt/datatransfer/Transferable;

    .prologue
    .line 58
    return-void
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v1, p1}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "stringSelection":Ljava/awt/datatransfer/StringSelection;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 53
    .local v0, "clipboard":Ljava/awt/datatransfer/Clipboard;
    invoke-virtual {v0, v1, p0}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 54
    return-void
.end method
