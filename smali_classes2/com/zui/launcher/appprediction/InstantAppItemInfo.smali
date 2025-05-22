.class public Lcom/zui/launcher/appprediction/InstantAppItemInfo;
.super Lcom/zui/launcher/AppInfo;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/AppInfo;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/AppInfo;->intent:Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "@instantapp"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/AppInfo;->makeWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x1a

    iput v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    iget-object v1, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
