.class Lcom/millennialmedia/android/VideoLogEvent;
.super Ljava/lang/Object;
.source "VideoLogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0xb0a600850e2f008L


# instance fields
.field activities:[Ljava/lang/String;

.field position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/millennialmedia/android/VideoLogEvent$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoLogEvent$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoLogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "len":I
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "logObject"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoLogEvent;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 35
    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "logObject"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v2, "time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    .line 66
    const-string v2, "urls"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 67
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
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
    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 115
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 117
    iget-object v3, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
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
    .line 122
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 123
    iget-object v4, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 125
    .local v3, "temp":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 93
    return-void
.end method
