.class public Lcom/zui/launcher/LauncherRecommend;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherRecommend$PackageInstallObserver;,
        Lcom/zui/launcher/LauncherRecommend$e;
    }
.end annotation


# static fields
.field public static final ACTION_AUTOINSTALL:Ljava/lang/String; = "com.android.settings.core.install"

.field public static final ACTION_AUTO_INSTALL_RESULT:Ljava/lang/String; = "com.zui.launcher.auto_install_result"

.field public static final ACTION_DOWNLOAD_POGRESS_REPORT:Ljava/lang/String; = "PERCENTAGE"

.field public static final ACTION_SILIENT_INSTALL:Ljava/lang/String; = "com.kukool.ACTION_SILIENT_INSTALL"

.field public static final ACTION_SILIENT_INSTALL_RESULT:Ljava/lang/String; = "com.kukool.ACTION_SILIENT_INSTALL_RESULT"

.field public static final ADD_TIME:Ljava/lang/String; = "add_time"

.field public static final APP_NAME:Ljava/lang/String; = "gamename"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final EXTRA_FILEPATH:Ljava/lang/String; = "filePath"

.field public static final EXTRA_PKGNAME:Ljava/lang/String; = "installPackageName"

.field public static final KEY_ACTION_SILIENT_INSTALL_ABS_PATH:Ljava/lang/String; = "KEY_ACTION_SILIENT_INSTALL_ABS_PATH"

.field public static final KEY_ADD_RECOMMEND_APP_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final KEY_DOWNLOAD_POGRESS_REPORT_DOWNLOAD_URL:Ljava/lang/String; = "downloadUrl"

.field public static final KEY_DOWNLOAD_POGRESS_REPORT_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final KEY_DOWNLOAD_POGRESS_REPORT_PROGRESS:Ljava/lang/String; = "percentage"

.field public static final KEY_RESULT_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final KEY_RESULT_RETURNCODE:Ljava/lang/String; = "returncode"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field public static final PERMISSION:Ljava/lang/String; = "android.settings.core.SYSTEM_INSTALL"

