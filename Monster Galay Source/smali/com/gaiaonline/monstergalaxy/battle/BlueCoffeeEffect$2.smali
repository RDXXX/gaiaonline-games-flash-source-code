.class Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;
.super Ljava/lang/Object;
.source "BlueCoffeeEffect.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 38
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->access$0(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;->onComplete()V

    .line 42
    :cond_0
    return-void
.end method
