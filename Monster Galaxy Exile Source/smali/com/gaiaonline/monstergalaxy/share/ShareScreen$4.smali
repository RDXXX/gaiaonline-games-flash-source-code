.class Lcom/gaiaonline/monstergalaxy/share/ShareScreen$4;
.super Ljava/lang/Object;
.source "ShareScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$4;->this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->access$2(Lcom/gaiaonline/monstergalaxy/share/ShareScreen;Z)V

    .line 263
    return-void
.end method
