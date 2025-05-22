.class public Lcom/zui/launcher/popup/SystemShortcut$Uninstall;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uninstall"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0802a8

    const v1, 0x7f1206b2

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-static {p0}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    move-result-object p2

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->removeItemByInfo(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p2}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    instance-of p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/zui/launcher/popup/g0;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/g0;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
