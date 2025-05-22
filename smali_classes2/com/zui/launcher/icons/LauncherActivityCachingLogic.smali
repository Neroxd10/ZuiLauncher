.class public Lcom/zui/launcher/icons/LauncherActivityCachingLogic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/cache/CachingLogic;
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/icons/cache/CachingLogic<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;",
        "Lcom/zui/launcher/util/ResourceBasedOverride;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherActivityCachingLogic;
    .locals 2

    const-class v0, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;

    const v1, 0x7f12041b

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;

    return-object p0
.end method


# virtual methods
.method public getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->getComponent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->getUser(Landroid/content/pm/LauncherActivityInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getIconProvider()Lcom/zui/launcher/icons/IconProvider;

    move-result-object p1

    iget p3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {p1, p2, p3}, Lcom/zui/launcher/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
