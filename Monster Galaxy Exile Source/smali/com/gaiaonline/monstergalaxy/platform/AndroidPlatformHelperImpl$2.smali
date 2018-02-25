.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initialProgress:I

.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;->initialProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 610
    iget v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;->initialProgress:I

    sub-int v0, v2, p2

    .line 612
    .local v0, "deltaProgress":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    .line 613
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 614
    .local v1, "value":F
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    sget v3, Lcom/gaiaonline/monstergalaxy/R$id;->settings_effectsvolume:I

    if-ne v2, v3, :cond_1

    .line 615
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setSoundsVolume(F)V

    .line 617
    const-string v2, "ui_menu_slide"

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 625
    .end local v1    # "value":F
    :cond_0
    :goto_0
    return-void

    .line 618
    .restart local v1    # "value":F
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    sget v3, Lcom/gaiaonline/monstergalaxy/R$id;->settings_musicvolume:I

    if-ne v2, v3, :cond_0

    .line 619
    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setMusicVolume(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;->initialProgress:I

    .line 605
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    .line 591
    .local v0, "value":F
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    sget v2, Lcom/gaiaonline/monstergalaxy/R$id;->settings_effectsvolume:I

    if-ne v1, v2, :cond_1

    .line 592
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setSoundsVolume(F)V

    .line 593
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setSoundVolume(F)V

    .line 594
    const-string v1, "ui_menu_slide"

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->playSound(Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    sget v2, Lcom/gaiaonline/monstergalaxy/R$id;->settings_musicvolume:I

    if-ne v1, v2, :cond_0

    .line 596
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/SoundManager;->setMusicVolume(F)V

    .line 597
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->setMusicVolume(F)V

    goto :goto_0
.end method
