.class public Lcom/zui/launcher/Partner;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RES_DEFAULT_LAYOUT:Ljava/lang/String; = "partner_default_layout"

.field public static final RES_DEFAULT_WALLPAPER_HIDDEN:Ljava/lang/String; = "default_wallpapper_hidden"

.field public static final RES_FOLDER:Ljava/lang/String; = "partner_folder"

.field public static final RES_GRID_ICON_SIZE_DP:Ljava/lang/String; = "grid_icon_size_dp"

.field public static final RES_GRID_NUM_COLUMNS:Ljava/lang/String; = "grid_num_columns"

.field public static final RES_GRID_NUM_ROWS:Ljava/lang/String; = "grid_num_rows"

.field public static final RES_REQUIRE_FIRST_RUN_FLOW:Ljava/lang/String; = "requires_first_run_flow"

.field public static final RES_SYSTEM_WALLPAPER_DIR:Ljava/lang/String; = "system_wallpaper_directory"

.field public static final RES_WALLPAPERS:Ljava/lang/String; = "partner_wallpapers"

.field private static c:Z = false

.field private static d:Lcom/zui/launcher/Partner;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/Partner;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/Partner;->b:Landroid/content/res/Resources;

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/pm/PackageManager;)Lcom/zui/launcher/Partner;
    .locals 3

    const-class v0, Lcom/zui/launcher/Partner;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/zui/launcher/Partner;->c:Z

    if-nez v1, :cond_1

    const-string v1, "com.zui.launcher.action.PARTNER_CUSTOMIZATION"

    invoke-static {v1, p0}, Lcom/zui/launcher/util/PackageManagerHelper;->findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/zui/launcher/Partner;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v1, v2, p0}, Lcom/zui/launcher/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v1, Lcom/zui/launcher/Partner;->d:Lcom/zui/launcher/Partner;

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/zui/launcher/Partner;->c:Z

    :cond_1
    sget-object p0, Lcom/zui/launcher/Partner;->d:Lcom/zui/launcher/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public applyInvariantDeviceProfileOverrides(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/util/DisplayMetrics;)V
    .locals 6

    const-string v0, "integer"

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "grid_num_rows"

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "grid_num_columns"

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "grid_icon_size_dp"

    const-string v4, "dimen"

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p0, p2}, Lcom/zui/launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/high16 p0, -0x40800000    # -1.0f

    :goto_1
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    iput v1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iput v2, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    :cond_3
    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_4

    iput p0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    :cond_4
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Launcher.Partner"

    const-string p2, "Invalid Partner grid resource!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Partner;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Partner;->b:Landroid/content/res/Resources;

    return-object p0
.end method

.method public getWallpaperDirectory()Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_wallpaper_directory"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hasDefaultLayout()Z
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "partner_default_layout"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasFolder()Z
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "partner_folder"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideDefaultWallpaper()Z
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_wallpapper_hidden"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requiresFirstRunFlow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requires_first_run_flow"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
