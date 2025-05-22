.class public final Lcom/zui/launcher/pm/PackageInstallInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATUS_FAILED:I = 0x3

.field public static final STATUS_INSTALLED:I = 0x0

.field public static final STATUS_INSTALLED_DOWNLOADING:I = 0x2

.field public static final STATUS_INSTALLING:I = 0x1


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final packageName:Ljava/lang/String;

.field public final progress:I

.field public final state:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 3
    .param p1    # Landroid/content/pm/PackageInstaller$SessionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->state:I

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->progress:I

    invoke-static {p1}, Lcom/zui/launcher/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->state:I

    iput-object p1, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    new-instance p2, Landroid/content/ComponentName;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->progress:I

    iput-object p4, p0, Lcom/zui/launcher/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public static fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/zui/launcher/pm/PackageInstallInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/pm/PackageInstallInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/pm/PackageInstallInfo;-><init>(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-object v0
.end method

.method public static fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/zui/launcher/pm/PackageInstallInfo;
    .locals 2

    new-instance v0, Lcom/zui/launcher/pm/PackageInstallInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/zui/launcher/pm/PackageInstallInfo;-><init>(Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-object v0
.end method
