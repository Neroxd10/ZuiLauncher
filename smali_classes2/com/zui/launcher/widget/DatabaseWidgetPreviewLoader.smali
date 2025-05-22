.class public Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/widget/WidgetPreviewLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;,
        Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;,
        Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/zui/launcher/icons/IconCache;

.field private final e:Lcom/zui/launcher/pm/UserCache;

.field private final f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

.field private g:Lcom/zui/launcher/PagedViewCellLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/icons/IconCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->d:Lcom/zui/launcher/icons/IconCache;

    sget-object p2, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/pm/UserCache;

    iput-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    new-instance p2, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    invoke-direct {p2, p1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    invoke-static {p1}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0708c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/util/Pair;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->b(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/graphics/Bitmap;II)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/views/ActivityContext;",
            "Lcom/zui/launcher/model/WidgetItem;",
            "Landroid/graphics/Bitmap;",
            "II)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p2, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->generateLeosWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/LenovoWidgetsProviderInfo;IILandroid/graphics/Bitmap;[I)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    iget-object v3, p2, Lcom/zui/launcher/model/WidgetItem;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private c(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->allAppsIconSizePx:I

    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    if-lt p4, v2, :cond_0

    if-ge p3, v2, :cond_2

    :cond_0
    instance-of v3, p1, Landroid/content/Context;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/zui/launcher/icons/ComponentWithLabel;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xwj"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    const/4 p3, 0x0

    if-eqz p5, :cond_6

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-lt p4, v2, :cond_6

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ge p4, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-gt p4, v2, :cond_4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-le p4, v2, :cond_5

    :cond_4
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    invoke-virtual {p5, v2, v2, p4}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    :cond_5
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_6
    :goto_1
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object p4, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    invoke-static {p4}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p4

    iget-object v2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->d:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p2, v2}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p4, p2, v2, p3, p3}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {p4}, Lcom/zui/launcher/icons/LauncherIcons;->recycle()V

    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p5
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/zui/launcher/widget/a;

    invoke-direct {v0, p1}, Lcom/zui/launcher/widget/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static g(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object p1

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->g(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    return-void
.end method


# virtual methods
.method d(Ljava/lang/String;)[J
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v4, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x1

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    aput-wide v4, v1, v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WidgetPreviewLoader"

    const-string v4, "PackageInfo not found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method f(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;Landroid/graphics/Bitmap;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    const-string v2, "preview_bitmap"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "componentName = ? AND profileId = ? AND size = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    iget-object v7, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v7}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x2

    iget-object p1, p1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    aput-object p1, v4, p0

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_4

    array-length p2, p1

    invoke-static {p1, v6, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_4
    const-string p2, "WidgetPreviewLoader"

    const-string p3, "Error loading preview from DB"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_5

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p1
.end method

.method public generateLeosWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/LenovoWidgetsProviderInfo;IILandroid/graphics/Bitmap;[I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/views/ActivityContext;",
            "Lcom/zui/launcher/LenovoWidgetsProviderInfo;",
            "II",
            "Landroid/graphics/Bitmap;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p2, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appPackageName:Ljava/lang/String;

    const p0, 0x7fffffff

    if-gez p3, :cond_0

    move p3, p0

    :cond_0
    if-gez p4, :cond_1

    move p4, p0

    :cond_1
    iget-object v0, p2, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p5

    iget p5, p5, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz p1, :cond_3

    move p1, p5

    :cond_3
    move-object v8, v1

    if-gtz v2, :cond_4

    goto :goto_3

    :cond_4
    move p5, v2

    goto :goto_3

    :cond_5
    instance-of v2, p1, Lcom/zui/launcher/BaseAlertActivity;

    const v3, 0x7f080260

    if-eqz v2, :cond_6

    check-cast p1, Lcom/zui/launcher/BaseAlertActivity;

    goto :goto_1

    :cond_6
    check-cast p1, Lcom/zui/launcher/BaseActivity;

    :goto_1
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz p1, :cond_7

    move p1, p5

    :cond_7
    if-gtz v3, :cond_8

    goto :goto_2

    :cond_8
    move p5, v3

    :goto_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v2, :cond_9

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v8

    move v6, p1

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :cond_9
    :goto_3
    if-eqz p6, :cond_a

    aput p1, p6, p0

    :cond_a
    const/high16 p6, 0x3f800000    # 1.0f

    if-le p1, p3, :cond_b

    int-to-float p3, p3

    int-to-float v2, p1

    div-float/2addr p3, v2

    goto :goto_4

    :cond_b
    move p3, p6

    :goto_4
    if-le p5, p4, :cond_c

    int-to-float p4, p4

    int-to-float p6, p5

    div-float p6, p4, p6

    :cond_c
    invoke-static {p3, p6}, Ljava/lang/Math;->min(FF)F

    move-result p3

    int-to-float p4, p1

    mul-float/2addr p4, p3

    float-to-int v4, p4

    int-to-float p4, p5

    mul-float/2addr p3, p4

    float-to-int v5, p3

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p4, v4

    div-int/lit8 v2, p4, 0x2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p4, v5

    div-int/lit8 v3, p4, 0x2

    if-eqz p2, :cond_d

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    goto :goto_5

    :cond_d
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, p0, p0, p1, p5}, Landroid/graphics/Rect;->set(IIII)V

    add-int/2addr v4, v2

    add-int/2addr v5, v3

    invoke-virtual {p6, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v8, p4, p6, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public generateWidgetPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/views/ActivityContext;",
            "Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;",
            "I",
            "Landroid/graphics/Bitmap;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "WidgetPreviewLoader"

    if-gez p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->c:Landroid/content/Context;

    invoke-virtual {p2, v1, v3}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading widget preview for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-nez v4, :cond_5

    iget v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v0

    :goto_4
    invoke-interface {p1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    move-object v6, v2

    goto :goto_6

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->d:Lcom/zui/launcher/icons/IconCache;

    iget-object v7, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v6, v7, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_7

    :try_start_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :cond_7
    move v6, v3

    move v7, v6

    goto :goto_5

    :catch_1
    move-object p2, v2

    :catch_2
    move v6, v3

    :catch_3
    move v7, v3

    :goto_5
    if-gtz v6, :cond_8

    move v6, p1

    :cond_8
    if-gtz v6, :cond_9

    move-object v8, p2

    move p2, p1

    move p1, v6

    move-object v6, v8

    goto :goto_6

    :cond_9
    move p1, v6

    move-object v6, p2

    move p2, v7

    :goto_6
    if-eqz p5, :cond_a

    aput p1, p5, v3

    :cond_a
    const/high16 p5, 0x3f800000    # 1.0f

    if-le p1, p3, :cond_b

    int-to-float p3, p3

    int-to-float v7, p1

    div-float/2addr p3, v7

    goto :goto_7

    :cond_b
    move p3, p5

    :goto_7
    cmpl-float p5, p3, p5

    if-eqz p5, :cond_c

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    float-to-int p2, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_c
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    if-nez p4, :cond_d

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9

    :cond_d
    :try_start_4
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    invoke-virtual {p4, p1, p2, p5}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    :goto_8
    invoke-virtual {p3, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, v3, p5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_9
    if-eqz v4, :cond_e

    invoke-virtual {v1, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    :cond_e
    if-eqz v6, :cond_f

    :try_start_5
    invoke-direct {p0, v6}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_f
    move v3, v5

    :catch_5
    invoke-virtual {p3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move v5, v3

    :goto_a
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method h(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;[JLandroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "componentName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    iget-object v2, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-wide v1, p2, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastUpdated"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3}, Lcom/zui/launcher/icons/GraphicsUtils;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    const-string p2, "preview_bitmap"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/SQLiteCacheHelper;->insertOrReplace(Landroid/content/ContentValues;)V

    return-void
.end method

.method public loadPreview(Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/model/WidgetItem;Landroid/util/Size;Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)Landroid/os/CancellationSignal;
    .locals 8
    .param p1    # Lcom/zui/launcher/views/ActivityContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/model/WidgetItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    iget-object v0, p2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v0, v1, p3}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance p3, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$b;-><init>(Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;Lcom/zui/launcher/views/ActivityContext;Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;Lcom/zui/launcher/model/WidgetItem;IILcom/zui/launcher/widget/WidgetPreviewLoader$WidgetPreviewLoadedCallback;)V

    sget-object p0, Lcom/zui/launcher/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p3, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance p0, Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, p3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object p0
.end method

.method public refresh()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    invoke-virtual {p0}, Lcom/zui/launcher/util/SQLiteCacheHelper;->clear()V

    return-void
.end method

.method public removeObsoletePreviews(Ljava/util/ArrayList;Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 18
    .param p2    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/zui/launcher/util/Preconditions;->assertWorkerThread()V

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/util/ComponentKey;

    iget-object v5, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    iget-object v6, v4, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    iget-object v4, v4, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    iget-object v5, v1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    :goto_1
    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    const-string v8, "profileId"

    const-string v9, "packageName"

    const-string v10, "lastUpdated"

    const-string v11, "version"

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x3

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    if-eqz v1, :cond_4

    iget-object v7, v1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    cmp-long v7, v9, v4

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v11}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->d(Ljava/lang/String;)[J

    move-result-object v7

    aget-wide v16, v7, v8

    cmp-long v8, v16, v14

    if-nez v8, :cond_5

    const/4 v8, 0x1

    aget-wide v7, v7, v8

    cmp-long v7, v7, v12

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    if-nez v7, :cond_6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3, v9, v10, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_6
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_9

    invoke-virtual {v3, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    iget-object v4, v0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {v4, v1, v2}, Lcom/zui/launcher/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7, v4, v1, v2}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WidgetPreviewLoader"

    const-string v2, "Error updating widget previews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_a

    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void

    :goto_6
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->e:Lcom/zui/launcher/pm/UserCache;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public removePackage(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .locals 2

    iget-object p2, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->f:Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$a;

    const-string p2, "packageName = ? AND profileId = ?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/zui/launcher/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setPreviewSize(IILcom/zui/launcher/PagedViewCellLayout;)V
    .locals 0

    iput-object p3, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;->g:Lcom/zui/launcher/PagedViewCellLayout;

    return-void
.end method
