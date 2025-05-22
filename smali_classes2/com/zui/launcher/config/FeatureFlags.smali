.class public final Lcom/zui/launcher/config/FeatureFlags;
.super Lcom/zui/launcher/config/BaseFlags;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/config/FeatureFlags$DebugFlag;,
        Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;
    }
.end annotation


# static fields
.field public static final DEFAULT_DESKTOP_STYLE:I = 0x1

.field public static final ENABLE_DATABASE_RESTORE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DEVICE_SEARCH:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_LSQ_VELOCITY_PROVIDER:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERVIEW_GRID:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERVIEW_SHARE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_THEMED_ICONS:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_WALLPAPER_SCRIM:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final HAS_BLUE_POINT:Z = true

.field public static final IS_DRAWER_DESKTOP:I = 0x0

.field public static final IS_LAYOUT_LOCKED:Z = false

.field public static final IS_SINGLE_LAYER_DESKTOP:I = 0x1

.field public static final IS_VERSION_FOR_JD:Z = false

.field public static final IS_VERSION_FOR_ROW:Z = false

.field public static final KEYGUARD_ANIMATION:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

.field public static final KEY_CURRENT_DESKTOP_STYLE:Ljava/lang/String; = "current_desktop_style"

.field public static final USE_ANDROID_DEFAULT_LAYOUT:Z = false

.field public static final USE_BLUE_POINT:Z = true

.field public static final USE_DUMMY_ICON:I = 0x1

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/config/FeatureFlags$DebugFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static isSingleLayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    const-string v0, "ENABLE_LSQ_VELOCITY_PROVIDER"

    const/4 v1, 0x1

    const-string v2, "Use Least Square algorithm for motion pause detection."

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_LSQ_VELOCITY_PROVIDER:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const/4 v0, -0x1

    sput v0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    new-instance v0, Lcom/zui/launcher/uioverrides/DeviceFlag;

    const-string v2, "ENABLE_ENFORCED_ROUNDED_CORNERS"

    const-string v3, "Enforce rounded corners on all App Widgets"

    invoke-direct {v0, v2, v1, v3}, Lcom/zui/launcher/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_SCRIM_FOR_APP_LAUNCH"

    const/4 v2, 0x0

    const-string v3, "Enables scrim during app launch animation."

    invoke-static {v0, v2, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_OVERVIEW_GRID"

    const-string v3, "Uses grid overview layout. Only applicable on large screen devices."

    invoke-static {v0, v2, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERVIEW_GRID:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_OVERVIEW_SHARE"

    const-string v3, "Show Share button in Overview Actions"

    invoke-static {v0, v2, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERVIEW_SHARE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_DEEP_SHORTCUT_ICON_CACHE"

    const-string v3, "R/W deep shortcut in IconCache"

    invoke-static {v0, v1, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_DATABASE_RESTORE"

    const-string v3, "Enable database restore when new restore session is created"

    invoke-static {v0, v2, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DATABASE_RESTORE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_THEMED_ICONS"

    const-string v3, "Enable themed icons on workspace"

    invoke-static {v0, v1, v3}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    new-instance v0, Lcom/zui/launcher/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_DEVICE_SEARCH"

    const-string v4, "Allows on device search in all apps"

    invoke-direct {v0, v3, v1, v4}, Lcom/zui/launcher/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "KEYGUARD_ANIMATION"

    const-string v1, "Enable animation for keyguard going away on wallpaper"

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_WALLPAPER_SCRIM"

    const-string v1, "Enables scrim over wallpaper for text protection."

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_WALLPAPER_SCRIM:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_OVERALL_BLUR"

    const-string v1, "show about recent overall blur"

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/config/FeatureFlags;->b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/config/BaseFlags;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/lang/String;ZLjava/lang/String;)Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;-><init>(Ljava/lang/String;Z)V

    :goto_0
    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "DeviceFlags:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;

    instance-of v3, v2, Lcom/zui/launcher/uioverrides/DeviceFlag;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "DebugFlags:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/config/FeatureFlags$DebugFlag;

    instance-of v3, v2, Lcom/zui/launcher/uioverrides/DeviceFlag;

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getDesktopStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;Z)Z

    sget p0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSingleLayerDesktop(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static isSingleLayerDesktop(Landroid/content/Context;Z)Z
    .locals 3

    sget v0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDefaultDesktopStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_desktop_style"

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/Utilities;->getSettingValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sput v1, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    :cond_3
    :goto_1
    sget p0, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static switchLayerDesktop(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    sput v1, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayer:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_desktop_style"

    invoke-static {p0, v2, v1}, Lcom/zui/launcher/Utilities;->setSettingValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, v0, 0x1

    return p0
.end method
