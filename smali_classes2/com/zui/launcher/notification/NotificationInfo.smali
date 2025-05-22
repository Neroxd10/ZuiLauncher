.class public Lcom/zui/launcher/notification/NotificationInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field public final autoCancel:Z

.field private b:I

.field private c:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field public final notificationKey:Ljava/lang/String;

.field public final packageUserKey:Lcom/zui/launcher/util/PackageUserKey;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/zui/launcher/ItemInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/zui/launcher/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/zui/launcher/util/PackageUserKey;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/notification/NotificationInfo;->packageUserKey:Lcom/zui/launcher/util/PackageUserKey;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->color:I

    iput v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->b:I

    iput-boolean v3, p0, Lcom/zui/launcher/notification/NotificationInfo;->c:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/zui/launcher/notification/NotificationInfo;->c:Z

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object p1, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    iget p1, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    iput-boolean p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->autoCancel:Z

    iget p1, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/zui/launcher/notification/NotificationInfo;->dismissable:Z

    return-void
.end method


# virtual methods
.method public getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->b:I

    invoke-static {p1, v0, p2}, Lcom/zui/launcher/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->b:I

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget p0, p0, Lcom/zui/launcher/notification/NotificationInfo;->b:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    :try_start_0
    iget-object v2, p0, Lcom/zui/launcher/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logNotificationLaunch(Landroid/view/View;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    iget-boolean p1, p0, Lcom/zui/launcher/notification/NotificationInfo;->autoCancel:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x2

    invoke-static {v0, p0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    return-void
.end method
