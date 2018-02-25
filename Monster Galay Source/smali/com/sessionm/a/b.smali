.class public final Lcom/sessionm/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final A:Ljava/lang/String; = "api.action.events"

.field public static final B:Ljava/lang/String; = "app.running.mode"

.field public static final C:Ljava/lang/String; = "app.id"

.field public static final D:Ljava/lang/String; = "app.cache.path"

.field public static final E:Ljava/lang/String; = "app.optout.path"

.field public static final F:Ljava/lang/String; = "app.logging.enable"

.field public static final G:Ljava/lang/String; = "app.logging.level"

.field public static final H:Ljava/lang/String; = "app.bugs.orientation"

.field public static final I:Ljava/lang/String; = "sdk.revision"

.field public static final J:Ljava/lang/String; = "sdk.version"

.field public static final K:Ljava/lang/String; = "status"

.field public static final L:Ljava/lang/String; = "_session"

.field public static final M:Ljava/lang/String; = "cookie"

.field public static final N:Ljava/lang/String; = "ok"

.field public static final O:Ljava/lang/String; = "uuid"

.field public static final P:Ljava/lang/String; = "forecast events"

.field public static final Q:Ljava/lang/String; = "sdk.logging.url"

.field public static final R:Ljava/lang/String; = "sdk.remote.debugger.url"

.field public static final S:I = 0x7c5

.field public static T:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "api.server.url"

.field public static final c:Ljava/lang/String; = "api.server.url.test"

.field public static final d:Ljava/lang/String; = "api.server.url.dev"

.field public static final e:Ljava/lang/String; = "api.server.url.staging"

.field public static final f:Ljava/lang/String; = "api.server.url.production"

.field public static final g:Ljava/lang/String; = "portal.server.url"

.field public static final h:Ljava/lang/String; = "portal.server.url.test"

.field public static final i:Ljava/lang/String; = "portal.server.url.dev"

.field public static final j:Ljava/lang/String; = "portal.server.url.staging"

.field public static final k:Ljava/lang/String; = "portal.server.url.production"

.field public static final l:Ljava/lang/String; = "ads.server.url"

.field public static final m:Ljava/lang/String; = "ads.server.url.test"

.field public static final n:Ljava/lang/String; = "ads.server.url.dev"

.field public static final o:Ljava/lang/String; = "ads.server.url.staging"

.field public static final p:Ljava/lang/String; = "api.server.mode"

.field public static final q:Ljava/lang/String; = "api.apps.path"

.field public static final r:Ljava/lang/String; = "api.session.path"

.field public static final s:Ljava/lang/String; = "api.bugs.path"

.field public static final t:Ljava/lang/String; = "api.achievements.path"

.field public static final u:Ljava/lang/String; = "api.awards.path"

.field public static final v:Ljava/lang/String; = "api.errors.path"

.field public static final w:Ljava/lang/String; = "api.key"

.field public static final x:Ljava/lang/String; = "api.version"

.field public static final y:Ljava/lang/String; = "api.action.session"

.field public static final z:Ljava/lang/String; = "api.action.awards"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    .line 78
    const-string v0, "1.2.2"

    .line 79
    const-string v0, "4"

    .line 80
    const-string v0, "b6ae6ef0339c8166a6b1a3932025b89d18142ee1"

    .line 81
    const-string v0, "v%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "sdk.version"

    const-string v3, "1.2.2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "sdk.revision"

    const-string v3, "b6ae6ef0339c8166a6b1a3932025b89d18142ee1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.url.test"

    const-string v3, "http://m.tb.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.url"

    const-string v3, "https://api.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.url.dev"

    const-string v3, "https://api.tb.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.url.staging"

    const-string v3, "https://m.s.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.url.production"

    const-string v3, "https://api.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "portal.server.url.test"

    const-string v3, "http://portal.tb.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "portal.server.url"

    const-string v3, "https://portal.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "portal.server.url.dev"

    const-string v3, "https://portal.tb.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "portal.server.url.staging"

    const-string v3, "https://m.s.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "portal.server.url.production"

    const-string v3, "https://portal.sessionm.com"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.achievements.path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "app.optout.path"

    const-string v3, "optout.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.server.mode"

    const-string v3, "production"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.apps.path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/apps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.session.path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "ads.server.url"

    const-string v3, "https://ads.sessionm.com/transactions.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "ads.server.url.test"

    const-string v3, "https://ads.tb.sessionm.com/transactions.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "ads.server.url.staging"

    const-string v3, "https://m.s.sessionm.com/transactions.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "ads.server.url.dev"

    const-string v3, "https://ads.tb.sessionm.com/transactions.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.bugs.path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bugs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.awards.path"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.key"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.version"

    const-string v3, "4"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.action.session"

    const-string v3, "session.json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.action.awards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/awards.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.action.events"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/events.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v2, "api.errors.path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/errors.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "app.running.mode"

    const-string v2, "production"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "app.id"

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "app.cache.path"

    const-string v2, "/data/data/com.sessionm.sdk/cache"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "app.logging.enable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "app.logging.level"

    const-string v2, "production"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/sessionm/a/b;->T:Ljava/util/HashMap;

    const-string v1, "sdk.remote.debugger.url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
