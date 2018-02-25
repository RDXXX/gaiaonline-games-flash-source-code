.class Lcom/gaiaonline/monstergalaxy/share/ShareScreen$3;
.super Ljava/lang/Object;
.source "ShareScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/share/ShareScreen$3;->this$0:Lcom/gaiaonline/monstergalaxy/share/ShareScreen;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/share/ShareScreen;->hideDialog()V

    .line 249
    return-void
.end method
