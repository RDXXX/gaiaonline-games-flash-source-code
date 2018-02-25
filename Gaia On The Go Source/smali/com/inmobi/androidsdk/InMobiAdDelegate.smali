.class public interface abstract Lcom/inmobi/androidsdk/InMobiAdDelegate;
.super Ljava/lang/Object;
.source "InMobiAdDelegate.java"


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"


# virtual methods
.method public abstract adRequestCompleted(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
.end method

.method public abstract adRequestFailed(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
.end method

.method public abstract age()I
.end method

.method public abstract areaCode()Ljava/lang/String;
.end method

.method public abstract currentLocation()Landroid/location/Location;
.end method

.method public abstract dateOfBirth()Ljava/util/Date;
.end method

.method public abstract education()Lcom/inmobi/androidsdk/EducationType;
.end method

.method public abstract ethnicity()Lcom/inmobi/androidsdk/EthnicityType;
.end method

.method public abstract gender()Lcom/inmobi/androidsdk/GenderType;
.end method

.method public abstract income()I
.end method

.method public abstract interests()Ljava/lang/String;
.end method

.method public abstract isLocationInquiryAllowed()Z
.end method

.method public abstract isPublisherProvidingLocation()Z
.end method

.method public abstract keywords()Ljava/lang/String;
.end method

.method public abstract postalCode()Ljava/lang/String;
.end method

.method public abstract searchString()Ljava/lang/String;
.end method

.method public abstract siteId()Ljava/lang/String;
.end method

.method public abstract testMode()Z
.end method
