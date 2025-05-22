.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

.field c:Z

.field d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->c:Z

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->d:I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->c:Z

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->d:I

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->a:Landroid/content/Context;

    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller$a;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->instatll(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private e()I
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->c:Z

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->d:I

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->c:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->d:I

    return p0
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->c()Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p0, -0x3e7

    return p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->e()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x6

    return p0
.end method

.method public unInstallApp(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/LeSyncSlientAppInstaller;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->uninstall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
