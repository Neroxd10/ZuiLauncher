.class public Lcom/zui/launcher/states/EditviewState;
.super Lcom/zui/launcher/LauncherState;
.source ""


# static fields
.field public static final RUNTIME_EDITVIEW_PARAMS:Ljava/lang/String; = "launcher.editview_params"

.field protected static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/states/EditviewState;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0xfa

    const/16 v2, 0x3d

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/LauncherState;-><init>(IIII)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    return-void
.end method


# virtual methods
.method public getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    aget v0, v2, v0

    int-to-float v0, v0

    :cond_0
    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    aget p0, p0, p1

    int-to-float p1, p0

    :cond_1
    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    invoke-direct {p0, v2, v1, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getSavedParams()[I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    return-object p0
.end method

.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public getWorkspacePageIndicatorScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/states/EditviewState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget v0, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0702ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationY:F

    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 6

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    new-instance p1, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    invoke-direct {p1, p0, v3, v3}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1

    :cond_1
    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v4, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    if-eqz p0, :cond_2

    const/4 v4, 0x0

    aget v4, p0, v4

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_3

    const v0, 0x7f070302

    goto :goto_0

    :cond_3
    const v0, 0x7f070301

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    neg-int v0, v4

    int-to-float p1, p1

    int-to-float p0, p0

    mul-float/2addr p0, v2

    sub-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v0, p0

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    int-to-float p1, v0

    invoke-direct {p0, v2, v3, p1}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStateDisabled(Lcom/zui/launcher/Launcher;)V
    .locals 1

    const/high16 p0, 0x10000

    invoke-static {p1, p0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/Launcher;->exitEditMode(ZZ)Z

    return-void
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->showPageIndicatorAtCurrentScroll()V

    const/high16 p0, 0x10000

    invoke-static {p1, p0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->enterEditMode(Z)V

    return-void
.end method

.method public onStateTransitionEnd(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->setRestState(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public restoreSavedParams([I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/states/EditviewState;->c:[I

    return-void
.end method
