.class Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;
.super Ljava/lang/Object;
.source "LinealAttackMeter.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/OnActionCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->addPointer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->access$0(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V

    .line 88
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;->access$1(Lcom/gaiaonline/monstergalaxy/battle/dialer/LinealAttackMeter;)V

    .line 89
    return-void
.end method
