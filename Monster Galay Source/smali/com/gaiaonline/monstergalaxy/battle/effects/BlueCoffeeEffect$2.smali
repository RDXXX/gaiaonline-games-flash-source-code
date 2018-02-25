.class Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;
.super Ljava/lang/Object;
.source "BlueCoffeeEffect.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->access$2(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->access$2(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect$OnCompleteListener;->onComplete()V

    .line 35
    :cond_0
    return-void
.end method
