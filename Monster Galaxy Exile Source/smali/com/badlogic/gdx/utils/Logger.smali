.class public Lcom/badlogic/gdx/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private enabled:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Logger;->enabled:Z

    .line 28
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Logger;->enabled:Z

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Logger;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Logger;->enabled:Z

    .line 40
    return-void
.end method
