.class public Lcom/zui/launcher/Hotseat;
.super Lcom/zui/launcher/CellLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/views/Transposable;


# static fields
.field public static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private d0:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private d0(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    return p0
.end method


# virtual methods
.method public addCellAndShortcut(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Launcher;)Z
    .locals 12

    invoke-direct {p0, p2}, Lcom/zui/launcher/Hotseat;->d0(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/zui/launcher/Hotseat;->getRealChildCount(Lcom/zui/launcher/HotseatLayout;Lcom/zui/launcher/Launcher;)I

    move-result p0

    const-string v2, "Hotseat"

    const/4 v3, 0x0

    if-lt p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no cell can handle this icon + "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    if-eqz p1, :cond_4

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz p0, :cond_4

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addCellAndShortcut, this info=== "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x65

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v1, p0}, Lcom/zui/launcher/HotseatLayout;->makeAnEmptyCell(I)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p2, p1}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v10, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v11, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v5, p0

    invoke-virtual/range {v4 .. v11}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method b0(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Hotseat;->d0:Z

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method c0(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Hotseat;->d0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput p0, p3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    const/4 p0, 0x2

    iput p0, p4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void
.end method

.method public getChildrenItem(II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getRealChildCount(Lcom/zui/launcher/HotseatLayout;Lcom/zui/launcher/Launcher;)I
    .locals 0

    invoke-virtual {p2}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getRotationMode()Lcom/zui/launcher/graphics/RotationMode;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object p0

    return-object p0
.end method

.method public hasVerticalHotseat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Hotseat;->d0:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetLayout(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->removeAllViewsInLayout()V

    iput-boolean p1, p0, Lcom/zui/launcher/Hotseat;->d0:Z

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/CellLayout;->setGridSize(II)V

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/CellLayout;->setGridSize(II)V

    :goto_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/zui/launcher/CellLayout;->mActivity:Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    :goto_0
    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    const/16 v2, 0x50

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getHotseatLayoutPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/zui/launcher/CellLayout;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v1}, Lcom/zui/launcher/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method
