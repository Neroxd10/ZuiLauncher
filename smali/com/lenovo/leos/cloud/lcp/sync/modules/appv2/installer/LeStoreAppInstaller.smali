.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller$b;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_APP_INSTALL:Ljava/lang/String; = "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

.field public static final INSTALL_PARAMS_PERMISSION:Ljava/lang/String; = "permission"

.field public static final INSTALL_PARAMS_RESULT_CODE:Ljava/lang/String; = "resultcode"

.field public static final LESTORE_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.leos.appstore"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->e:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g:Z

    const/16 v1, -0x3e7

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h:I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller$b;

    invoke-direct {p1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller$a;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g(Z)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->e:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->f:Z

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h:I

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isReceiverAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->c:I

    return v0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_PACKAGE_INSTALL_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->e:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packagename"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "versioncode"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g:Z

    return-void
.end method

.method private h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()I
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->f:Z

    const/16 v1, -0x3e7

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g:Z

    move v2, v1

    :goto_0
    iget-boolean v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->f:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x258

    if-ge v1, v4, :cond_2

    if-nez v2, :cond_2

    const/16 v1, 0x3c

    if-lt v3, v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->e:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LeStore status bLeStorePermissionGranted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG_TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h:I

    return p0
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0x3e7

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->e()V

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->i()I

    move-result p1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeStoreAppInstaller;->h()V

    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public unInstallApp(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
