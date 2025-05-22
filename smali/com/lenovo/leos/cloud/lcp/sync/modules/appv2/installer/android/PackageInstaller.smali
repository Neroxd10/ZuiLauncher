.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;
.super Ljava/util/Observable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$c;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;
    }
.end annotation


# static fields
.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final KEY_RESULT_DESC:Ljava/lang/String; = "resultDescription"


# instance fields
.field private a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageDeleteObserver;I)Z
    .locals 9

    const-string v0, "PackInstaller"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "deletePackage"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageDeleteObserver;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception p0

    const-string p1, "Failed to invoke PackageManager.deletePackage"

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Illegal access to invoke PackageManager.deletePackage"

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "Illegal argument to invoke PackageManager.deletePackage"

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "No such method: PackageManager.deletePackage"

    goto :goto_0

    :catch_4
    move-exception p0

    const-string p1, "No permission to invoke PackageManager.deletePackage"

    :goto_0
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p1, "PackInstaller"

    const-string p2, "No permission to invoke PackageManager.installPackage"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private d(Landroid/net/Uri;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver;ILjava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "installPackage"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object p4, v1, v7

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public instatll(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    const-string v1, "PackInstaller"

    const-string v2, "Package already exsists, replace existing!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$c;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$a;)V

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->d(Landroid/net/Uri;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageInstallObserver;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller$a;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/PackageInstaller;->b(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/android/IPackageDeleteObserver;I)Z

    move-result p0

    return p0
.end method
