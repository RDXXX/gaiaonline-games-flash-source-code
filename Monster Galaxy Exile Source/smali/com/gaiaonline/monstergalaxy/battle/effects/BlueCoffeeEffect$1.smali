.class Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->access$0(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->access$1(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 23
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;->access$0(Lcom/gaiaonline/monstergalaxy/battle/effects/BlueCoffeeEffect;)Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 24
    return-void
.end method
