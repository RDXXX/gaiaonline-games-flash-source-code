.class Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$1;
.super Ljava/lang/Object;
.source "ZodiacAttackMeter.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/battle/Timer$CompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;-><init>(Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;)V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerComplete()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter$1;->this$0:Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;->access$0(Lcom/gaiaonline/monstergalaxy/battle/ZodiacAttackMeter;)V

    .line 79
    return-void
.end method
