.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field static class$twitter4j$StatusJSONImpl:Ljava/lang/Class; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = 0x68c214e4e0c8cc29L


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private contributors:[Ljava/lang/String;

.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isTruncated:Z

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private wasRetweetedByMe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.StatusJSONImpl"

    invoke-static {v0}, Ltwitter4j/StatusJSONImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Ltwitter4j/StatusJSONImpl;->class$twitter4j$StatusJSONImpl:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 53
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 54
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 58
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 297
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 80
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 54
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 58
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 60
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    .line 297
    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 70
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;->init(Lorg/json/JSONObject;)V

    .line 72
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 74
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 366
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 368
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 369
    .local v3, "list":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 370
    .local v4, "size":I
    new-instance v6, Ltwitter4j/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 371
    .local v6, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 372
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 373
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v5, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    .line 374
    .local v5, "status":Ltwitter4j/Status;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 375
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_1
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v5    # "status":Ltwitter4j/Status;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 380
    invoke-static {v6, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :cond_3
    return-object v6

    .line 383
    .end local v0    # "i":I
    .end local v3    # "list":Lorg/json/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v2

    .line 384
    .local v2, "jsone":Lorg/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 385
    .end local v2    # "jsone":Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 386
    .local v7, "te":Ltwitter4j/TwitterException;
    throw v7
.end method

.method private init(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v11, "id"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v11

    iput-wide v11, p0, Ltwitter4j/StatusJSONImpl;->id:J

    .line 85
    const-string v11, "text"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 86
    const-string v11, "source"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    .line 87
    const-string v11, "created_at"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getDate(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 88
    const-string v11, "truncated"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v11

    iput-boolean v11, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    .line 89
    const-string v11, "in_reply_to_status_id"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v11

    iput-wide v11, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    .line 90
    const-string v11, "in_reply_to_user_id"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v11

    iput-wide v11, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    .line 91
    const-string v11, "favorited"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v11

    iput-boolean v11, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    .line 92
    const-string v11, "in_reply_to_screen_name"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getUnescapedString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 93
    const-string v11, "retweet_count"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v11

    iput-wide v11, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    .line 94
    const-string v11, "retweeted"

    invoke-static {v11, p1}, Ltwitter4j/internal/util/ParseUtil;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v11

    iput-boolean v11, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    .line 96
    :try_start_0
    const-string v11, "user"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 97
    new-instance v11, Ltwitter4j/UserJSONImpl;

    const-string v12, "user"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/UserJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    invoke-static {p1}, Ltwitter4j/GeoLocation;->getInstance(Lorg/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v11

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 103
    const-string v11, "place"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 105
    :try_start_1
    new-instance v11, Ltwitter4j/PlaceJSONImpl;

    const-string v12, "place"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/PlaceJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_1
    :goto_0
    const-string v11, "retweeted_status"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 114
    :try_start_2
    new-instance v11, Ltwitter4j/StatusJSONImpl;

    const-string v12, "retweeted_status"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/StatusJSONImpl;-><init>(Lorg/json/JSONObject;)V

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    :cond_2
    :goto_1
    const-string v11, "contributors"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 122
    :try_start_3
    const-string v11, "contributors"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 123
    .local v1, "contributorsArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [J

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 124
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 125
    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 99
    .end local v1    # "contributorsArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catch_0
    move-exception v6

    .line 100
    .local v6, "jsone":Lorg/json/JSONException;
    new-instance v11, Ltwitter4j/TwitterException;

    invoke-direct {v11, v6}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 106
    .end local v6    # "jsone":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 107
    .local v5, "ignore":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    sget-object v11, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "failed to parse place:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v5    # "ignore":Lorg/json/JSONException;
    :catch_2
    move-exception v5

    .line 116
    .restart local v5    # "ignore":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    sget-object v11, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "failed to parse retweeted_status:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v5    # "ignore":Lorg/json/JSONException;
    :catch_3
    move-exception v5

    .line 128
    .local v5, "ignore":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 129
    sget-object v11, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "failed to parse contributors:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 137
    .end local v5    # "ignore":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_3
    const-string v11, "entities"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 139
    :try_start_4
    const-string v11, "entities"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 141
    .local v2, "entities":Lorg/json/JSONObject;
    const-string v11, "user_mentions"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 142
    .local v10, "userMentionsArray":Lorg/json/JSONArray;
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 143
    .local v7, "len":I
    new-array v11, v7, [Ltwitter4j/UserMentionEntity;

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 144
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v7, :cond_5

    .line 145
    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v12, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v12, v11, v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 130
    .end local v2    # "entities":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v7    # "len":I
    .end local v10    # "userMentionsArray":Lorg/json/JSONArray;
    :catch_4
    move-exception v5

    .line 131
    .local v5, "ignore":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    sget-object v11, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "failed to parse contributors:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 135
    .end local v5    # "ignore":Lorg/json/JSONException;
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    goto :goto_3

    .line 148
    .restart local v2    # "entities":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v7    # "len":I
    .restart local v10    # "userMentionsArray":Lorg/json/JSONArray;
    :cond_5
    :try_start_5
    const-string v11, "urls"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 149
    .local v9, "urlsArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 150
    new-array v11, v7, [Ltwitter4j/URLEntity;

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 151
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_6

    .line 152
    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v12, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/URLEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 155
    :cond_6
    const-string v11, "hashtags"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 156
    .local v3, "hashtagsArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 157
    new-array v11, v7, [Ltwitter4j/HashtagEntity;

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 158
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_7

    .line 159
    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v12, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 158
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 162
    :cond_7
    const-string v11, "media"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 163
    .local v8, "mediaArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 164
    new-array v11, v7, [Ltwitter4j/MediaEntity;

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 165
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_8

    .line 166
    iget-object v11, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v12, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Lorg/json/JSONObject;)V

    aput-object v12, v11, v4
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 168
    .end local v2    # "entities":Lorg/json/JSONObject;
    .end local v3    # "hashtagsArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v7    # "len":I
    .end local v8    # "mediaArray":Lorg/json/JSONArray;
    .end local v9    # "urlsArray":Lorg/json/JSONArray;
    .end local v10    # "userMentionsArray":Lorg/json/JSONArray;
    :catch_5
    move-exception v11

    .line 171
    :cond_8
    const-string v11, "annotations"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 173
    :try_start_6
    const-string v11, "annotations"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 174
    .local v0, "annotationsArray":Lorg/json/JSONArray;
    new-instance v11, Ltwitter4j/Annotations;

    invoke-direct {v11, v0}, Ltwitter4j/Annotations;-><init>(Lorg/json/JSONArray;)V

    iput-object v11, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 178
    .end local v0    # "annotationsArray":Lorg/json/JSONArray;
    :cond_9
    :goto_8
    return-void

    .line 175
    :catch_6
    move-exception v11

    goto :goto_8
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 6
    .param p1, "that"    # Ltwitter4j/Status;

    .prologue
    .line 181
    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 182
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 183
    const/high16 v2, -0x80000000

    .line 187
    :goto_0
    return v2

    .line 184
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 185
    const v2, 0x7fffffff

    goto :goto_0

    .line 187
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    if-nez p1, :cond_1

    move v0, v1

    .line 403
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 400
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 403
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getContributors()[J
    .locals 5

    .prologue
    .line 265
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 271
    :try_start_0
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 274
    sget-object v2, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "failed to parse contributors:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributors:[Ljava/lang/String;

    .line 279
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    return-object v2
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()J
    .locals 2

    .prologue
    .line 324
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    return-wide v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetweetedByMe()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    return v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 408
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", isTruncated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", isFavorited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", geoLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", place="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", retweetCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", wasRetweetedByMe="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/StatusJSONImpl;->wasRetweetedByMe:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", contributors="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", annotations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", retweetedStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [[J

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method
