.class public abstract Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultClipboard()Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_0

    .line 36
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/AndroidClipboard;-><init>()V

    .line 39
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "com.badlogic.gdx.scenes.scene2d.ui.utils.DesktopClipboard"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/utils/Clipboard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Couldn\'t instantiate desktop clipboard"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract getContents()Ljava/lang/String;
.end method

.method public abstract setContents(Ljava/lang/String;)V
.end method
