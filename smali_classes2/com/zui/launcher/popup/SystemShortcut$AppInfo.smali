.class public Lcom/zui/launcher/popup/SystemShortcut$AppInfo;
.super Lcom/zui/launcher/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080256

    const v1, 0x7f12009c

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/popup/SystemShortcut;-><init>(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->l:I

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 7

    invoke-static {p1}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->goToNormalState()V

    invoke-virtual {p1, p3}, Lcom/zui/launcher/BaseDraggingActivity;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/zui/launcher/util/PackageManagerHelper;->startDetailsActivityForInfo(Lcom/zui/launcher/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    iget p2, p0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->l:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p2, :cond_0

    const-string p2, "Tablet_Recent"

    goto :goto_0

    :cond_0
    const-string p2, "Legion_Recent"

    :goto_0
    move-object v0, p2

    iget p2, p0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->l:I

    if-nez p2, :cond_1

    const-string p2, "Click_Recent"

    goto :goto_1

    :cond_1
    const-string p2, "Drag_Recent"

    :goto_1
    move-object v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p0, p0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->l:I

    if-nez p0, :cond_2

    const-string p0, "Click_recent_Done"

    goto :goto_2

    :cond_2
    const-string p0, "Drag_recent_Done"

    :goto_2
    move-object v5, p0

    const-string v2, "\u5e94\u7528\u4fe1\u606f"

    const-string v6, "App_info"

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x7

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    return-void
.end method

.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 2

    instance-of v0, p2, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/16 v1, 0x19f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Lcom/zui/launcher/popup/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/popup/y;-><init>(Lcom/zui/launcher/popup/SystemShortcut$AppInfo;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method public setActionWhenInit(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;->l:I

    return-void
.end method
