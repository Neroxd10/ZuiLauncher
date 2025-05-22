.class public Lcom/zui/launcher/LauncherFiles;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_ICONS_DB:Ljava/lang/String; = "app_icons.db"

.field public static final BACKUP_DIR_NAME:Ljava/lang/String; = ".dbBackup"

.field public static final BACKUP_FILE_NAME:Ljava/lang/String; = "dbBackupZip"

.field public static final DEVICE_PREFERENCES_KEY:Ljava/lang/String; = "com.zui.launcher.device.prefs"

.field public static final DOWNGRADE_SCHEMA_FILE:Ljava/lang/String; = "downgrade_schema.json"

.field public static final LAUNCHER_2LAYER_DB:Ljava/lang/String; = "launcher_2layer.db"

.field public static final LAUNCHER_DB:Ljava/lang/String; = "launcher.db"

.field public static final MANAGED_USER_PREFERENCES_KEY:Ljava/lang/String; = "com.zui.launcher.managedusers.prefs"

.field public static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "com.zui.launcher.prefs"

.field public static final WIDGET_PREVIEWS_DB:Ljava/lang/String; = "widgetpreviews.db"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "launcher.db"

    const-string v1, "launcher_2layer.db"

    const-string v2, "com.zui.launcher.prefs.xml"

    const-string v3, "widgetpreviews.db"

    const-string v4, "com.zui.launcher.managedusers.prefs.xml"

    const-string v5, "com.zui.launcher.device.prefs.xml"

    const-string v6, "app_icons.db"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherFiles;->ALL_FILES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLauncherDbName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "launcher.db"

    return-object p0

    :cond_0
    const-string p0, "launcher_2layer.db"

    return-object p0
.end method

.method public static getTheOtherDbName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "launcher_2layer.db"

    return-object p0

    :cond_0
    const-string p0, "launcher.db"

    return-object p0
.end method
