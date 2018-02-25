.class Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/CachedAd;
.source "VideoAd.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x252e2adaa757e358L


# instance fields
.field activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field cacheComplete:[Ljava/lang/String;

.field cacheFailed:[Ljava/lang/String;

.field contentLength:J

.field duration:J

.field endActivity:[Ljava/lang/String;

.field onCompletionUrl:Ljava/lang/String;

.field showControls:Z

.field showCountdown:Z

.field startActivity:[Ljava/lang/String;

.field stayInPlayer:Z

.field videoError:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Lcom/millennialmedia/android/VideoAd$2;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$2;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "len":I
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 66
    const/4 v3, 0x3

    new-array v2, v3, [Z

    .line 67
    .local v2, "yo":[Z
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 68
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 69
    const/4 v3, 0x1

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 70
    const/4 v3, 0x2

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 74
    const-class v3, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 75
    const-class v3, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "len":I
    .end local v2    # "yo":[Z
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    .line 99
    if-eqz p1, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 106
    .local v1, "jsonAdObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonAdObject":Lorg/json/JSONObject;
    .local v2, "jsonAdObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 113
    .end local v2    # "jsonAdObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonAdObject":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 115
    const/4 v3, 0x0

    .line 116
    .local v3, "videoObject":Lorg/json/JSONObject;
    const-string v4, "video"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/VideoAd;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 121
    .end local v1    # "jsonAdObject":Lorg/json/JSONObject;
    .end local v3    # "videoObject":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 108
    .restart local v1    # "jsonAdObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

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

    .line 350
    if-eqz p3, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p2, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->deferredViewStart:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 351
    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method delete(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/millennialmedia/android/AdCache;->cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    const-string v0, "Ad %s was deleted."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method protected deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "videoObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 133
    const-string v5, "startActivity"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 134
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 138
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "i":I
    :cond_0
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 144
    :cond_1
    const-string v5, "endActivity"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 149
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "i":I
    :cond_2
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 155
    :cond_3
    const-string v5, "cacheComplete"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 160
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 164
    .end local v0    # "i":I
    :cond_4
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 166
    :cond_5
    const-string v5, "cacheFailed"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_6

    .line 169
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 171
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 175
    .end local v0    # "i":I
    :cond_6
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 177
    :cond_7
    const-string v5, "videoError"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_8

    .line 180
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 182
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 186
    .end local v0    # "i":I
    :cond_8
    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 188
    :cond_9
    const-string v5, "showVideoPlayerControls"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 189
    const-string v5, "showCountdownHUD"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 190
    const-string v5, "onCompletion"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 191
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_a

    .line 193
    const-string v5, "url"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 194
    const-string v5, "stayInPlayer"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 196
    :cond_a
    const-string v5, "duration"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    double-to-long v5, v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 197
    const-string v5, "contentLength"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 198
    const-string v5, "buttons"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_c

    .line 201
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 203
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_b

    .line 206
    new-instance v3, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v3, v2}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V

    .line 207
    .local v3, "vb":Lcom/millennialmedia/android/VideoImage;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v3    # "vb":Lcom/millennialmedia/android/VideoImage;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 211
    .end local v0    # "i":I
    :cond_c
    const-string v5, "log"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_e

    .line 214
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_e

    .line 216
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_d

    .line 219
    new-instance v4, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-direct {v4, v2}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V

    .line 220
    .local v4, "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v4    # "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 224
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method download(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "success":Z
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 252
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v4

    .line 255
    :cond_1
    const-string v5, "Downloading content to %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "video.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    .line 259
    if-eqz v3, :cond_2

    .line 262
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 265
    .local v0, "button":Lcom/millennialmedia/android/VideoImage;
    iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    .line 266
    if-nez v3, :cond_5

    .line 271
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v2    # "i":I
    :cond_2
    if-nez v3, :cond_6

    .line 273
    iget-boolean v5, p0, Lcom/millennialmedia/android/VideoAd;->downloadAllOrNothing:Z

    if-eqz v5, :cond_3

    .line 274
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->delete(Landroid/content/Context;)V

    .line 275
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 286
    :cond_4
    :goto_2
    const-string v5, "Caching completed successfully? %b"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    .line 287
    goto :goto_0

    .line 262
    .restart local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v2    # "i":I
    :cond_6
    if-eqz v3, :cond_4

    .line 280
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 281
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/millennialmedia/android/AdCache;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    :cond_7
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    goto :goto_2
.end method

.method getType()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "Video"

    return-object v0
.end method

.method isOnDisk(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 307
    .local v2, "existsInFilesystem":Z
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 310
    .local v0, "adDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    new-instance v7, Lcom/millennialmedia/android/VideoAd$1;

    invoke-direct {v7, p0}, Lcom/millennialmedia/android/VideoAd$1;-><init>(Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "list":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-lt v7, v8, :cond_0

    .line 322
    const/4 v2, 0x1

    .line 323
    :cond_0
    if-eqz v2, :cond_1

    .line 325
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "video.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v6, "videoFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 328
    const/4 v2, 0x0

    .line 344
    .end local v5    # "list":[Ljava/lang/String;
    .end local v6    # "videoFile":Ljava/io/File;
    :cond_1
    :goto_0
    return v2

    .line 332
    .restart local v5    # "list":[Ljava/lang/String;
    .restart local v6    # "videoFile":Ljava/io/File;
    :cond_2
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 334
    .local v1, "button":Lcom/millennialmedia/android/VideoImage;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v4, "imageFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 337
    const/4 v2, 0x0

    .line 338
    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    .line 432
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    .line 433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    .line 434
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    .line 435
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    .line 436
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 437
    .local v0, "count":I
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 441
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    .line 442
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 443
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    .line 445
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    .line 446
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 447
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    .line 448
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 449
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 450
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 451
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    .line 452
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 453
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 454
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 455
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    .line 456
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 457
    iget-object v5, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 459
    :cond_4
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 460
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 461
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 463
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 464
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 467
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_5
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 469
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_6

    .line 471
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoLogEvent;

    .line 472
    .local v3, "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 474
    .end local v3    # "videoLogEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_6
    return-void
.end method

.method saveAssets(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method show(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 359
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/millennialmedia/android/VideoPlayer;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    instance-of v2, p1, Lcom/millennialmedia/android/MMActivity;

    if-nez v2, :cond_0

    .line 361
    const/high16 v2, 0x24000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    :cond_0
    const-string v2, "cached"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-string v2, "videoId"

    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "class"

    const-string v3, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mmsyscache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "sdCardAdVideo":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 374
    .end local v1    # "sdCardAdVideo":Ljava/lang/String;
    :goto_0
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 376
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void

    .line 372
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 12
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 479
    iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 480
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 481
    iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 482
    iget-boolean v10, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 483
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v0, v5

    .line 485
    .local v8, "sa":Ljava/lang/String;
    invoke-interface {p1, v8}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 484
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v8    # "sa":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 487
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, v0, v5

    .line 488
    .local v4, "ea":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 489
    .end local v4    # "ea":Ljava/lang/String;
    :cond_1
    iget-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 490
    iget-wide v10, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    invoke-interface {p1, v10, v11}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 491
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v2, v0, v5

    .line 493
    .local v2, "cc":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 492
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 494
    .end local v2    # "cc":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 495
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .line 496
    .local v3, "cf":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 495
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 497
    .end local v3    # "cf":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    array-length v10, v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 498
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_4

    aget-object v9, v0, v5

    .line 499
    .local v9, "ve":Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 498
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 500
    .end local v9    # "ve":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 501
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 502
    .local v1, "button":Lcom/millennialmedia/android/VideoImage;
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_5

    .line 503
    .end local v1    # "button":Lcom/millennialmedia/android/VideoImage;
    :cond_5
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 504
    iget-object v10, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/android/VideoLogEvent;

    .line 505
    .local v7, "logEvent":Lcom/millennialmedia/android/VideoLogEvent;
    invoke-interface {p1, v7}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_6

    .line 506
    .end local v7    # "logEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 392
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->startActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->endActivity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x3

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 398
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 402
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 409
    return-void
.end method
