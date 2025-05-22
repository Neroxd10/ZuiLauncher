.class public Lcom/zui/launcher/icons/ShortcutCachingLogic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/cache/CachingLogic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/launcher/icons/cache/CachingLogic<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p3, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ShortcutCachingLogic"

    const-string p2, "Failed to get shortcut icon"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addToMemCache()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getComponent(Landroid/content/pm/ShortcutInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public bridge synthetic getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getComponent(Landroid/content/pm/ShortcutInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDescription(Landroid/content/pm/ShortcutInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getDescription(Landroid/content/pm/ShortcutInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getLastUpdatedTime(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/PackageInfo;)J
    .locals 2

    if-eqz p1, :cond_1

    sget-object p0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide p0

    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    iget-wide p0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide p0
.end method

.method public bridge synthetic getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getLastUpdatedTime(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/PackageInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getUser(Landroid/content/pm/ShortcutInfo;)Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .locals 0

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getUser(Landroid/content/pm/ShortcutInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {p1, p2, v0, p3}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->getIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p1, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz p3, :cond_3

    :try_start_1
    new-instance p3, Lcom/zui/launcher/icons/BitmapInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/zui/launcher/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/zui/launcher/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_2
    return-object p3

    :cond_3
    :try_start_2
    new-instance p3, Lcom/zui/launcher/icons/BitmapInfo;

    invoke-static {p2}, Lcom/zui/launcher/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/zui/launcher/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_4
    return-object p3

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_3
    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p1
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/icons/ShortcutCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
