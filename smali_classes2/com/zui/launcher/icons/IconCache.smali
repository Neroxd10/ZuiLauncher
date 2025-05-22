.class public Lcom/zui/launcher/icons/IconCache;
.super Lcom/zui/launcher/icons/cache/BaseIconCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;
    }
.end annotation


# instance fields
.field private final e:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/zui/launcher/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "Lcom/zui/launcher/icons/ComponentWithLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/zui/launcher/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/zui/launcher/icons/cache/CachingLogic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/pm/LauncherApps;

.field private final j:Lcom/zui/launcher/pm/UserCache;

.field private final k:Lcom/zui/launcher/util/InstantAppResolver;

.field private final l:Lcom/zui/launcher/icons/IconProvider;

.field private m:I

.field private final n:Landroid/graphics/Bitmap;

.field private o:Landroid/graphics/Bitmap;

.field private final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/icons/IconProvider;

    invoke-direct {v0, p1}, Lcom/zui/launcher/icons/IconProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "app_icons.db"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/zui/launcher/icons/IconCache;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Ljava/lang/String;Lcom/zui/launcher/icons/IconProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Ljava/lang/String;Lcom/zui/launcher/icons/IconProvider;)V
    .locals 8

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget v5, p2, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget v6, p2, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    new-instance p2, Lcom/zui/launcher/icons/k;

    invoke-direct {p2, p0}, Lcom/zui/launcher/icons/k;-><init>(Lcom/zui/launcher/icons/IconCache;)V

    iput-object p2, p0, Lcom/zui/launcher/icons/IconCache;->e:Ljava/util/function/Predicate;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    new-instance p3, Ljava/util/HashMap;

    const/16 v0, 0x32

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lcom/zui/launcher/icons/IconCache;->p:Ljava/util/HashMap;

    new-instance p3, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;

    invoke-direct {p3, p1, p2}, Lcom/zui/launcher/icons/ComponentWithLabel$ComponentCachingLogic;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/zui/launcher/icons/IconCache;->f:Lcom/zui/launcher/icons/cache/CachingLogic;

    invoke-static {p1}, Lcom/zui/launcher/icons/LauncherActivityCachingLogic;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherActivityCachingLogic;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    new-instance p1, Lcom/zui/launcher/icons/ShortcutCachingLogic;

    invoke-direct {p1}, Lcom/zui/launcher/icons/ShortcutCachingLogic;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->h:Lcom/zui/launcher/icons/cache/CachingLogic;

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->i:Landroid/content/pm/LauncherApps;

    sget-object p1, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pm/UserCache;

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->j:Lcom/zui/launcher/pm/UserCache;

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/util/InstantAppResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->k:Lcom/zui/launcher/util/InstantAppResolver;

    iput-object p4, p0, Lcom/zui/launcher/icons/IconCache;->l:Lcom/zui/launcher/icons/IconProvider;

    invoke-direct {p0}, Lcom/zui/launcher/icons/IconCache;->x()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/icons/IconCache;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method private A()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    if-gtz v0, :cond_0

    sget-object p0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->setThreadPriority(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized k(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;)V
    .locals 6
    .param p4    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">(TT;",
            "Landroid/content/pm/ShortcutInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/IconCache;->l(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;Z)V
    .locals 8
    .param p4    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">(TT;",
            "Landroid/content/pm/ShortcutInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "TT;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v0

    iget-object v2, v0, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/icons/t;

    invoke-direct {v4, p2}, Lcom/zui/launcher/icons/t;-><init>(Landroid/content/pm/ShortcutInfo;)V

    iget-object v5, p0, Lcom/zui/launcher/icons/IconCache;->h:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz p5, :cond_1

    iget-object p5, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p5}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p5

    iget v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p5, v0}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->h:Lcom/zui/launcher/icons/cache/CachingLogic;

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p2, p5}, Lcom/zui/launcher/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    :cond_2
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/zui/launcher/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iput-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz p3, :cond_5

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/IconCache;->getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p4, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p4, p4, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p4, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->badgeBitmap(Landroid/graphics/Bitmap;Lcom/zui/launcher/icons/BitmapInfo;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_5

    :try_start_3
    invoke-virtual {p3}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_4

    :try_start_4
    invoke-virtual {p3}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic m(Lcom/zui/launcher/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/icons/IconCache;->A()V

    return-void
.end method

.method static synthetic n()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic o()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic p(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;
    .locals 0

    return-object p0
.end method

.method static synthetic q(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    return-object p0
.end method

.method static synthetic s(Lcom/zui/launcher/icons/ComponentWithLabel;)Lcom/zui/launcher/icons/ComponentWithLabel;
    .locals 0

    return-object p0
.end method

.method static synthetic v()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic w()Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private x()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/icons/IconCache;->y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private y(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/icons/IconCache;->z(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private z(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p0, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method


# virtual methods
.method protected applyCacheEntry(Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------IconCache--applyCacheEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugIconTitle(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1

    :cond_0
    iput-object p1, p2, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {p0}, Lcom/zui/launcher/util/SQLiteCacheHelper;->close()V

    return-void
.end method

.method public getDummyIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/IconCache;->reloadDummyIcon()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->o:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->l:Lcom/zui/launcher/icons/IconProvider;

    iget p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/icons/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIcon(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->p:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    const-class v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-nez v4, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->n:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    sget-object v6, Lcom/zui/launcher/icons/s;->a:Lcom/zui/launcher/icons/s;

    iget-object v7, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :cond_4
    sget-object v6, Lcom/zui/launcher/icons/p;->a:Lcom/zui/launcher/icons/p;

    iget-object v7, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    return-object p0
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->l:Lcom/zui/launcher/icons/IconProvider;

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/icons/IconProvider;->getSystemStateForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLauncherApplication()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->j:Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShortcutIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/IconCache;->e:Ljava/util/function/Predicate;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/zui/launcher/icons/IconCache;->k(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;)V

    return-void
.end method

.method public getShortcutIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Predicate;)V
    .locals 1
    .param p3    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            ">(TT;",
            "Landroid/content/pm/ShortcutInfo;",
            "Ljava/util/function/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zui/launcher/icons/IconCache;->k(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;)V

    return-void
.end method

.method public getShortcutInfoBadge(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/zui/launcher/AppInfo;

    invoke-direct {v2}, Lcom/zui/launcher/AppInfo;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, v2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, v2, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, v2, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    iget-object p0, v2, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-object p0

    :cond_0
    new-instance v0, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V

    iget-object p0, v0, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return-object p0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zui/launcher/icons/l;

    invoke-direct {v0, p2}, Lcom/zui/launcher/icons/l;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    .locals 7
    .param p1    # Lcom/zui/launcher/ItemInfoWithIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/ItemInfoWithIcon;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;ZZ)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/icons/IconCache;->applyCacheEntry(Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Lcom/zui/launcher/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    const-string p2, ""

    iput-object p2, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string p2, ""

    iput-object p2, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/icons/o;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/launcher/icons/o;-><init>(Lcom/zui/launcher/icons/IconCache;Landroid/content/Intent;Lcom/zui/launcher/ItemInfoWithIcon;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Ljava/util/function/Supplier;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/BluePoint;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/icons/IconCache;->applyCacheEntry(Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Lcom/zui/launcher/ItemInfoWithIcon;)V

    iget p2, p1, Lcom/zui/launcher/model/PackageItemInfo;->category:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    const v0, 0x7f120735

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitleNoCache(Lcom/zui/launcher/icons/ComponentWithLabel;)Ljava/lang/String;
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/zui/launcher/icons/ComponentWithLabel;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p1}, Lcom/zui/launcher/icons/ComponentWithLabel;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/icons/j;

    invoke-direct {v3, p1}, Lcom/zui/launcher/icons/j;-><init>(Lcom/zui/launcher/icons/ComponentWithLabel;)V

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->f:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getUnbadgedShortcutIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;Z)V
    .locals 6

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->e:Ljava/util/function/Predicate;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/IconCache;->l(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;ZLjava/util/function/Predicate;Z)V

    return-void
.end method

.method public getVersionFromDB(Ljava/lang/String;)I
    .locals 9

    const-string v0, "version"

    const-string v1, "componentName"

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "componentName like ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Launcher.IconCache"

    const-string v0, "Error reading icon cache"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, -0x1

    return p0

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public isDummyIcon(Landroid/graphics/Bitmap;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->o:Landroid/graphics/Bitmap;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->k:Lcom/zui/launcher/util/InstantAppResolver;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public synthetic r(Landroid/content/Intent;Lcom/zui/launcher/ItemInfoWithIcon;)Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/IconCache;->i:Landroid/content/pm/LauncherApps;

    iget-object p2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public reloadDummyIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/icons/IconCache;->o:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic t(Lcom/zui/launcher/ItemInfoWithIcon;)Z
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/zui/launcher/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic u(Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 2

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/model/PackageItemInfo;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIconForApp(Lcom/zui/launcher/model/PackageItemInfo;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public updateIconInBackground(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/cache/HandlerRunnable;
    .locals 7

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertUIThread()V

    iget v0, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->setThreadPriority(I)V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/icons/IconCache;->m:I

    new-instance v0, Lcom/zui/launcher/icons/cache/HandlerRunnable;

    iget-object v2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/zui/launcher/icons/m;

    invoke-direct {v3, p0, p2}, Lcom/zui/launcher/icons/m;-><init>(Lcom/zui/launcher/icons/IconCache;Lcom/zui/launcher/ItemInfoWithIcon;)V

    sget-object v4, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/zui/launcher/icons/b;

    invoke-direct {v5, p1}, Lcom/zui/launcher/icons/b;-><init>(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;)V

    new-instance v6, Lcom/zui/launcher/icons/n;

    invoke-direct {v6, p0}, Lcom/zui/launcher/icons/n;-><init>(Lcom/zui/launcher/icons/IconCache;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/IconCache;->j:Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v9

    iget-object v1, p0, Lcom/zui/launcher/icons/IconCache;->i:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, v0

    move-wide v6, v9

    invoke-virtual/range {v2 .. v8}, Lcom/zui/launcher/icons/cache/BaseIconCache;->addIconToDBAndMemCache(Ljava/lang/Object;Lcom/zui/launcher/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Launcher.IconCache"

    const-string v0, "Package not found"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSessionCache(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/zui/launcher/AppInfo;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    sget-object v3, Lcom/zui/launcher/icons/i;->a:Lcom/zui/launcher/icons/i;

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Lcom/zui/launcher/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/icons/IconCache;->applyCacheEntry(Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Lcom/zui/launcher/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v1, v0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    sget-object v3, Lcom/zui/launcher/icons/q;->a:Lcom/zui/launcher/icons/q;

    iget-object v4, p0, Lcom/zui/launcher/icons/IconCache;->g:Lcom/zui/launcher/icons/cache/CachingLogic;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/icons/IconCache;->applyCacheEntry(Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Lcom/zui/launcher/ItemInfoWithIcon;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
