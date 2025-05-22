.class public final Lcom/amap/api/col/l3s/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/dn$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/content/Context;

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/amap/api/col/l3s/dn;

.field private t:Lcom/amap/api/col/l3s/dn;

.field private u:[B

.field private v:[B

.field private w:Z

.field private x:Z

.field private y:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private z:Lcom/amap/api/col/l3s/j$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->f:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/j;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->i:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->j:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->k:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->l:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->m:[B

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->n:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->o:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->p:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->q:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->r:Z

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->u:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->v:[B

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->w:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->x:Z

    new-instance v1, Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MyTrafficStyle;-><init>()V

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->y:Lcom/amap/api/maps/model/MyTrafficStyle;

    iput-object p1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput-object p2, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->n:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->o:Z

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/j;->x:Z

    return-void
.end method

.method private static a([B)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    shl-int/lit8 v3, v4, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x4

    aget-byte p0, p0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    const/16 v1, 0x7d1

    if-eq p0, v1, :cond_2

    return v2

    :catchall_0
    move-exception p0

    const-string v1, "AMapCustomStyleManager"

    const-string v2, "checkData"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method private static b([B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x100

    :try_start_1
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object p0, v0

    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->l:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map_assets"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icons-for_custom_5_14.data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/j;->l:[B

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->p:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3s/j;->g:I

    iget-object p0, p0, Lcom/amap/api/col/l3s/j;->l:[B

    invoke-virtual {v0, v1, p0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleTexture(I[B)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleDataPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTexturePath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object p0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->o:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isLogoEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->q:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    :goto_0
    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->q:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->c:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/col/l3s/j;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setNativeMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z

    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->c:Z

    goto/16 :goto_3

    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/col/l3s/j;->g:I

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v6

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v7

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setNativeMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->q:Z

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->x:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->j:[B

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "map_assets"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style_1_16_3569740208.data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/j;->b([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->j:[B

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->j:[B

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "map_assets"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style_1_17_1598932719.data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/j;->b([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->j:[B

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3s/j;->g:I

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->j:[B

    iget-object v5, p0, Lcom/amap/api/col/l3s/j;->i:[B

    invoke-virtual {v1, v2, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleData(I[B[B)V

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->q:Z

    :cond_9
    invoke-direct {p0}, Lcom/amap/api/col/l3s/j;->f()V

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->r:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->k:[B

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/l3s/j;->g:I

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->k:[B

    invoke-virtual {v1, v2, v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBackgroundTexture(I[B)V

    :cond_a
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->r:Z

    :cond_b
    invoke-virtual {v0, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    :cond_c
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->c:Z

    monitor-exit p0

    return-void

    :cond_d
    :goto_3
    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->e:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v4

    if-nez v4, :cond_e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v4, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_e
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v1

    if-eqz v1, :cond_10

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/j;->w:Z

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/j;->p:Z

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v4, p0, Lcom/amap/api/col/l3s/j;->g:I

    iget-object v5, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleTexture(I[B)V

    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    goto :goto_4

    :cond_f
    invoke-direct {p0}, Lcom/amap/api/col/l3s/j;->f()V

    goto :goto_4

    :cond_10
    invoke-direct {p0}, Lcom/amap/api/col/l3s/j;->f()V

    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->w:Z

    :goto_4
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->e:Z

    :cond_11
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->d:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v1

    if-nez v1, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_12
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->u:[B

    if-eqz v0, :cond_13

    goto :goto_5

    :cond_13
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->q:Z

    if-eqz v0, :cond_18

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/j;->c:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    goto :goto_7

    :cond_14
    :goto_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->m:[B

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "map_assets"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style-for-custom_0_17_1594719935.data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/j;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/j;->m:[B

    :cond_15
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->u:[B

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->u:[B

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/amap/api/col/l3s/j;->a([B)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/amap/api/col/l3s/dz;->a()V

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v4, p0, Lcom/amap/api/col/l3s/j;->g:I

    iget-object v5, p0, Lcom/amap/api/col/l3s/j;->m:[B

    invoke-virtual {v1, v4, v0, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleData(I[B[B)V

    iput-boolean v2, p0, Lcom/amap/api/col/l3s/j;->q:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->resetRenderTime()V

    :cond_18
    :goto_7
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->d:Z

    :cond_19
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->f:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_1a
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->v:[B

    if-eqz v0, :cond_24

    :cond_1b
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->v:[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->v:[B

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_24

    if-eqz v0, :cond_23

    invoke-static {v0}, Lcom/amap/api/col/l3s/du;->a([B)Lcom/amap/api/col/l3s/dr;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dr;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_23

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/dr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "bg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1d

    const-string v5, "visible"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "lineColor"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_1d
    move v5, v2

    :goto_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v6, -0x80000000

    if-nez v0, :cond_1e

    invoke-static {v4}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_a

    :cond_1e
    move v0, v6

    :goto_a
    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->k:[B

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "map_assets"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "bktile.data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/amap/api/col/l3s/j;->k:[B

    :cond_1f
    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->k:[B

    if-eqz v4, :cond_22

    if-nez v5, :cond_20

    move v0, v3

    goto :goto_b

    :cond_20
    if-ne v0, v6, :cond_21

    move v4, v2

    goto :goto_c

    :cond_21
    :goto_b
    move v4, v3

    :goto_c
    iget-object v5, p0, Lcom/amap/api/col/l3s/j;->k:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v3, v0, v4}, Lcom/amap/api/col/l3s/ex;->a([BIIZ)[B

    move-result-object v0

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/col/l3s/j;->g:I

    invoke-virtual {v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBackgroundTexture(I[B)V

    :cond_22
    const-string v0, "traffic"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "multiFillColors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "smooth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;)I

    move-result v1

    const-string v4, "slow"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;)I

    move-result v4

    const-string v5, "congested"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;)I

    move-result v5

    const-string v6, "seriousCongested"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/du;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/amap/api/col/l3s/j;->y:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v6, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSmoothColor(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->y:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSlowColor(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->y:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/MyTrafficStyle;->setCongestedColor(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/j;->y:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSeriousCongestedColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v1, "AMapCustomStyleManager"

    const-string v4, "setExtraStyle"

    invoke-static {v0, v1, v4}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    :cond_23
    :goto_d
    iput-boolean v2, p0, Lcom/amap/api/col/l3s/j;->r:Z

    :cond_24
    iput-boolean v3, p0, Lcom/amap/api/col/l3s/j;->f:Z

    :cond_25
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    const-string v0, "AMapCustomStyleManager"

    const-string v1, "updateStyle"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/j;->z:Lcom/amap/api/col/l3s/j$a;

    return-void
.end method

.method public final a(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/j;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->n:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->c:Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/amap/api/col/l3s/ev;->b(Landroid/content/Context;Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->s:Lcom/amap/api/col/l3s/dn;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/amap/api/col/l3s/j;->x:Z

    if-eqz v3, :cond_4

    new-instance v3, Lcom/amap/api/col/l3s/dn;

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    const/4 v5, 0x2

    const-string v6, "abroad_sdk_json_sdk_780_zip"

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/amap/api/col/l3s/dn;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/dn$a;ILjava/lang/String;)V

    :goto_0
    iput-object v3, p0, Lcom/amap/api/col/l3s/j;->s:Lcom/amap/api/col/l3s/dn;

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/amap/api/col/l3s/dn;

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    const-string v5, "sdk_780"

    invoke-direct {v3, v4, p0, v1, v5}, Lcom/amap/api/col/l3s/dn;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/dn$a;ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->s:Lcom/amap/api/col/l3s/dn;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/l3s/dn;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->s:Lcom/amap/api/col/l3s/dn;

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->t:Lcom/amap/api/col/l3s/dn;

    if-nez v3, :cond_6

    new-instance v3, Lcom/amap/api/col/l3s/dn;

    iget-object v4, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/amap/api/col/l3s/dn;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3s/dn$a;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/amap/api/col/l3s/j;->t:Lcom/amap/api/col/l3s/dn;

    :cond_6
    iget-object v2, p0, Lcom/amap/api/col/l3s/j;->t:Lcom/amap/api/col/l3s/dn;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3s/dn;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->t:Lcom/amap/api/col/l3s/dn;

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleDataPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->d:Z

    :cond_8
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v2

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->d:Z

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTexturePath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->e:Z

    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v2

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->e:Z

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->f:Z

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v2

    if-eq v0, v2, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->f:Z

    :cond_d
    iget-object p1, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_e
    invoke-direct {p0}, Lcom/amap/api/col/l3s/j;->g()V

    iget-object p1, p0, Lcom/amap/api/col/l3s/j;->h:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/amap/api/col/l3s/ev;->a(Landroid/content/Context;Z)V

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a([BI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3s/j;->b([BI)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->u:[B

    iput-object v1, p0, Lcom/amap/api/col/l3s/j;->v:[B

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->d:Z

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/j;->r:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->f:Z

    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->c:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b([BI)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/l3s/j;->u:[B

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->d:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/amap/api/col/l3s/j;->v:[B

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->f:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_sdk_780.data"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_abroad_sdk.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->uncompressToByteWithKeys([B[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/amap/api/col/l3s/j;->u:[B

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/j;->d:Z

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/j;->z:Lcom/amap/api/col/l3s/j$a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/col/l3s/j;->z:Lcom/amap/api/col/l3s/j$a;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/j$a;->a()V

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/j;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/j;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/j;->c:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
