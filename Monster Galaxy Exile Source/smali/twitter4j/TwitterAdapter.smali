.class public Ltwitter4j/TwitterAdapter;
.super Ljava/lang/Object;
.source "TwitterAdapter.java"

# interfaces
.implements Ltwitter4j/TwitterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public addedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 267
    return-void
.end method

.method public addedUserListMembers(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 273
    return-void
.end method

.method public checkedUserListMembership(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 285
    return-void
.end method

.method public checkedUserListSubscription(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 311
    return-void
.end method

.method public createdBlock(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 467
    return-void
.end method

.method public createdFavorite(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/Status;

    .prologue
    .line 443
    return-void
.end method

.method public createdFriendship(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 340
    return-void
.end method

.method public createdPlace(Ltwitter4j/Place;)V
    .locals 0
    .param p1, "place"    # Ltwitter4j/Place;

    .prologue
    .line 548
    return-void
.end method

.method public createdUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 205
    return-void
.end method

.method public deletedUserListMember(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 279
    return-void
.end method

.method public destroyedBlock(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 473
    return-void
.end method

.method public destroyedDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .param p1, "message"    # Ltwitter4j/DirectMessage;

    .prologue
    .line 327
    return-void
.end method

.method public destroyedFavorite(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/Status;

    .prologue
    .line 446
    return-void
.end method

.method public destroyedFriendship(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 346
    return-void
.end method

.method public destroyedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "destroyedStatus"    # Ltwitter4j/Status;

    .prologue
    .line 126
    return-void
.end method

.method public destroyedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 229
    return-void
.end method

.method public disabledNotification(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 460
    return-void
.end method

.method public enabledNotification(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 454
    return-void
.end method

.method public gotAPIConfiguration(Ltwitter4j/TwitterAPIConfiguration;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/TwitterAPIConfiguration;

    .prologue
    .line 579
    return-void
.end method

.method public gotAccountSettings(Ltwitter4j/AccountSettings;)V
    .locals 0
    .param p1, "settings"    # Ltwitter4j/AccountSettings;

    .prologue
    .line 418
    return-void
.end method

.method public gotAccountTotals(Ltwitter4j/AccountTotals;)V
    .locals 0
    .param p1, "totals"    # Ltwitter4j/AccountTotals;

    .prologue
    .line 412
    return-void
.end method

.method public gotAllUserLists(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "lists":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotAvailableTrends(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    return-void
.end method

.method public gotBlockingUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "blockingUsers":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotBlockingUsersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "blockingUsersIDs"    # Ltwitter4j/IDs;

    .prologue
    .line 491
    return-void
.end method

.method public gotCurrentTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 48
    return-void
.end method

.method public gotDailyTrends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "trendsList":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public gotDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .param p1, "message"    # Ltwitter4j/DirectMessage;

    .prologue
    .line 333
    return-void
.end method

.method public gotDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "messages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotExistsBlock(Z)V
    .locals 0
    .param p1, "blockExists"    # Z

    .prologue
    .line 479
    return-void
.end method

.method public gotExistsFriendship(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 352
    return-void
.end method

.method public gotFavorites(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotFollowersIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 395
    return-void
.end method

.method public gotFollowersStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 392
    return-void
.end method

.method public gotFriendsStatuses(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotFriendsTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotGeoDetails(Ltwitter4j/Place;)V
    .locals 0
    .param p1, "place"    # Ltwitter4j/Place;

    .prologue
    .line 542
    return-void
.end method

.method public gotHomeTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotIncomingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 364
    return-void
.end method

.method public gotLanguages(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/api/HelpMethods$Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "languages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/api/HelpMethods$Language;>;"
    return-void
.end method

.method public gotLocationTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 519
    return-void
.end method

.method public gotMemberSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotMentions(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotNearByPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotNoRetweetIds(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 388
    return-void
.end method

.method public gotOutgoingFriendships(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 370
    return-void
.end method

.method public gotPrivacyPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicy"    # Ljava/lang/String;

    .prologue
    .line 564
    return-void
.end method

.method public gotProfileImage(Ltwitter4j/ProfileImage;)V
    .locals 0
    .param p1, "image"    # Ltwitter4j/ProfileImage;

    .prologue
    .line 192
    return-void
.end method

.method public gotPublicTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRateLimitStatus(Ltwitter4j/RateLimitStatus;)V
    .locals 0
    .param p1, "status"    # Ltwitter4j/RateLimitStatus;

    .prologue
    .line 403
    return-void
.end method

.method public gotRelatedResults(Ltwitter4j/RelatedResults;)V
    .locals 0
    .param p1, "relatedResults"    # Ltwitter4j/RelatedResults;

    .prologue
    .line 572
    return-void
.end method

.method public gotRetweetedBy(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotRetweetedByIDs(Ltwitter4j/IDs;)V
    .locals 0
    .param p1, "ids"    # Ltwitter4j/IDs;

    .prologue
    .line 152
    return-void
.end method

.method public gotRetweetedByMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedByUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetedToUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweets(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "retweets":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotRetweetsOfMe(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotReverseGeoCode(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public gotSentDirectMessages(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "messages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    return-void
.end method

.method public gotShowFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .param p1, "relationship"    # Ltwitter4j/Relationship;

    .prologue
    .line 358
    return-void
.end method

.method public gotShowStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "statuses"    # Ltwitter4j/Status;

    .prologue
    .line 120
    return-void
.end method

.method public gotShowUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 223
    return-void
.end method

.method public gotSimilarPlaces(Ltwitter4j/SimilarPlaces;)V
    .locals 0
    .param p1, "places"    # Ltwitter4j/SimilarPlaces;

    .prologue
    .line 533
    return-void
.end method

.method public gotSuggestedUserCategories(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "categories":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    return-void
.end method

.method public gotTermsOfService(Ljava/lang/String;)V
    .locals 0
    .param p1, "tof"    # Ljava/lang/String;

    .prologue
    .line 557
    return-void
.end method

.method public gotTrends(Ltwitter4j/Trends;)V
    .locals 0
    .param p1, "trends"    # Ltwitter4j/Trends;

    .prologue
    .line 42
    return-void
.end method

.method public gotUserDetail(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 156
    return-void
.end method

.method public gotUserListMembers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListMemberships(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserListStatuses(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserListSubscriptions(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserLists(Ltwitter4j/PagableResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "userLists":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    return-void
.end method

.method public gotUserSuggestions(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public gotUserTimeline(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    return-void
.end method

.method public gotWeeklyTrends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Trends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "trendsList":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/Trends;>;"
    return-void
.end method

.method public lookedUpFriendships(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "friendships":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Friendship;>;"
    return-void
.end method

.method public lookedupUsers(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public onException(Ltwitter4j/TwitterException;Ltwitter4j/TwitterMethod;)V
    .locals 0
    .param p1, "ex"    # Ltwitter4j/TwitterException;
    .param p2, "method"    # Ltwitter4j/TwitterMethod;

    .prologue
    .line 589
    return-void
.end method

.method public reportedSpam(Ltwitter4j/User;)V
    .locals 0
    .param p1, "reportedSpammer"    # Ltwitter4j/User;

    .prologue
    .line 496
    return-void
.end method

.method public retweetedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "retweetedStatus"    # Ltwitter4j/Status;

    .prologue
    .line 132
    return-void
.end method

.method public searched(Ltwitter4j/QueryResult;)V
    .locals 0
    .param p1, "result"    # Ltwitter4j/QueryResult;

    .prologue
    .line 36
    return-void
.end method

.method public searchedPlaces(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    return-void
.end method

.method public searchedUser(Ltwitter4j/ResponseList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "userList":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/User;>;"
    return-void
.end method

.method public sentDirectMessage(Ltwitter4j/DirectMessage;)V
    .locals 0
    .param p1, "message"    # Ltwitter4j/DirectMessage;

    .prologue
    .line 321
    return-void
.end method

.method public subscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 299
    return-void
.end method

.method public tested(Z)V
    .locals 0
    .param p1, "test"    # Z

    .prologue
    .line 576
    return-void
.end method

.method public unsubscribedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 305
    return-void
.end method

.method public updatedFriendship(Ltwitter4j/Relationship;)V
    .locals 0
    .param p1, "relationship"    # Ltwitter4j/Relationship;

    .prologue
    .line 382
    return-void
.end method

.method public updatedProfile(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 436
    return-void
.end method

.method public updatedProfileBackgroundImage(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 430
    return-void
.end method

.method public updatedProfileColors(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 406
    return-void
.end method

.method public updatedProfileImage(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 424
    return-void
.end method

.method public updatedStatus(Ltwitter4j/Status;)V
    .locals 0
    .param p1, "statuses"    # Ltwitter4j/Status;

    .prologue
    .line 123
    return-void
.end method

.method public updatedUserList(Ltwitter4j/UserList;)V
    .locals 0
    .param p1, "userList"    # Ltwitter4j/UserList;

    .prologue
    .line 211
    return-void
.end method

.method public verifiedCredentials(Ltwitter4j/User;)V
    .locals 0
    .param p1, "user"    # Ltwitter4j/User;

    .prologue
    .line 400
    return-void
.end method
