.class public abstract Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;
.super Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;
.source "AttackMeter.java"


# instance fields
.field protected final NORMAL:I

.field protected final PERFECT:I

.field protected final STRUCK_DELAY:F

.field protected final VERY_GOOD:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/screen/ScreenGroup;-><init>()V

    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->STRUCK_DELAY:F

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->NORMAL:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->PERFECT:I

    .line 11
    const/4 v0, 0x2

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/battle/dialer/AttackMeter;->VERY_GOOD:I

    .line 5
    return-void
.end method


# virtual methods
.method public abstract getDamageMultiplier()F
.end method

.method public abstract start()V
.end method
