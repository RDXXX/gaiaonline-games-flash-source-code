.class Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;
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

.field private final synthetic val$effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;->val$effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;->val$effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect;->setEffect(Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;)V

    .line 30
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/BlueCoffeeEffect$1;->val$effect2:Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/battle/effects/Effect;->start()V

    .line 31
    return-void
.end method
