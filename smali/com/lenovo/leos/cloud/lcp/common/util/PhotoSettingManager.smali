.class public Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LENOVO_SYNC_PACKAGE_NAME:[Ljava/lang/String;

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "com_lenovo_photo_setting_preference"

.field public static final SYS_PHOTO_IS_AUTO_SYNC:Ljava/lang/String; = "SYS_PHOTO_IS_AUTO_SYNC"

.field public static final SYS_PHOTO_IS_AUTO_SYNC_WLAN:Ljava/lang/String; = "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

.field public static final SYS_PHOTO_IS_SUPPORT_SETTING:Ljava/lang/String; = "SYS_PHOTO_IS_SUPPORT_SETTING"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.lenovo.leos.cloud.sync"

    const-string v1, "com.lenovo.lps.cloud.sync"

    const-string v2, "com.lenovo.leos.cloud.sync.row"

    const-string v3, "com.lenovo.lps.cloud.sync.row"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->LENOVO_SYNC_PACKAGE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexcepted Exception in method existsConfigItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhotoSettingManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 8

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->LENOVO_SYNC_PACKAGE_NAME:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    const-string v5, "com_lenovo_photo_setting_preference"

    if-ge v3, v2, :cond_1

    aget-object v6, v1, v3

    const/4 v7, 0x0

    invoke-static {v0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexcepted Exception in method readBoolean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhotoSettingManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method public static checkContainsPhotoSettings()Z
    .locals 1

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexcepted Exception in method saveBoolean:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhotoSettingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "PhotoSettingManager"

    const-string p1, "APP not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static isSupportPhotoAutoSyncSetting()Z
    .locals 2

    const-string v0, "SYS_PHOTO_IS_SUPPORT_SETTING"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readPhotoAutoSyncIsOpen(Z)Z
    .locals 1

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static readPhotoAutoSyncWlanIsOpen(Z)Z
    .locals 1

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->c(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setSupportPhotoAutoSyncSetting(Z)V
    .locals 1

    const-string v0, "SYS_PHOTO_IS_SUPPORT_SETTING"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static writePhotoAutoSyncIsOpen(Z)V
    .locals 1

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method public static writePhotoAutoSyncWlanIsOpen(Z)V
    .locals 1

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/PhotoSettingManager;->d(Ljava/lang/String;Z)V

    return-void
.end method
