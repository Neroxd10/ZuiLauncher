.class public interface abstract Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/notification/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationsChangedListener"
.end annotation


# virtual methods
.method public abstract onNotificationFullRefresh(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNotificationPosted(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/notification/NotificationKeyData;)V
.end method

.method public abstract onNotificationRemoved(Lcom/zui/launcher/util/PackageUserKey;Lcom/zui/launcher/notification/NotificationKeyData;)V
.end method
