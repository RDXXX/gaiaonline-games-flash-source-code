.class public final Lcom/sessionm/core/SessionMAndroidConfig;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/api/Config;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sessionm/core/SessionMAndroidConfig$1;,
        Lcom/sessionm/core/SessionMAndroidConfig$Inner;
    }
.end annotation


# static fields
.field public static final SERVER_DEV:I = 0x1

.field public static final SERVER_PROD:I = 0x3

.field public static final SERVER_STAGE:I = 0x2

.field public static final SERVER_TEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SessionMAndroidConfig"


# instance fields
.field private final configImtems:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    .line 71
    :try_start_0
    const-string v0, "com.sessionm.DevConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    const-string v0, "SessionMAndroidConfig"

    const-string v1, "loading com.sessionm.DevConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sessionm/core/SessionMAndroidConfig$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sessionm/core/SessionMAndroidConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sessionm/core/SessionMAndroidConfig;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sessionm/core/SessionMAndroidConfig$Inner;->instance:Lcom/sessionm/core/SessionMAndroidConfig;

    return-object v0
.end method

.method public static getResId(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public enableDebugMode(Z)V
    .locals 3

    .prologue
    .line 93
    const-string v0, "production"

    .line 95
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v0, "debug"

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v2, "app.running.mode"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v1, "sdk.version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecureAPI()Z
    .locals 2

    .prologue
    .line 185
    const-string v0, "api.version"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadCustomConfig(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 161
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 163
    if-nez v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    :goto_1
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    :try_start_6
    const-string v2, "SessionMAndroidConfig"

    const-string v3, "could not read custom config file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    :goto_2
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 175
    :goto_3
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    :try_start_b
    const-string v1, "SessionMAndroidConfig"

    const-string v2, "could not find custom config file... ignoring..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method public portalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "portal.server.url"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public serverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "api.server.url"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setActivityOrientation(I)V
    .locals 3

    .prologue
    .line 199
    const-string v0, "portrait"

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v2, "app.bugs.orientation"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    return-void

    .line 204
    :pswitch_0
    const-string v0, "dynamic"

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 210
    :pswitch_2
    const-string v0, "portrait"

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setServer(I)V
    .locals 5

    .prologue
    .line 123
    const-string v0, ""

    .line 124
    const-string v1, ""

    .line 125
    const-string v2, ""

    .line 127
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 128
    const-string v0, "api.server.url.dev"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    const-string v1, "portal.server.url.dev"

    invoke-virtual {p0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    const-string v2, "ads.server.url.dev"

    invoke-virtual {p0, v2}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    if-nez p1, :cond_3

    .line 133
    const-string v0, "api.server.url.test"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    const-string v1, "portal.server.url.test"

    invoke-virtual {p0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    const-string v2, "ads.server.url.test"

    invoke-virtual {p0, v2}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 138
    const-string v0, "api.server.url.staging"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    const-string v1, "portal.server.url.staging"

    invoke-virtual {p0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    const-string v2, "ads.server.url.staging"

    invoke-virtual {p0, v2}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 143
    const-string v0, "api.server.url.production"

    invoke-virtual {p0, v0}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    const-string v1, "portal.server.url.production"

    invoke-virtual {p0, v1}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    const-string v2, "ads.server.url"

    invoke-virtual {p0, v2}, Lcom/sessionm/core/SessionMAndroidConfig;->getConfigurationByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_5
    iget-object v3, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v4, "api.server.url"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v3, "portal.server.url"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sessionm/core/SessionMAndroidConfig;->configImtems:Ljava/util/Properties;

    const-string v1, "ads.server.url"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1
.end method
