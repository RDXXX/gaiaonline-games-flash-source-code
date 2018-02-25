.class Ltwitter4j/AsyncTwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "AsyncTwitterImpl.java"

# interfaces
.implements Ltwitter4j/AsyncTwitter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/AsyncTwitterImpl$AsyncTask;
    }
.end annotation


# static fields
.field static class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class; = null

.field private static transient dispatcher:Ltwitter4j/internal/async/Dispatcher; = null

.field private static final serialVersionUID:J = -0x1be038d7c798e703L


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final twitter:Ltwitter4j/Twitter;


# direct methods
.method constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    .line 55
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    .line 56
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    .line 61
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v0, p2}, Ltwitter4j/TwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    .line 62
    return-void
.end method

.method static access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;
    .locals 1
    .param p0, "x0"    # Ltwitter4j/AsyncTwitterImpl;

    .prologue
    .line 45
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 2760
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

.method private getDispatcher()Ltwitter4j/internal/async/Dispatcher;
    .locals 3

    .prologue
    .line 2770
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v0, :cond_1

    .line 2771
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "twitter4j.AsyncTwitterImpl"

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 2772
    :try_start_0
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v1, :cond_0

    .line 2776
    new-instance v1, Ltwitter4j/internal/async/DispatcherFactory;

    iget-object v2, p0, Ltwitter4j/AsyncTwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-virtual {v1}, Ltwitter4j/internal/async/DispatcherFactory;->getInstance()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v1

    sput-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 2778
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2780
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    return-object v0

    .line 2771
    :cond_2
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    goto :goto_0

    .line 2778
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Ltwitter4j/TwitterListener;)V
    .locals 1
    .param p1, "listener"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public addUserListMember(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "userId"    # J

    .prologue
    .line 1287
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$68;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$68;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1298
    return-void
.end method

.method public addUserListMembers(I[J)V
    .locals 7
    .param p1, "listId"    # I
    .param p2, "userIds"    # [J

    .prologue
    .line 1304
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$69;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$69;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I[J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1315
    return-void
.end method

.method public addUserListMembers(I[Ljava/lang/String;)V
    .locals 7
    .param p1, "listId"    # I
    .param p2, "screenNames"    # [Ljava/lang/String;

    .prologue
    .line 1321
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$70;

    sget-object v2, Ltwitter4j/TwitterMethod;->ADD_LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$70;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I[Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1332
    return-void
.end method

.method public checkUserListMembership(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # J

    .prologue
    .line 1355
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/AsyncTwitterImpl;->showUserListMembership(IJ)V

    .line 1356
    return-void
.end method

.method public checkUserListSubscription(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "userId"    # J

    .prologue
    .line 1453
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/AsyncTwitterImpl;->showUserListSubscription(IJ)V

    .line 1454
    return-void
.end method

.method public createBlock(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2344
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$126;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$126;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2355
    return-void
.end method

.method public createBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2327
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$125;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$125;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2338
    return-void
.end method

.method public createFavorite(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 2223
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$119;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$119;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2234
    return-void
.end method

.method public createFriendship(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 1634
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$86;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$86;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1645
    return-void
.end method

.method public createFriendship(JZ)V
    .locals 8
    .param p1, "userId"    # J
    .param p3, "follow"    # Z

    .prologue
    .line 1668
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$88;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$88;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1679
    return-void
.end method

.method public createFriendship(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1617
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$85;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$85;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1628
    return-void
.end method

.method public createFriendship(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "follow"    # Z

    .prologue
    .line 1651
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$87;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$87;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1662
    return-void
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "containedWithin"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "location"    # Ltwitter4j/GeoLocation;
    .param p5, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 2635
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$143;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_PLACE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitterImpl$143;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2646
    return-void
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "listName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1036
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$55;

    sget-object v2, Ltwitter4j/TwitterMethod;->CREATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$55;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method

.method public createUserListSubscription(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 1412
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$74;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$74;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1423
    return-void
.end method

.method public deleteUserListMember(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "userId"    # J

    .prologue
    .line 1338
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$71;

    sget-object v2, Ltwitter4j/TwitterMethod;->DELETE_LIST_MEMBER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$71;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1349
    return-void
.end method

.method public destroyBlock(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2378
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$128;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$128;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2389
    return-void
.end method

.method public destroyBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2361
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$127;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$127;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2372
    return-void
.end method

.method public destroyDirectMessage(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1581
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$83;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$83;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1592
    return-void
.end method

.method public destroyFavorite(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 2240
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$120;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FAVORITE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$120;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2251
    return-void
.end method

.method public destroyFriendship(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 1702
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$90;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$90;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1713
    return-void
.end method

.method public destroyFriendship(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1685
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$89;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$89;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1696
    return-void
.end method

.method public destroyStatus(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 644
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$33;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$33;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method public destroyUserList(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 1128
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$60;

    sget-object v2, Ltwitter4j/TwitterMethod;->DESTROY_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$60;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method

.method public destroyUserListSubscription(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 1436
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$75;

    sget-object v2, Ltwitter4j/TwitterMethod;->UNSUBSCRIBE_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$75;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1447
    return-void
.end method

.method public disableNotification(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2308
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$124;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$124;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2319
    return-void
.end method

.method public disableNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2291
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$123;

    sget-object v2, Ltwitter4j/TwitterMethod;->DISABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$123;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2302
    return-void
.end method

.method public enableNotification(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2274
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$122;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$122;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2285
    return-void
.end method

.method public enableNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2257
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$121;

    sget-object v2, Ltwitter4j/TwitterMethod;->ENABLE_NOTIFICATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$121;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2268
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2895
    if-ne p0, p1, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return v1

    .line 2896
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 2897
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/TwitterBaseImpl;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 2899
    check-cast v0, Ltwitter4j/AsyncTwitterImpl;

    .line 2901
    .local v0, "that":Ltwitter4j/AsyncTwitterImpl;
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    iget-object v4, v0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 2902
    goto :goto_0

    .line 2901
    :cond_6
    iget-object v3, v0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-nez v3, :cond_5

    .line 2903
    :cond_7
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    iget-object v4, v0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 2904
    goto :goto_0

    .line 2903
    :cond_8
    iget-object v3, v0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public existsBlock(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2412
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$130;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$130;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2423
    return-void
.end method

.method public existsBlock(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2395
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$129;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_BLOCK:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$129;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2406
    return-void
.end method

.method public existsFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "userA"    # Ljava/lang/String;
    .param p2, "userB"    # Ljava/lang/String;

    .prologue
    .line 1719
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$91;

    sget-object v2, Ltwitter4j/TwitterMethod;->EXISTS_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$91;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1730
    return-void
.end method

.method public getAPIConfiguration()V
    .locals 4

    .prologue
    .line 2723
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$148;

    sget-object v2, Ltwitter4j/TwitterMethod;->CONFIGURATION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$148;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2734
    return-void
.end method

.method public getAccountSettings()V
    .locals 4

    .prologue
    .line 915
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$48;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_SETTINGS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$48;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 926
    return-void
.end method

.method public getAccountTotals()V
    .locals 4

    .prologue
    .line 898
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$47;

    sget-object v2, Ltwitter4j/TwitterMethod;->ACCOUNT_TOTALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$47;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method public getAllSubscribingUserLists(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 1227
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$65;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$65;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1238
    return-void
.end method

.method public getAllSubscribingUserLists(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 1210
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$64;

    sget-object v2, Ltwitter4j/TwitterMethod;->ALL_USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$64;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1221
    return-void
.end method

.method public getAvailableTrends()V
    .locals 4

    .prologue
    .line 2518
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$136;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$136;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2529
    return-void
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)V
    .locals 4
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 2535
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$137;

    sget-object v2, Ltwitter4j/TwitterMethod;->AVAILABLE_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$137;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoLocation;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2546
    return-void
.end method

.method public getBlockingUsers()V
    .locals 4

    .prologue
    .line 2429
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$131;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$131;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2440
    return-void
.end method

.method public getBlockingUsers(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 2446
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$132;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$132;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2457
    return-void
.end method

.method public getBlockingUsersIDs()V
    .locals 4

    .prologue
    .line 2463
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$133;

    sget-object v2, Ltwitter4j/TwitterMethod;->BLOCKING_USERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$133;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2474
    return-void
.end method

.method public getCurrentTrends()V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$3;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$3;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public getCurrentTrends(Z)V
    .locals 4
    .param p1, "excludeHashTags"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$4;

    sget-object v2, Ltwitter4j/TwitterMethod;->CURRENT_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$4;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public getDailyTrends()V
    .locals 4

    .prologue
    .line 146
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$5;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$5;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public getDailyTrends(Ljava/util/Date;Z)V
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$6;

    sget-object v2, Ltwitter4j/TwitterMethod;->DAILY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$6;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public getDirectMessages()V
    .locals 4

    .prologue
    .line 1479
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$77;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$77;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1490
    return-void
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 1496
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$78;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$78;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1507
    return-void
.end method

.method public getFavorites()V
    .locals 4

    .prologue
    .line 2155
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$115;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$115;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2166
    return-void
.end method

.method public getFavorites(I)V
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 2172
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$116;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$116;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2183
    return-void
.end method

.method public getFavorites(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2189
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$117;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$117;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2200
    return-void
.end method

.method public getFavorites(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 2206
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$118;

    sget-object v2, Ltwitter4j/TwitterMethod;->FAVORITES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$118;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2217
    return-void
.end method

.method public getFollowersIDs(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1949
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$104;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$104;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1960
    return-void
.end method

.method public getFollowersIDs(JJ)V
    .locals 9
    .param p1, "userId"    # J
    .param p3, "cursor"    # J

    .prologue
    .line 1966
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$105;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$105;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1977
    return-void
.end method

.method public getFollowersIDs(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1983
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$106;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$106;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1994
    return-void
.end method

.method public getFollowersStatuses(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 983
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$52;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$52;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 994
    return-void
.end method

.method public getFollowersStatuses(JJ)V
    .locals 9
    .param p1, "userId"    # J
    .param p3, "cursor"    # J

    .prologue
    .line 1017
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$54;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$54;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1028
    return-void
.end method

.method public getFollowersStatuses(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1000
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$53;

    sget-object v2, Ltwitter4j/TwitterMethod;->FOLLOWERS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$53;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1011
    return-void
.end method

.method public getFriendsIDs(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1896
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$101;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$101;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1908
    return-void
.end method

.method public getFriendsIDs(JJ)V
    .locals 9
    .param p1, "userId"    # J
    .param p3, "cursor"    # J

    .prologue
    .line 1914
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$102;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$102;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1925
    return-void
.end method

.method public getFriendsIDs(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1931
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$103;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$103;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1943
    return-void
.end method

.method public getFriendsStatuses(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 932
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$49;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$49;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method

.method public getFriendsStatuses(JJ)V
    .locals 9
    .param p1, "userId"    # J
    .param p3, "cursor"    # J

    .prologue
    .line 966
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$51;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$51;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 977
    return-void
.end method

.method public getFriendsStatuses(Ljava/lang/String;J)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 949
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$50;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$50;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 960
    return-void
.end method

.method public getFriendsTimeline()V
    .locals 4

    .prologue
    .line 269
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$12;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$12;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public getFriendsTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 286
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$13;

    sget-object v2, Ltwitter4j/TwitterMethod;->FRIENDS_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$13;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public getGeoDetails(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2620
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$142;

    sget-object v2, Ltwitter4j/TwitterMethod;->GEO_DETAILS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$142;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2631
    return-void
.end method

.method public getHomeTimeline()V
    .locals 4

    .prologue
    .line 235
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$10;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$10;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 252
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$11;

    sget-object v2, Ltwitter4j/TwitterMethod;->HOME_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$11;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public getIncomingFriendships(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1770
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$94;

    sget-object v2, Ltwitter4j/TwitterMethod;->INCOMING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$94;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1781
    return-void
.end method

.method public getLanguages()V
    .locals 4

    .prologue
    .line 2740
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$149;

    sget-object v2, Ltwitter4j/TwitterMethod;->LANGUAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$149;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2751
    return-void
.end method

.method public getLocationTrends(I)V
    .locals 4
    .param p1, "woeid"    # I

    .prologue
    .line 2552
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$138;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOCATION_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$138;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2563
    return-void
.end method

.method public getMemberSuggestions(Ljava/lang/String;)V
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;

    .prologue
    .line 864
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$45;

    sget-object v2, Ltwitter4j/TwitterMethod;->MEMBER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$45;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method public getMentions()V
    .locals 4

    .prologue
    .line 389
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$18;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$18;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public getMentions(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 406
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$19;

    sget-object v2, Ltwitter4j/TwitterMethod;->MENTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$19;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public getNoRetweetIds()V
    .locals 4

    .prologue
    .line 1876
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$100;

    sget-object v2, Ltwitter4j/TwitterMethod;->NO_RETWEET_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$100;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1888
    return-void
.end method

.method public getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2818
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2828
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2863
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/auth/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2838
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/auth/RequestToken;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2848
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2796
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->getOAuthRequestToken()Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .param p1, "callbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2804
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)V
    .locals 7
    .param p1, "cursor"    # J

    .prologue
    .line 1787
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$95;

    sget-object v2, Ltwitter4j/TwitterMethod;->OUTGOING_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$95;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1798
    return-void
.end method

.method public getPrivacyPolicy()V
    .locals 4

    .prologue
    .line 2670
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$145;

    sget-object v2, Ltwitter4j/TwitterMethod;->PRIVACY_POLICY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$145;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2681
    return-void
.end method

.method public getProfileImage(Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "size"    # Ltwitter4j/ProfileImage$ImageSize;

    .prologue
    .line 881
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$46;

    sget-object v2, Ltwitter4j/TwitterMethod;->PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$46;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/ProfileImage$ImageSize;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 892
    return-void
.end method

.method public getPublicTimeline()V
    .locals 4

    .prologue
    .line 218
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$9;

    sget-object v2, Ltwitter4j/TwitterMethod;->PUBLIC_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$9;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public getRateLimitStatus()V
    .locals 4

    .prologue
    .line 2035
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$109;

    sget-object v2, Ltwitter4j/TwitterMethod;->RATE_LIMIT_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$109;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2046
    return-void
.end method

.method public getRelatedResults(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 2686
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$146;

    sget-object v2, Ltwitter4j/TwitterMethod;->RELATED_RESULTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$146;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2698
    return-void
.end method

.method public getRetweetedBy(J)V
    .locals 3
    .param p1, "statusId"    # J

    .prologue
    .line 695
    new-instance v0, Ltwitter4j/Paging;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/AsyncTwitterImpl;->getRetweetedBy(JLtwitter4j/Paging;)V

    .line 696
    return-void
.end method

.method public getRetweetedBy(JLtwitter4j/Paging;)V
    .locals 8
    .param p1, "statusId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 702
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$36;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$36;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method public getRetweetedByIDs(J)V
    .locals 3
    .param p1, "statusId"    # J

    .prologue
    .line 719
    new-instance v0, Ltwitter4j/Paging;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ltwitter4j/Paging;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/AsyncTwitterImpl;->getRetweetedByIDs(JLtwitter4j/Paging;)V

    .line 720
    return-void
.end method

.method public getRetweetedByIDs(JLtwitter4j/Paging;)V
    .locals 8
    .param p1, "statusId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 726
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$37;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_IDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$37;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method public getRetweetedByMe()V
    .locals 4

    .prologue
    .line 423
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$20;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$20;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public getRetweetedByMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 440
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$21;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$21;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public getRetweetedByUser(JLtwitter4j/Paging;)V
    .locals 8
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 542
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$27;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$27;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 525
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$26;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_BY_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$26;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public getRetweetedToMe()V
    .locals 4

    .prologue
    .line 457
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$22;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$22;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method public getRetweetedToMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 474
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$23;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$23;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public getRetweetedToUser(JLtwitter4j/Paging;)V
    .locals 8
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 576
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$29;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$29;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public getRetweetedToUser(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 559
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$28;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETED_TO_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$28;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method public getRetweets(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 678
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$35;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$35;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public getRetweetsOfMe()V
    .locals 4

    .prologue
    .line 491
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$24;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$24;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 508
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$25;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEETS_OF_ME:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$25;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public getSentDirectMessages()V
    .locals 4

    .prologue
    .line 1513
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$79;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$79;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1524
    return-void
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 1530
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$80;

    sget-object v2, Ltwitter4j/TwitterMethod;->SENT_DIRECT_MESSAGES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$80;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1541
    return-void
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "containedWithin"    # Ljava/lang/String;
    .param p4, "streetAddress"    # Ljava/lang/String;

    .prologue
    .line 2586
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$140;

    sget-object v2, Ltwitter4j/TwitterMethod;->SIMILAR_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$140;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2597
    return-void
.end method

.method public getSuggestedUserCategories()V
    .locals 4

    .prologue
    .line 830
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$43;

    sget-object v2, Ltwitter4j/TwitterMethod;->SUGGESTED_USER_CATEGORIES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$43;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 841
    return-void
.end method

.method public getTermsOfService()V
    .locals 4

    .prologue
    .line 2653
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$144;

    sget-object v2, Ltwitter4j/TwitterMethod;->TERMS_OF_SERVICE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$144;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2664
    return-void
.end method

.method public getTrends()V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$2;

    sget-object v2, Ltwitter4j/TwitterMethod;->TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$2;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public getUserListMembers(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 1270
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$67;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$67;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1281
    return-void
.end method

.method public getUserListMembers(JIJ)V
    .locals 0
    .param p1, "listOwnerId"    # J
    .param p3, "listId"    # I
    .param p4, "cursor"    # J

    .prologue
    .line 1263
    invoke-virtual {p0, p3, p4, p5}, Ltwitter4j/AsyncTwitterImpl;->getUserListMembers(IJ)V

    .line 1264
    return-void
.end method

.method public getUserListMembers(Ljava/lang/String;IJ)V
    .locals 9
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J

    .prologue
    .line 1246
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$66;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_MEMBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$66;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;IJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1257
    return-void
.end method

.method public getUserListMemberships(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listMemberScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1176
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$62;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_MEMBERSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$62;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method public getUserListStatuses(ILtwitter4j/Paging;)V
    .locals 7
    .param p1, "listId"    # I
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 1159
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$61;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_STATUSES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$61;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;ILtwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public getUserListStatuses(JILtwitter4j/Paging;)V
    .locals 0
    .param p1, "listOwnerId"    # J
    .param p3, "id"    # I
    .param p4, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 1152
    invoke-virtual {p0, p3, p4}, Ltwitter4j/AsyncTwitterImpl;->getUserListStatuses(ILtwitter4j/Paging;)V

    .line 1153
    return-void
.end method

.method public getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 1145
    invoke-virtual {p0, p2, p3}, Ltwitter4j/AsyncTwitterImpl;->getUserListStatuses(ILtwitter4j/Paging;)V

    .line 1146
    return-void
.end method

.method public getUserListSubscribers(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "cursor"    # J

    .prologue
    .line 1388
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$73;

    sget-object v2, Ltwitter4j/TwitterMethod;->LIST_SUBSCRIBERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$73;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1399
    return-void
.end method

.method public getUserListSubscribers(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I
    .param p3, "cursor"    # J

    .prologue
    .line 1381
    invoke-virtual {p0, p2, p3, p4}, Ltwitter4j/AsyncTwitterImpl;->getUserListSubscribers(IJ)V

    .line 1382
    return-void
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1193
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$63;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LIST_SUBSCRIPTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$63;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1204
    return-void
.end method

.method public getUserLists(JJ)V
    .locals 9
    .param p1, "listOwnerUserId"    # J
    .param p3, "cursor"    # J

    .prologue
    .line 1087
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$58;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$58;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1098
    return-void
.end method

.method public getUserLists(Ljava/lang/String;J)V
    .locals 8
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J

    .prologue
    .line 1070
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$57;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_LISTS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$57;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1081
    return-void
.end method

.method public getUserSuggestions(Ljava/lang/String;)V
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$44;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_SUGGESTIONS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$44;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method public getUserTimeline()V
    .locals 4

    .prologue
    .line 372
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$17;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$17;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public getUserTimeline(J)V
    .locals 1
    .param p1, "userId"    # J

    .prologue
    .line 365
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/AsyncTwitterImpl;->getUserTimeline(JLtwitter4j/Paging;)V

    .line 366
    return-void
.end method

.method public getUserTimeline(JLtwitter4j/Paging;)V
    .locals 8
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 322
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$15;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$15;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLtwitter4j/Paging;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/AsyncTwitterImpl;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V

    .line 359
    return-void
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 303
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$14;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$14;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)V
    .locals 4
    .param p1, "paging"    # Ltwitter4j/Paging;

    .prologue
    .line 340
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$16;

    sget-object v2, Ltwitter4j/TwitterMethod;->USER_TIMELINE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$16;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Paging;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public getWeeklyTrends()V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$7;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$7;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public getWeeklyTrends(Ljava/util/Date;Z)V
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "excludeHashTags"    # Z

    .prologue
    .line 200
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$8;

    sget-object v2, Ltwitter4j/TwitterMethod;->WEEKLY_TRENDS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$8;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/util/Date;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2911
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->hashCode()I

    move-result v0

    .line 2912
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 2913
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 2914
    return v0

    :cond_1
    move v1, v2

    .line 2912
    goto :goto_0
.end method

.method public lookupFriendships([J)V
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 1821
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$97;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$97;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[J)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1832
    return-void
.end method

.method public lookupFriendships([Ljava/lang/String;)V
    .locals 4
    .param p1, "screenNames"    # [Ljava/lang/String;

    .prologue
    .line 1804
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$96;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_FRIENDSHIPS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$96;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1815
    return-void
.end method

.method public lookupUsers([J)V
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 796
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$41;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$41;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[J)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 807
    return-void
.end method

.method public lookupUsers([Ljava/lang/String;)V
    .locals 4
    .param p1, "screenNames"    # [Ljava/lang/String;

    .prologue
    .line 779
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$40;

    sget-object v2, Ltwitter4j/TwitterMethod;->LOOKUP_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$40;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 790
    return-void
.end method

.method public reportSpam(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 2482
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$134;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$134;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2493
    return-void
.end method

.method public reportSpam(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 2499
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$135;

    sget-object v2, Ltwitter4j/TwitterMethod;->REPORT_SPAM:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$135;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2510
    return-void
.end method

.method public retweetStatus(J)V
    .locals 7
    .param p1, "statusId"    # J

    .prologue
    .line 661
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$34;

    sget-object v2, Ltwitter4j/TwitterMethod;->RETWEET_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$34;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;

    .prologue
    .line 2603
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$141;

    sget-object v2, Ltwitter4j/TwitterMethod;->REVERSE_GEO_CODE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$141;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2614
    return-void
.end method

.method public search(Ltwitter4j/Query;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/Query;

    .prologue
    .line 75
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$1;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$1;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/Query;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)V
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;

    .prologue
    .line 2571
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$139;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_PLACES:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$139;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/GeoQuery;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2582
    return-void
.end method

.method public searchUsers(Ljava/lang/String;I)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I

    .prologue
    .line 813
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$42;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEARCH_USERS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$42;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 824
    return-void
.end method

.method public sendDirectMessage(JLjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # J
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 1564
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$82;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$82;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JLjava/lang/String;)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1575
    return-void
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1547
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$81;

    sget-object v2, Ltwitter4j/TwitterMethod;->SEND_DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$81;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1558
    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 1
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .prologue
    .line 2856
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 2857
    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 2788
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1, p2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    return-void
.end method

.method public showDirectMessage(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1598
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$84;

    sget-object v2, Ltwitter4j/TwitterMethod;->DIRECT_MESSAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$84;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1609
    return-void
.end method

.method public showFriendship(JJ)V
    .locals 9
    .param p1, "sourceId"    # J
    .param p3, "targetId"    # J

    .prologue
    .line 1753
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$93;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$93;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JJ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1764
    return-void
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sourceScreenName"    # Ljava/lang/String;
    .param p2, "targetScreenName"    # Ljava/lang/String;

    .prologue
    .line 1736
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$92;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$92;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1747
    return-void
.end method

.method public showStatus(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 593
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$30;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$30;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 604
    return-void
.end method

.method public showUser(J)V
    .locals 7
    .param p1, "userId"    # J

    .prologue
    .line 762
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$39;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$39;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;J)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 773
    return-void
.end method

.method public showUser(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$38;

    sget-object v2, Ltwitter4j/TwitterMethod;->SHOW_USER:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$38;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 756
    return-void
.end method

.method public showUserList(I)V
    .locals 4
    .param p1, "listId"    # I

    .prologue
    .line 1111
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$59;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$59;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public showUserList(Ljava/lang/String;I)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I

    .prologue
    .line 1104
    invoke-virtual {p0, p2}, Ltwitter4j/AsyncTwitterImpl;->showUserList(I)V

    .line 1105
    return-void
.end method

.method public showUserListMembership(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "userId"    # J

    .prologue
    .line 1362
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$72;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_MEMBERSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$72;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1373
    return-void
.end method

.method public showUserListSubscription(IJ)V
    .locals 8
    .param p1, "listId"    # I
    .param p2, "userId"    # J

    .prologue
    .line 1460
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$76;

    sget-object v2, Ltwitter4j/TwitterMethod;->CHECK_LIST_SUBSCRIPTION:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$76;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;IJ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1471
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2759
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->shutdown()V

    .line 2760
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "twitter4j.AsyncTwitterImpl"

    invoke-static {v0}, Ltwitter4j/AsyncTwitterImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 2761
    :try_start_0
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-eqz v1, :cond_0

    .line 2762
    sget-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    invoke-interface {v1}, Ltwitter4j/internal/async/Dispatcher;->shutdown()V

    .line 2763
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/AsyncTwitterImpl;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 2765
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2766
    iget-object v0, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->shutdown()V

    .line 2767
    return-void

    .line 2760
    :cond_1
    sget-object v0, Ltwitter4j/AsyncTwitterImpl;->class$twitter4j$AsyncTwitterImpl:Ljava/lang/Class;

    goto :goto_0

    .line 2765
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public subscribeUserList(Ljava/lang/String;I)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I

    .prologue
    .line 1405
    invoke-virtual {p0, p2}, Ltwitter4j/AsyncTwitterImpl;->createUserListSubscription(I)V

    .line 1406
    return-void
.end method

.method public test()V
    .locals 4

    .prologue
    .line 2706
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$147;

    sget-object v2, Ltwitter4j/TwitterMethod;->TEST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$147;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2717
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2919
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AsyncTwitterImpl{twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->twitter:Ltwitter4j/Twitter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeUserList(Ljava/lang/String;I)V
    .locals 0
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "listId"    # I

    .prologue
    .line 1429
    invoke-virtual {p0, p2}, Ltwitter4j/AsyncTwitterImpl;->destroyUserListSubscription(I)V

    .line 1430
    return-void
.end method

.method public updateFriendship(JZZ)V
    .locals 9
    .param p1, "userId"    # J
    .param p3, "enableDeviceNotification"    # Z
    .param p4, "retweet"    # Z

    .prologue
    .line 1858
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$99;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$99;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;JZZ)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1870
    return-void
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "enableDeviceNotification"    # Z
    .param p3, "retweet"    # Z

    .prologue
    .line 1839
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v7

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$98;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_FRIENDSHIP:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ltwitter4j/AsyncTwitterImpl$98;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;ZZ)V

    invoke-interface {v7, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1851
    return-void
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 2018
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$108;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$108;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2029
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)V
    .locals 7
    .param p1, "image"    # Ljava/io/File;
    .param p2, "tile"    # Z

    .prologue
    .line 2116
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$113;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$113;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/File;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2129
    return-void
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)V
    .locals 7
    .param p1, "image"    # Ljava/io/InputStream;
    .param p2, "tile"    # Z

    .prologue
    .line 2136
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v6

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$114;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_BACKGROUND_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/AsyncTwitterImpl$114;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/InputStream;Z)V

    invoke-interface {v6, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2149
    return-void
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;
    .param p2, "profileTextColor"    # Ljava/lang/String;
    .param p3, "profileLinkColor"    # Ljava/lang/String;
    .param p4, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p5, "profileSidebarBorderColor"    # Ljava/lang/String;

    .prologue
    .line 2055
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v9

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$110;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_COLORS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ltwitter4j/AsyncTwitterImpl$110;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2071
    return-void
.end method

.method public updateProfileImage(Ljava/io/File;)V
    .locals 4
    .param p1, "image"    # Ljava/io/File;

    .prologue
    .line 2077
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$111;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$111;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2090
    return-void
.end method

.method public updateProfileImage(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "image"    # Ljava/io/InputStream;

    .prologue
    .line 2096
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$112;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_PROFILE_IMAGE:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$112;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2109
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$31;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$31;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 621
    return-void
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)V
    .locals 4
    .param p1, "latestStatus"    # Ltwitter4j/StatusUpdate;

    .prologue
    .line 627
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$32;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_STATUS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, p1}, Ltwitter4j/AsyncTwitterImpl$32;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ltwitter4j/StatusUpdate;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p1, "listId"    # I
    .param p2, "newListName"    # Ljava/lang/String;
    .param p3, "isPublicList"    # Z
    .param p4, "newDescription"    # Ljava/lang/String;

    .prologue
    .line 1053
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v8

    new-instance v0, Ltwitter4j/AsyncTwitterImpl$56;

    sget-object v2, Ltwitter4j/TwitterMethod;->UPDATE_USER_LIST:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ltwitter4j/AsyncTwitterImpl$56;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v8, v0}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 1064
    return-void
.end method

.method public verifyCredentials()V
    .locals 4

    .prologue
    .line 2000
    invoke-direct {p0}, Ltwitter4j/AsyncTwitterImpl;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    new-instance v1, Ltwitter4j/AsyncTwitterImpl$107;

    sget-object v2, Ltwitter4j/TwitterMethod;->VERIFY_CREDENTIALS:Ltwitter4j/TwitterMethod;

    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Ltwitter4j/AsyncTwitterImpl$107;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ltwitter4j/internal/async/Dispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 2011
    return-void
.end method
