.class public Lcom/zui/launcher/popup/SystemShortcut$RemoveWidget;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveWidget"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080285

    const v1, 0x7f1205d3

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
    .locals 4

    instance-of p0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v2, v1, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, p2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->isPromise()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p0, :cond_2

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v3, 0x8

    if-ne p0, v3, :cond_2

    move v0, v1

    :cond_2
    instance-of p0, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez p0, :cond_4

    instance-of p0, p2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-nez p0, :cond_4

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Lcom/zui/launcher/popup/f0;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/popup/f0;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object p0
.end method
