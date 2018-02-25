.class Lcom/ansca/corona/notifications/NotificationServices$JellyBean;
.super Ljava/lang/Object;
.source "NotificationServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/NotificationServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellyBean"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    return-void
.end method

.method public static createNotificationFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/ansca/corona/notifications/StatusBarNotificationSettings;

    .prologue
    .line 955
    invoke-static {p0, p1}, Lcom/ansca/corona/notifications/NotificationServices$Gingerbread;->createNotificationBuilderFrom(Landroid/content/Context;Lcom/ansca/corona/notifications/StatusBarNotificationSettings;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 956
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-nez v0, :cond_0

    .line 957
    const/4 v1, 0x0

    .line 961
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0
.end method
