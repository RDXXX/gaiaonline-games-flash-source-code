.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$1;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$1;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->settings_dailyprizesalert:I

    if-ne v0, v1, :cond_1

    .line 574
    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setDailyPrizesAlerts(Z)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->settings_mogarestedalert:I

    if-ne v0, v1, :cond_2

    .line 576
    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setMogaRestedAlerts(Z)V

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->settings_tammeralerts:I

    if-ne v0, v1, :cond_3

    .line 578
    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setTammerAlerts(Z)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->settings_islandalerts:I

    if-ne v0, v1, :cond_0

    .line 580
    invoke-static {p2}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setIslandAlerts(Z)V

    goto :goto_0
.end method
