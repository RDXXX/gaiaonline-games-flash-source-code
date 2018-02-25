.class final Lcom/millennialmedia/android/HttpRedirection;
.super Ljava/lang/Object;
.source "HttpRedirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/HttpRedirection$Listener;
    }
.end annotation


# static fields
.field private static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field private static final LOG_URL_FORMAT:Ljava/lang/String; = "Redirecting to: %s"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method static getIntentFromUri(Landroid/content/Context;Landroid/net/Uri;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destinationUri"    # Landroid/net/Uri;
    .param p2, "settings"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 88
    const/4 v6, 0x0

    .line 90
    .local v6, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "market"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    const-string v8, "Creating Android Market intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 95
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "market"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    if-eqz v6, :cond_13

    .line 201
    const-string v4, ""

    .line 202
    .local v4, "className":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 203
    .local v5, "component":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 204
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 205
    :cond_1
    const-string v8, "com.millennialmedia.android.MMActivity"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    instance-of v8, p0, Lcom/millennialmedia/android/MMActivity;

    if-nez v8, :cond_3

    .line 206
    :cond_2
    const/high16 v8, 0x24000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    :cond_3
    const-string v8, "%s resolved to Intent: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "component":Landroid/content/ComponentName;
    :goto_1
    return-object v6

    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "rtsp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 100
    const-string v8, "Creating streaming video player intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 101
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    const-string v8, "class"

    const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 107
    const-string v8, "Creating telephone intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 108
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.DIAL"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "tel"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "sms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 113
    const-string v8, "Creating txt message intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 114
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "address":Ljava/lang/String;
    const-string v8, "?body="

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, "bodyIndex":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_7

    .line 118
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_7
    const/16 v8, 0x2c

    const/16 v9, 0x3b

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v8, "address"

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v8, -0x1

    if-eq v2, v8, :cond_8

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "body":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x6

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v8, "sms_body"

    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .end local v1    # "body":Ljava/lang/String;
    :cond_8
    const-string v8, "vnd.android-dir/mms-sms"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/4 v8, 0x0

    const-string v9, "sms"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "bodyIndex":I
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mailto"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 132
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "email"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "geo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 137
    const-string v8, "Creating Google Maps intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 138
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "geo"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".3gp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 144
    :cond_c
    const-string v8, "Creating video player intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 145
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    const-string v8, "class"

    const-string v9, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/4 v8, 0x0

    const-string v9, "streamingVideo"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 152
    if-eqz p2, :cond_e

    iget-boolean v8, p2, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    if-eqz v8, :cond_e

    .line 155
    const-string v8, "Creating launch overlay intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 156
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-class v8, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v8, "settings"

    invoke-virtual {v6, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 158
    const-string v8, "class"

    const-string v9, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 164
    :cond_e
    const-string v8, "Creating launch browser intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 165
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "browser"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 172
    const-string v8, "Creating launch browser intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 173
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "browser"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmbrowser"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 178
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "urlString":Ljava/lang/String;
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "browserAction":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 184
    const-string v8, "://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 185
    const-string v8, "//"

    const-string v9, "://"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    :cond_11
    const-string v8, "Creating launch browser intent."

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 187
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .restart local v6    # "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    const-string v9, "browser"

    invoke-static {p0, v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v3    # "browserAction":Ljava/lang/String;
    .end local v7    # "urlString":Ljava/lang/String;
    :cond_12
    const-string v8, "Creating intent for unrecognized URI. %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v6, v8, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 211
    :cond_13
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method static final navigateRedirects(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 28
    const/16 v4, 0xcc

    .line 30
    .local v4, "rc":I
    if-nez p0, :cond_1

    .line 31
    const/4 p0, 0x0

    .line 83
    .end local p0    # "urlString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "urlString":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 38
    :goto_1
    :try_start_0
    const-string v6, "https"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 44
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0xbb8

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 46
    const-string v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 48
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 50
    const/16 v6, 0x12c

    if-lt v4, v6, :cond_0

    const/16 v6, 0x190

    if-ge v4, v6, :cond_0

    .line 52
    const-string v6, "Location"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "locationUrl":Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "locationUri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_3

    .line 56
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_2
    :goto_2
    const-string v6, "Redirecting to: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 66
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "locationUri":Ljava/net/URI;
    .end local v3    # "locationUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 57
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "locationUri":Ljava/net/URI;
    .restart local v3    # "locationUrl":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_3
    if-eqz v3, :cond_2

    .line 58
    move-object p0, v3

    goto :goto_2

    .line 70
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "locationUri":Ljava/net/URI;
    .end local v3    # "locationUrl":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v6, "Connection timeout."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v6, "URI Syntax incorrect."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method static startActivityFromUri(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;Lcom/millennialmedia/android/HttpRedirection$Listener;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/millennialmedia/android/OverlaySettings;
    .param p3, "listener"    # Lcom/millennialmedia/android/HttpRedirection$Listener;
    .param p4, "adType"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 227
    .local v2, "contextReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 229
    .local v3, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/HttpRedirection$Listener;>;"
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/millennialmedia/android/HttpRedirection$1;

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/HttpRedirection$1;-><init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