.field public static final VERSION_CODE:Ljava/lang/String; = "versioncode"


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/LauncherRecommend$e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/zui/launcher/LauncherRecommend$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherRecommend$a;-><init>(Lcom/zui/launcher/LauncherRecommend;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/zui/launcher/LauncherRecommend$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherRecommend$b;-><init>(Lcom/zui/launcher/LauncherRecommend;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->d:Landroid/os/Handler;

    new-instance v0, Lcom/zui/launcher/LauncherRecommend$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherRecommend$c;-><init>(Lcom/zui/launcher/LauncherRecommend;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/zui/launcher/LauncherRecommend$d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherRecommend$d;-><init>(Lcom/zui/launcher/LauncherRecommend;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "PERCENTAGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.kukool.ACTION_SILIENT_INSTALL"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.kukool.ACTION_SILIENT_INSTALL_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.zui.launcher.auto_install_result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->e:Landroid/content/BroadcastReceiver;

    const-string v1, "com.zui.launcher.permission.RECEIVE_LAUNCH_BROADCASTS"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/LauncherRecommend;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/LauncherRecommend;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/LauncherRecommend;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherRecommend;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/LauncherRecommend;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownlaodFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->checkSDCard()Z

    move-result v0

    const-string v1, ".apk"

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.ZuiDesktop/.GameFolder"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-char p0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTask(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "pref_download_task"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherRecommend;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final installApk(Landroid/content/Context;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDownloading(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v0

    const/4 p1, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "path=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    sget p0, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->startStatus:I

    if-ne p1, p0, :cond_2

    const-string p0, "isDownloading true."

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveFolerLog(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string p0, "isDownloading false."

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveFolerLog(Ljava/lang/String;)V

    return v0
.end method

.method public static isInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isRecommendEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, " "

    const-string v4, " not install success. reset it."

    const-string v5, "installFailed: "

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v8, v7}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v8, v7}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v8}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    invoke-virtual {p0, v8}, Lcom/zui/launcher/LauncherRecommend;->m(Lcom/zui/launcher/WorkspaceItemInfo;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v6}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v1, v7}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v1, v7}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private l(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->pauseDownLoad(Ljava/lang/String;)Z

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recommend pausetDownload . "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postInstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    new-instance v1, Lcom/zui/launcher/LauncherRecommend$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/LauncherRecommend$e;-><init>(Lcom/zui/launcher/LauncherRecommend;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->c:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "errot in mInstallListTask.run() at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v4, v3}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v4, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v4, v2}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v4, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/zui/launcher/DownloadSpan;->autoRetryDownload(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/launcher/DownloadSpan;->addTask(Lcom/zui/launcher/ItemInfo;)V

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/DownloadSpan;->startTask()V

    iget-object v5, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/zui/launcher/DownloadSpan;->downloadRetryPlus1(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v3}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    :goto_1
    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {p1, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {p1, v2}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p1, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private p(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, p1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->resumDownLoad(Ljava/lang/String;)Z

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recommend resumeDownload . "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sendBroadcast com.zui.action.autoinstall go go go "

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.core.install"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "installPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "filePath"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.settings"

    const-string v1, "com.android.settings.core.AutoInstallReceiver"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    const-string p1, "android.settings.core.SYSTEM_INSTALL"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static removeTask(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_download_task"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silentInstall pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherRecommend;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "silentInstall Install Failed. pkgName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_download_task"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/LauncherRecommend;->k()Z

    move-result v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/LauncherRecommend;->r(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    const p2, 0x10000001

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    const-string v0, "com.zui.launcher.fileprovider"

    invoke-static {p2, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    const-string p0, "silentInstallInner error. apk file not exists."

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public checkIsFreeze(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method public getDownloadProgress(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "path=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "done"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string p1, "max"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-wide p0, v1

    move-wide v1, v3

    goto :goto_1

    :cond_1
    move-wide p0, v1

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const-wide/16 v3, 0x64

    mul-long/2addr p0, v3

    div-long/2addr p0, v1

    long-to-int p0, p0

    return p0

    :cond_2
    return v0
.end method

.method public getDownloadStatus(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherRecommend;->getDownloadProgress(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1, p0}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownloadStatus "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Progress = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no status."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getDownloadStatus(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v2, "downloadUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v2, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const-string v3, " Progress = "

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isInstalling()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isDownloading()Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isPausing()Z

    move-result v4

    :cond_3
    invoke-virtual {p1, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :cond_4
    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownloadStatus no url case, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    iget v2, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    if-ne v2, v4, :cond_7

    invoke-virtual {p0, v1}, Lcom/zui/launcher/LauncherRecommend;->getDownloadProgress(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_7
    const/16 p0, 0x8

    if-ne v2, p0, :cond_8

    iget-object p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->getDownloadProgress(Ljava/lang/String;)I

    move-result v0

    :cond_8
    :goto_2
    if-ltz v0, :cond_9

    invoke-virtual {p1, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p1, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDownloadStatus "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no status."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public killInstallTask(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherRecommend$e;

    iget-object v2, v1, Lcom/zui/launcher/LauncherRecommend$e;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "killInstallTask success "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method m(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->pauseDownLoad(Ljava/lang/String;)Z

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recommend pausetDownload . "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return-void
.end method

.method public onDestory()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherRecommend;->pauseAllDownload()V

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public pauseAllDownload()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->getRecommendItemList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p0, v4}, Lcom/zui/launcher/LauncherRecommend;->m(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v4}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRecommendWidgetList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v3}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v4, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-direct {p0, v4}, Lcom/zui/launcher/LauncherRecommend;->l(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method q(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->resumDownLoad(Ljava/lang/String;)Z

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recommend resumeDownload . "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return-void
.end method

.method public removeDownload(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v2, "downloadUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->deleteDownLoad(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherRecommend;->removeTask(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Recommend removeDownload . "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    return-void
.end method

.method public removeRecommendByUser(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->killInstallTask(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeRecommendByUser packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "removeRecommendByUser info not a RecommendInfo"

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resumeAllDownload(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->getRecommendItemList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v5, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p0, v5}, Lcom/zui/launcher/LauncherRecommend;->q(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {v5}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherRecommend;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRecommendWidgetList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v5, v3}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-direct {p0, v5}, Lcom/zui/launcher/LauncherRecommend;->p(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
