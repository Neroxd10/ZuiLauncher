.class public Lcom/zui/launcher/PromiseAppInfo;
.super Lcom/zui/launcher/AppInfo;
.source ""


# instance fields
.field public level:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/pm/PackageInstallInfo;)V
    .locals 1
    .param p1    # Lcom/zui/launcher/pm/PackageInstallInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/zui/launcher/AppInfo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/PromiseAppInfo;->level:I

    iget-object p1, p1, Lcom/zui/launcher/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/AppInfo;)V

    iget p0, p0, Lcom/zui/launcher/PromiseAppInfo;->level:I

    invoke-virtual {v0, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setInstallProgress(I)V

    iget p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    return-object v0
.end method
