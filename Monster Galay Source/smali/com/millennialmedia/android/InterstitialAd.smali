.class Lcom/millennialmedia/android/InterstitialAd;
.super Lcom/millennialmedia/android/CachedAd;
.source "InterstitialAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x47973e3dff4c4b9dL


# instance fields
.field baseUrl:Ljava/lang/String;

.field content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/millennialmedia/android/InterstitialAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/InterstitialAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;
    .param p3, "checkDeferredViewStart"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    if-eqz p3, :cond_2

    .line 75
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p2, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/millennialmedia/android/InterstitialAd;->deferredViewStart:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method download(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "Interstitial"

    return-object v0
.end method

.method isOnDisk(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    .line 122
    return-void
.end method

.method saveAssets(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 84
    iget-object v0, p2, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Z)V

    .line 85
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return-void
.end method
