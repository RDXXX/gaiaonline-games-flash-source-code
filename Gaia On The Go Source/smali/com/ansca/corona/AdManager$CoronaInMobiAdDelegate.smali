.class Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/inmobi/androidsdk/InMobiAdDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInMobiAdDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;
    }
.end annotation


# instance fields
.field private fApplicationId:Ljava/lang/String;

.field private fIsTestModeEnabled:Z

.field final synthetic this$0:Lcom/ansca/corona/AdManager;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/AdManager;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "testModeEnabled"    # Z

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->this$0:Lcom/ansca/corona/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->fApplicationId:Ljava/lang/String;

    .line 76
    iput-boolean p3, p0, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->fIsTestModeEnabled:Z

    .line 77
    return-void
.end method

.method private raiseAdRequestEvent(Z)V
    .locals 1
    .param p1, "isError"    # Z

    .prologue
    .line 128
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 129
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/ansca/corona/events/EventManager;->adRequestEvent(Z)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public adRequestCompleted(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;

    invoke-direct {v1, p0, p1, v2}, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;-><init>(Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;Lcom/inmobi/androidsdk/impl/InMobiAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    invoke-direct {p0, v2}, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->raiseAdRequestEvent(Z)V

    .line 89
    return-void
.end method

.method public adRequestFailed(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 95
    const-string v0, "Corona"

    const-string v1, "InMobi ad request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;-><init>(Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;Lcom/inmobi/androidsdk/impl/InMobiAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->raiseAdRequestEvent(Z)V

    .line 105
    return-void
.end method

.method public age()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public areaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public dateOfBirth()Ljava/util/Date;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public education()Lcom/inmobi/androidsdk/EducationType;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public ethnicity()Lcom/inmobi/androidsdk/EthnicityType;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public gender()Lcom/inmobi/androidsdk/GenderType;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public income()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public interests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public isPublisherProvidingLocation()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public postalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public siteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->this$0:Lcom/ansca/corona/AdManager;

    invoke-static {v0}, Lcom/ansca/corona/AdManager;->access$000(Lcom/ansca/corona/AdManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public testMode()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/ansca/corona/AdManager$CoronaInMobiAdDelegate;->fIsTestModeEnabled:Z

    return v0
.end method
