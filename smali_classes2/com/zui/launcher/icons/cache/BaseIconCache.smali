.class public abstract Lcom/zui/launcher/icons/cache/BaseIconCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;,
        Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
    }
.end annotation


# static fields
.field public static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/UserHandle;",
            "Lcom/zui/launcher/icons/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Looper;

.field protected final mContext:Landroid/content/Context;

.field protected mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

.field protected mIconDpi:I

.field protected mLocaleList:Landroid/os/LocaleList;

.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected mSystemState:Ljava/lang/String;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->a:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->d:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    if-eqz p6, :cond_0

    new-instance p3, Ljava/util/HashMap;

    const/16 p6, 0x32

    invoke-direct {p3, p6}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/zui/launcher/icons/cache/BaseIconCache$a;

    invoke-direct {p3, p0}, Lcom/zui/launcher/icons/cache/BaseIconCache$a;-><init>(Lcom/zui/launcher/icons/cache/BaseIconCache;)V

    :goto_0
    iput-object p3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-direct {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->j()V

    iput p4, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    new-instance p3, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-direct {p3, p1, p2, p5}, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    return-void
.end method

.method private a(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "componentName"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "profileId"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p4, "lastUpdated"

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget p2, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "version"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->insertOrReplace(Landroid/content/ContentValues;)V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->d:Landroid/os/Looper;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache accessed on wrong thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Z)Z
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    if-eqz p3, :cond_0

    sget-object v4, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    :goto_0
    const-string v5, "componentName = ? AND profileId = ?"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    iget-object v8, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v8}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v4, v5, v7}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    sget-object v3, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4, v5}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v3

    iput-object v3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---BaseIconCache----getEntryFromDB from db getLabel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    iput-object v0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    if-nez p3, :cond_4

    :try_start_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    iget-object v0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iget-object v3, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v0, v3, p0, v4}, Lcom/zui/launcher/icons/BitmapInfo;->fromByteArray([BILandroid/os/UserHandle;Lcom/zui/launcher/icons/cache/BaseIconCache;Landroid/content/Context;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p3

    iput-object p3, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p3, 0x3

    :try_start_2
    invoke-interface {v2, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    iget-object v0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    iget-object p1, p1, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v0, p1, p0, v3}, Lcom/zui/launcher/icons/BitmapInfo;->fromByteArray([BILandroid/os/UserHandle;Lcom/zui/launcher/icons/cache/BaseIconCache;Landroid/content/Context;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :catch_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :cond_4
    :goto_3
    :try_start_3
    iget-object p0, p2, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_5

    move v1, v9

    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :try_start_4
    const-string p1, "BaseIconCache"

    const-string p2, "Error reading icon cache"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_8

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return v1

    :goto_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p0
.end method

.method private static d(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ComponentKey;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/zui/launcher/util/ComponentKey;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method private f(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/BaseIconFactory;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->close()V
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

.method private g(Lcom/zui/launcher/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/icons/BitmapInfo;)Landroid/content/ContentValues;
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/icons/BitmapInfo;->toByteArray()[B

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "icon_color"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "label"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "system_state"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "keywords"

    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-static {p5}, Lcom/zui/launcher/icons/BitmapInfo;->toByteArray(Lcom/zui/launcher/icons/BitmapInfo;)[B

    move-result-object p0

    const-string p1, "original_icon"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-object v0
.end method

.method private h(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/ComponentKey;

    iget-object v3, v2, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/zui/launcher/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/util/ComponentKey;

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private declared-synchronized i(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->clear()V

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {p1}, Lcom/zui/launcher/util/SQLiteCacheHelper;->close()V

    new-instance p1, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addIconToDBAndMemCache(Ljava/lang/Object;Lcom/zui/launcher/icons/cache/CachingLogic;Landroid/content/pm/PackageInfo;JZ)V
    .locals 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;",
            "Landroid/content/pm/PackageInfo;",
            "JZ)V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    move-object v7, p2

    monitor-enter p0

    :try_start_0
    invoke-interface {p2, p1}, Lcom/zui/launcher/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {p2, p1}, Lcom/zui/launcher/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v8

    new-instance v2, Lcom/zui/launcher/util/ComponentKey;

    invoke-direct {v2, v8, v1}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 v3, 0x0

    if-nez p6, :cond_1

    iget-object v4, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v5}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    new-instance v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v3}, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    iget-object v4, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-interface {p2, v4, p1, v5}, Lcom/zui/launcher/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v4, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-interface {p2, v4, p1, v5}, Lcom/zui/launcher/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    :cond_2
    iget-object v4, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v4}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-interface {p2, p1}, Lcom/zui/launcher/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-------BaseIconCache addIconToDBAndMemCache from object getLabel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "  intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {p2}, Lcom/zui/launcher/icons/cache/CachingLogic;->addToMemCache()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v1, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v9, Lcom/zui/launcher/icons/cache/BaseIconCache;->mLocaleList:Landroid/os/LocaleList;

    invoke-interface {p2, p1, v1}, Lcom/zui/launcher/icons/cache/CachingLogic;->getKeywords(Ljava/lang/Object;Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v3, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    move-object v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->g(Lcom/zui/launcher/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/icons/BitmapInfo;)Landroid/content/ContentValues;

    move-result-object v2

    move-object v4, p3

    invoke-interface {p2, p1, p3}, Lcom/zui/launcher/icons/cache/CachingLogic;->getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J

    move-result-wide v10

    move-object v1, p0

    move-object v3, v8

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/icons/cache/BaseIconCache;->a(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
    .locals 8
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zui/launcher/icons/cache/CachingLogic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;ZZ)",
            "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p0

    return-object p0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/function/Supplier;Lcom/zui/launcher/icons/cache/CachingLogic;ZZZ)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
    .locals 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Supplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/zui/launcher/icons/cache/CachingLogic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Lcom/zui/launcher/icons/cache/CachingLogic<",
            "TT;>;ZZZ)",
            "Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->b()V

    new-instance v0, Lcom/zui/launcher/util/ComponentKey;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez p6, :cond_a

    :cond_0
    new-instance v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    if-eqz p7, :cond_1

    iget-object p7, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {p7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0, v1, p6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->c(Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result p6

    const-string p7, "  intent: "

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p6, :cond_3

    iget-object p6, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {p6}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    move-object p6, v3

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    move-object p6, v3

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p6

    :goto_1
    if-eqz p6, :cond_5

    iget-object p5, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {p4, p5, p6, v0}, Lcom/zui/launcher/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p5

    iput-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p5, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-interface {p4, p5, p6, v2}, Lcom/zui/launcher/icons/cache/CachingLogic;->loadIcon(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p5

    iput-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->originalBitmap:Lcom/zui/launcher/icons/BitmapInfo;

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5, p2, v2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    move-result-object p5

    if-eqz p5, :cond_6

    iget-object v2, p5, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iput-object v2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v2, p5, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object p5, p5, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----BaseIconCache---cacheLocked from package object getLabel: "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    :cond_6
    iget-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez p5, :cond_7

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p5

    iput-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    :cond_7
    :goto_2
    iget-object p5, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_a

    if-nez p6, :cond_9

    if-nez v0, :cond_9

    if-nez p3, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    :goto_3
    move-object p6, v3

    :cond_9
    if-eqz p6, :cond_a

    invoke-interface {p4, p6}, Lcom/zui/launcher/icons/cache/CachingLogic;->getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {p4, p6, p3}, Lcom/zui/launcher/icons/cache/CachingLogic;->getDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----BaseIconCache---cacheLocked from cachingLogic object getLabel: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    :cond_a
    return-object v1
.end method

.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->h(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->d(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v1}, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p4, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----BaseIconCache---cachePackageInstallInfo from object getLabel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/zui/launcher/icons/BaseIconFactory;->createShapedIconBitmap(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p2

    iput-object p2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/icons/BaseIconFactory;->close()V

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->b()V

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Lcom/zui/launcher/util/SQLiteCacheHelper;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearCache()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic e(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->i(II)V

    return-void
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->a:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->f(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/icons/BitmapInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v0, p3

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->b()V

    invoke-static/range {p1 .. p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->d(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ComponentKey;

    move-result-object v15

    iget-object v1, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/icons/BitmapInfo;->isLowRes()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    :cond_0
    new-instance v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;

    invoke-direct {v7}, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;-><init>()V

    const/16 v16, 0x1

    invoke-direct {v8, v15, v7, v0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->c(Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;Z)Z

    move-result v1

    const/16 v17, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v9, v7

    goto/16 :goto_3

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v1, v17

    goto :goto_1

    :cond_3
    const/16 v1, 0x2000

    :goto_1
    iget-object v2, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;

    move-result-object v2

    iget-object v4, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget v12, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v8, v1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v13

    const/4 v14, 0x0

    move-object v9, v2

    move-object/from16 v11, p2

    invoke-virtual/range {v9 .. v14}, Lcom/zui/launcher/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZZ)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zui/launcher/icons/BaseIconFactory;->close()V

    iget-object v2, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---BaseIconCache----getEntryForPackageLocked from obj getLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/icons/GraphicsUtils;->debugIconTitle(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    iget-object v0, v4, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    :goto_2
    iget v1, v4, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, v1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    sget-object v0, Lcom/zui/launcher/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    iget v1, v4, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {v0, v1}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    iput-object v0, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, v7, Lcom/zui/launcher/icons/cache/BaseIconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/icons/cache/BaseIconCache;->g(Lcom/zui/launcher/icons/BitmapInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/icons/BitmapInfo;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, v15, Lcom/zui/launcher/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v6}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    iget-wide v10, v9, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    move-object v3, v9

    move-object v9, v7

    move-wide v6, v10

    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/icons/cache/BaseIconCache;->a(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;JJ)V

    goto :goto_3

    :cond_5
    move-object v9, v7

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "ApplicationInfo is null"

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v9, v7

    :catch_1
    move/from16 v16, v17

    :goto_3
    if-eqz v16, :cond_6

    iget-object v0, v8, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v1, v9

    :cond_7
    return-object v1
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    iget p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDpi:I

    invoke-static {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public abstract getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;
.end method

.method protected getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mSystemState:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getSerialNumberForUser(Landroid/os/UserHandle;)J
.end method

.method public getUpdateHandler()Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->j()V

    new-instance v0, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;

    invoke-direct {v0, p0}, Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler;-><init>(Lcom/zui/launcher/icons/cache/BaseIconCache;)V

    return-object v0
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultIcon(Lcom/zui/launcher/icons/BitmapInfo;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method public declared-synchronized queryCacheDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/launcher/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

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

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->b:Ljava/util/Map;

    new-instance v1, Lcom/zui/launcher/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->h(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mIconDb:Lcom/zui/launcher/icons/cache/BaseIconCache$IconDB;

    const-string v2, "componentName LIKE ? AND profileId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-virtual {p2, v2, v3}, Lcom/zui/launcher/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateIconParams(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/icons/cache/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/icons/cache/b;-><init>(Lcom/zui/launcher/icons/cache/BaseIconCache;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
