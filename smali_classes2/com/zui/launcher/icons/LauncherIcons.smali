.class public Lcom/zui/launcher/icons/LauncherIcons;
.super Lcom/zui/launcher/icons/BaseIconFactory;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static u:Lcom/zui/launcher/icons/LauncherIcons;

.field private static v:I


# instance fields
.field private final r:I

.field private s:Lcom/zui/launcher/icons/LauncherIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/icons/LauncherIcons;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZIZ)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZIZ)V

    iput p4, p0, Lcom/zui/launcher/icons/LauncherIcons;->r:I

    return-void
.end method

.method public static clearPool()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/icons/LauncherIcons;->t:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    sget v1, Lcom/zui/launcher/icons/LauncherIcons;->v:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/zui/launcher/icons/LauncherIcons;->v:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    const v0, 0x7f120624

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "badge_package"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;
    .locals 1

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/graphics/IconShape;->enableShapeDetection()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;Z)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Landroid/content/Context;Z)Lcom/zui/launcher/icons/LauncherIcons;
    .locals 10

    instance-of v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->newLauncherIcons(Landroid/content/Context;Z)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/zui/launcher/icons/LauncherIcons;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    if-eqz v1, :cond_1

    sget-object p0, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    iget-object p1, p0, Lcom/zui/launcher/icons/LauncherIcons;->s:Lcom/zui/launcher/icons/LauncherIcons;

    sput-object p1, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/icons/LauncherIcons;->s:Lcom/zui/launcher/icons/LauncherIcons;

    monitor-exit v0

    return-object p0

    :cond_1
    sget v5, Lcom/zui/launcher/icons/LauncherIcons;->v:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    new-instance v9, Lcom/zui/launcher/icons/LauncherIcons;

    iget v3, v0, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget v4, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    iget v7, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizePx:I

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->supportChangeShape(Landroid/content/Context;)Z

    move-result v8

    move-object v1, v9

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/icons/LauncherIcons;-><init>(Landroid/content/Context;IIIZIZ)V

    return-object v9

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    return-void
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zui/launcher/icons/LauncherIcons;->createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createShortcutIcon(Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Supplier;Z)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 3
    .param p3    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Z",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">;Z)",
            "Lcom/zui/launcher/icons/BitmapInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/shortcuts/DeepShortcutManager;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mFillResIconDpi:I

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/zui/launcher/icons/BaseIconFactory;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {p0}, Lcom/zui/launcher/icons/BitmapInfo;-><init>()V

    iget-object p1, p3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p2, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iput p1, p0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    return-object p0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v0, Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {v0}, Lcom/zui/launcher/icons/BitmapInfo;-><init>()V

    if-eqz p2, :cond_6

    if-eqz p4, :cond_2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_4

    new-instance p2, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p2, p3}, Lcom/zui/launcher/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/icons/LauncherIcons;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/icons/IconCache;)Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object p1

    iget-object p2, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p2, :cond_5

    sget-object p2, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_INFO:Lcom/zui/launcher/icons/BitmapInfo;

    :cond_5
    iget p2, p2, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iput p2, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iget p2, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mIconBitmapSize:I

    new-instance p4, Lcom/zui/launcher/icons/x;

    invoke-direct {p4, p0, p3, p1}, Lcom/zui/launcher/icons/x;-><init>(Lcom/zui/launcher/icons/LauncherIcons;Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;)V

    invoke-static {p2, p2, p4}, Lcom/zui/launcher/icons/BitmapRenderer;->createHardwareBitmap(IILcom/zui/launcher/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-object v0

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iput-object p3, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic f(Landroid/graphics/Bitmap;Lcom/zui/launcher/ItemInfoWithIcon;Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getShadowGenerator()Lcom/zui/launcher/icons/ShadowGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/zui/launcher/icons/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    new-instance p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    iget-object p2, p2, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-direct {p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Lcom/zui/launcher/icons/BitmapInfo;)V

    invoke-virtual {p0, p3, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/icons/IconCache;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/LauncherIcons;->e(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    new-instance p0, Lcom/zui/launcher/AppInfo;

    invoke-direct {p0}, Lcom/zui/launcher/AppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p0, v2}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {p1, p0}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V

    return-object p1
.end method

.method public recycle()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/icons/LauncherIcons;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/zui/launcher/icons/LauncherIcons;->v:I

    iget v2, p0, Lcom/zui/launcher/icons/LauncherIcons;->r:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->clear()V

    sget-object v1, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    iput-object v1, p0, Lcom/zui/launcher/icons/LauncherIcons;->s:Lcom/zui/launcher/icons/LauncherIcons;

    sput-object p0, Lcom/zui/launcher/icons/LauncherIcons;->u:Lcom/zui/launcher/icons/LauncherIcons;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
