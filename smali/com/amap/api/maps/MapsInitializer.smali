.class public final Lcom/amap/api/maps/MapsInitializer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static closeTileOverlay:Z = false

.field private static exceptionLogger:Lcom/amap/api/maps/ExceptionLogger; = null

.field private static isLoadWorldGridMap:Z = false

.field private static isNeedDownloadCoordinateConvertLibrary:Z = true

.field private static isNetWorkEnable:Z = true

.field private static isPolyline2Enable:Z = true

.field private static isSupportRecycleView:Z = true

.field private static isTextureDestroyedRender:Z = false

.field private static isTextureSizeChangedInvoked:Z = false

.field private static isTextureViewDestorySync:Z = true

.field private static isloadWorldVectorMap:Z = true

.field private static mProtocol:I = 0x1

.field private static mWorldVectorOfflineMapStyleAssetsPath:Ljava/lang/String; = ""

.field private static mWorldVectorOfflineMapStyleFilePath:Ljava/lang/String; = ""

.field public static sdcardDir:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableCachedMapDataUpdate(Z)V
    .locals 0

    return-void
.end method

.method public static getExceptionLogger()Lcom/amap/api/maps/ExceptionLogger;
    .locals 1

    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->exceptionLogger:Lcom/amap/api/maps/ExceptionLogger;

    return-object v0
.end method

.method public static getNetWorkEnable()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isNetWorkEnable:Z

    return v0
.end method

.method public static getPolyline2Enable()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isPolyline2Enable:Z

    return v0
.end method

.method public static getProtocol()I
    .locals 1

    sget v0, Lcom/amap/api/maps/MapsInitializer;->mProtocol:I

    return v0
.end method

.method public static getTextureDestroyRender()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isTextureDestroyedRender:Z

    return v0
.end method

.method public static getTextureSizeChangedInvoked()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isTextureSizeChangedInvoked:Z

    return v0
.end method

.method public static getTextureViewDestorySync()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isTextureViewDestorySync:Z

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "7.8.0"

    return-object v0
.end method

.method public static getWorldVectorOfflineMapStyleAssetsPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->mWorldVectorOfflineMapStyleAssetsPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getWorldVectorOfflineMapStyleFilePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/maps/MapsInitializer;->mWorldVectorOfflineMapStyleFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    return-void

    :cond_0
    const-string p0, "MapsInitializer"

    const-string v0, "the context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isDisableCachedMapDataUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isNeedDownloadCoordinateConvertLibrary:Z

    return v0
.end method

.method public static isLoadWorldGridMap()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap:Z

    return v0
.end method

.method public static isLoadWorldVectorMap()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isloadWorldVectorMap:Z

    return v0
.end method

.method public static isSupportRecycleView()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView:Z

    return v0
.end method

.method public static loadWorldGridMap(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap:Z

    return-void
.end method

.method public static loadWorldVectorMap(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isloadWorldVectorMap:Z

    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/l3s/ac;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/amap/api/col/l3s/iv;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBuildingHeight(I)V
    .locals 0

    return-void
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isNeedDownloadCoordinateConvertLibrary:Z

    return-void
.end method

.method public static setExceptionLogger(Lcom/amap/api/maps/ExceptionLogger;)V
    .locals 0

    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->exceptionLogger:Lcom/amap/api/maps/ExceptionLogger;

    return-void
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    sput p0, Lcom/amap/api/col/l3s/kw;->a:I

    const-string p0, ""

    :goto_0
    sput-object p0, Lcom/amap/api/col/l3s/kw;->b:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/amap/api/col/l3s/kw;->a:I

    goto :goto_0
.end method

.method public static setNetWorkEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isNetWorkEnable:Z

    return-void
.end method

.method public static setPolyline2Enable(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isPolyline2Enable:Z

    return-void
.end method

.method public static setProtocol(I)V
    .locals 2

    sput p0, Lcom/amap/api/maps/MapsInitializer;->mProtocol:I

    invoke-static {}, Lcom/amap/api/col/l3s/ja;->a()Lcom/amap/api/col/l3s/ja;

    move-result-object p0

    sget v0, Lcom/amap/api/maps/MapsInitializer;->mProtocol:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3s/ja;->a(Z)V

    return-void
.end method

.method public static setSupportRecycleView(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isSupportRecycleView:Z

    return-void
.end method

.method public static setTextureDestroyedRender(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isTextureDestroyedRender:Z

    return-void
.end method

.method public static setTextureSizeChangedInvoked(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isTextureSizeChangedInvoked:Z

    return-void
.end method

.method public static setTextureViewDestorySync(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->isTextureViewDestorySync:Z

    return-void
.end method

.method public static setWorldVectorOfflineMapStyleAssetsPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->mWorldVectorOfflineMapStyleAssetsPath:Ljava/lang/String;

    return-void
.end method

.method public static setWorldVectorOfflineMapStyleFilePath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/amap/api/maps/MapsInitializer;->mWorldVectorOfflineMapStyleFilePath:Ljava/lang/String;

    return-void
.end method
