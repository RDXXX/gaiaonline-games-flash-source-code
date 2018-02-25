.class Lcom/millennialmedia/android/OverlaySettings;
.super Ljava/lang/Object;
.source "OverlaySettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADURL:Ljava/lang/String; = "OVERLAY_adurl"

.field public static final BANNER_TYPE:Ljava/lang/String; = "OVERLAY_type"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/OverlaySettings;",
            ">;"
        }
    .end annotation
.end field

.field static final PROPERTIES_ACCELEROMETER:Ljava/lang/String; = "enableNativeAccelerometer"

.field static final PROPERTIES_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field static final PROPERTIES_DELAY_ENABLE_BOTTOM_BAR:Ljava/lang/String; = "delayEnableBottombar"

.field static final PROPERTIES_DELAY_SHOW_BOTTOM_BAR:Ljava/lang/String; = "delayShowBottombar"

.field static final PROPERTIES_ENABLE_BOTTOM:Ljava/lang/String; = "enableBottombar"

.field static final PROPERTIES_ORIENTATION:Ljava/lang/String; = "orientation"

.field static final PROPERTIES_SHOW_BOTTOM:Ljava/lang/String; = "showBottombar"

.field static final PROPERTIES_SHOW_TITLE:Ljava/lang/String; = "showTitlebar"

.field static final PROPERTIES_TITLE:Ljava/lang/String; = "title"

.field static final PROPERTIES_TRANSITION:Ljava/lang/String; = "transition"

.field static final PROPERTIES_TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field static final PROPERTIES_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final STATE:Ljava/lang/String; = "OVERLAY_state"

.field static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field static final STATE_LOADING:Ljava/lang/String; = "loading"


# instance fields
.field adUrl:Ljava/lang/String;

.field canAccelerate:Z

.field delayEnableBottombar:J

.field delayShowBottombar:J

.field isBannerAd:Z

.field orientation:Ljava/lang/String;

.field overlayTitle:Ljava/lang/String;

.field overlayTransition:Ljava/lang/String;

.field shouldEnableBottomBar:Z

.field shouldLaunchToOverlay:Z

.field shouldMakeOverlayTransparent:Z

.field shouldResizeOverlay:I

.field shouldShowBottomBar:Z

.field shouldShowCustomClose:Z

.field shouldShowTitlebar:Z

.field state:Ljava/lang/String;

.field transitionTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/OverlaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/millennialmedia/android/OverlaySettings;->reset()V

    .line 59
    const-string v0, "loading"

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v4, 0x8

    :try_start_0
    new-array v0, v4, [Z

    .line 69
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 70
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 71
    const/4 v4, 0x1

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    .line 72
    const/4 v4, 0x2

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 73
    const/4 v4, 0x3

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 74
    const/4 v4, 0x4

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    .line 75
    const/4 v4, 0x5

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    .line 76
    const/4 v4, 0x6

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    .line 77
    const/4 v4, 0x7

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->isBannerAd:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    .line 82
    iget-wide v4, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    :goto_0
    iput-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    .line 92
    .end local v0    # "booleanValues":[Z
    :goto_1
    return-void

    .line 82
    .restart local v0    # "booleanValues":[Z
    :cond_0
    iget-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "booleanValues":[Z
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method log()V
    .locals 5

    .prologue
    .line 114
    const-string v0, "shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s overlayTitle: %s shouldEnableBottomBar: %b shouldShowBottomBar: %b shouldAccelerate: %b shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s DelayEnableBottomBar: %d, DelayShowBottomBar: %d"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 97
    iput-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    .line 98
    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 99
    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 100
    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    .line 101
    iput-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    .line 102
    iput v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    .line 103
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    .line 104
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    .line 105
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    .line 106
    iput-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    .line 107
    const-string v0, "both"

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 108
    iput-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    .line 109
    iput-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    const/16 v1, 0x8

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->isBannerAd:Z

    aput-boolean v2, v0, v1

    .line 131
    .local v0, "booleanValues":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 132
    iget v1, p0, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v1, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-wide v1, p0, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v1, p0, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-wide v1, p0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget-wide v1, p0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    return-void
.end method
