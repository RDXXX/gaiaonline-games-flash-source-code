.class Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;
.super Ljava/lang/Object;
.source "ZodiacAttackMeter.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/ZodiacIntro$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZodiacIntroFinished()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->access$1(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/screen/StageScreenElement;->setVisible(Z)V

    .line 222
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$2;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->access$2(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V

    .line 223
    return-void
.end method
