.class Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;
.source "VideoImage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0xb37c805a5f2be9dL


# instance fields
.field activity:[Ljava/lang/String;

.field anchor:I

.field anchor2:I

.field appearanceDelay:J

.field button:Landroid/widget/ImageButton;

.field contentLength:J

.field fadeDuration:J

.field fromAlpha:F

.field imageUrl:Ljava/lang/String;

.field inactivityTimeout:J

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkUrl:Ljava/lang/String;

.field overlayOrientation:Ljava/lang/String;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field position:I

.field position2:I

.field toAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/millennialmedia/android/VideoImage$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 32
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 33
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 43
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 45
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 47
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 31
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 32
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 33
    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 43
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 45
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 47
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 84
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "len":I
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "imageObject"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 31
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 32
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 33
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 43
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 45
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 47
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 75
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoImage;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 76
    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "imageObject"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const-wide v7, 0x408f400000000000L    # 1000.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 119
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v3, "image"

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 123
    const-string v3, "contentLength"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 124
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 135
    :cond_3
    const-string v3, "url"

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 136
    const-string v3, "overlayOrientation"

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 137
    const-string v3, "android-layout"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 138
    const-string v3, "android-layoutAnchor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 139
    const-string v3, "android-layout2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 140
    const-string v3, "android-layoutAnchor2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 141
    const-string v3, "android-paddingTop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 142
    const-string v3, "android-paddingLeft"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 143
    const-string v3, "android-paddingRight"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 144
    const-string v3, "android-paddingBottom"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 145
    const-string v3, "appearanceDelay"

    invoke-virtual {p1, v3, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 146
    const-string v3, "inactivityTimeout"

    invoke-virtual {p1, v3, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 147
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 148
    .local v2, "opacityObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 150
    const-string v3, "start"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 151
    const-string v3, "end"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 152
    const-string v3, "fadeDuration"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method getImageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "temp":Landroid/net/Uri;
    iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\.[^\\.]*$"

    const-string v3, ".dat"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 207
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 208
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 209
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 213
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 214
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 215
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 216
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 217
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 218
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 219
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 220
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 221
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 222
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 225
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 227
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 232
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 233
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 234
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 235
    .local v3, "temp":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 237
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 238
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 239
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 240
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 241
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 242
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 243
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 244
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 245
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 246
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 247
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 248
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 249
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 250
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 251
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->activity:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 185
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    return-void
.end method
