.class Lcom/ansca/corona/MapView$LocationBounds;
.super Ljava/lang/Object;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationBounds"
.end annotation


# instance fields
.field private fNorthEastLocation:Landroid/location/Location;

.field private fSouthWestLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/MapView;DDDD)V
    .locals 2
    .param p2, "southWestLatitude"    # D
    .param p4, "southWestLongitude"    # D
    .param p6, "northEastLatitude"    # D
    .param p8, "northEastLongitude"    # D

    .prologue
    .line 907
    iput-object p1, p0, Lcom/ansca/corona/MapView$LocationBounds;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    .line 909
    iget-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v0, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 910
    iget-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v0, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 912
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    .line 913
    iget-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v0, p6, p7}, Landroid/location/Location;->setLatitude(D)V

    .line 914
    iget-object v0, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v0, p8, p9}, Landroid/location/Location;->setLongitude(D)V

    .line 915
    return-void
.end method


# virtual methods
.method public contains(Landroid/location/Location;)Z
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 926
    if-nez p1, :cond_1

    .line 946
    :cond_0
    :goto_0
    return v0

    .line 931
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 933
    iget-object v2, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 934
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 936
    goto :goto_0

    .line 940
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fSouthWestLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ansca/corona/MapView$LocationBounds;->fNorthEastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    .line 942
    goto :goto_0
.end method
