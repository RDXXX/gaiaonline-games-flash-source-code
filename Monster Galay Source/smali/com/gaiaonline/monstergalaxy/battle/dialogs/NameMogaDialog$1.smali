.class Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog$1;
.super Ljava/lang/Object;
.source "NameMogaDialog.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;Lcom/gaiaonline/monstergalaxy/model/moga/Moga;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;

    invoke-static {v0, p1}, Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;->access$0(Lcom/gaiaonline/monstergalaxy/battle/dialogs/NameMogaDialog;Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V

    .line 33
    return-void
.end method
