.class public Lcom/ansca/corona/events/MapAddressReceivedEvent;
.super Lcom/ansca/corona/events/Event;
.source "MapAddressReceivedEvent.java"


# instance fields
.field private fCity:Ljava/lang/String;

.field private fCityDetails:Ljava/lang/String;

.field private fCountry:Ljava/lang/String;

.field private fCountryCode:Ljava/lang/String;

.field private fPostalCode:Ljava/lang/String;

.field private fRegion:Ljava/lang/String;

.field private fRegionDetails:Ljava/lang/String;

.field private fStreet:Ljava/lang/String;

.field private fStreetDetails:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;
    .param p2, "streetDetails"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "cityDetails"    # Ljava/lang/String;
    .param p5, "region"    # Ljava/lang/String;
    .param p6, "regionDetails"    # Ljava/lang/String;
    .param p7, "postalCode"    # Ljava/lang/String;
    .param p8, "country"    # Ljava/lang/String;
    .param p9, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fStreet:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fStreetDetails:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCity:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCityDetails:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fRegion:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fRegionDetails:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fPostalCode:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCountry:Ljava/lang/String;

    .line 28
    iput-object p9, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCountryCode:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 9

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fStreet:Ljava/lang/String;

    iget-object v1, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fStreetDetails:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCity:Ljava/lang/String;

    iget-object v3, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCityDetails:Ljava/lang/String;

    iget-object v4, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fRegion:Ljava/lang/String;

    iget-object v5, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fRegionDetails:Ljava/lang/String;

    iget-object v6, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fPostalCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCountry:Ljava/lang/String;

    iget-object v8, p0, Lcom/ansca/corona/events/MapAddressReceivedEvent;->fCountryCode:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->mapAddressReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
