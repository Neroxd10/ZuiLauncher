.class public Lcom/zui/quickstep/views/OverviewActionsView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/launcher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/views/OverviewActionsView$ActionsDisabledFlags;,
        Lcom/zui/quickstep/views/OverviewActionsView$ActionsHiddenFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/zui/launcher/Insettable;"
    }
.end annotation


# static fields
.field public static final DISABLED_NO_THUMBNAIL:I = 0x4

.field public static final DISABLED_ROTATED:I = 0x2

.field public static final DISABLED_SCROLLING:I = 0x1

.field public static final HIDDEN_NON_ZERO_ROTATION:I = 0x1

.field public static final HIDDEN_NO_RECENTS:I = 0x4

.field public static final HIDDEN_NO_TASKS:I = 0x2


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Lcom/zui/launcher/util/MultiValueAlpha;

.field private c:I

.field private d:F

.field private e:F

.field protected mCallbacks:Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDisabledFlags:I

.field protected mDp:Lcom/zui/launcher/DeviceProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->a:Landroid/graphics/Rect;

    new-instance p1, Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    return-void
.end method

.method private a()V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->e:F

    invoke-direct {p0, v0}, Lcom/zui/quickstep/views/OverviewActionsView;->b(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private b(F)F
    .locals 1

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    iget p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->d:F

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public static getOverviewActionsBottomMarginPx(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/DeviceProfile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static getOverviewActionsTopMarginPx(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/DeviceProfile;)I
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return v0
.end method


# virtual methods
.method public getContentAlpha()Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenAlpha()Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getScrollAlpha()Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getVisibilityAlpha()Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0065

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {p0}, Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onShare()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0064

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {p0}, Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onScreenshot()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0064

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERVIEW_SHARE:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a02b0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    return-void
.end method

.method public setDp(Lcom/zui/launcher/DeviceProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDp:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    invoke-direct {p0}, Lcom/zui/quickstep/views/OverviewActionsView;->c()V

    return-void
.end method

.method public setModalTransformY(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->e:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/OverviewActionsView;->a()V

    return-void
.end method

.method public setTaskModalness(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->d:F

    invoke-direct {p0}, Lcom/zui/quickstep/views/OverviewActionsView;->a()V

    return-void
.end method

.method public updateDisabledFlags(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    iget p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    and-int/lit8 p1, p1, -0x3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1}, Lcom/zui/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public updateHiddenFlags(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/zui/quickstep/views/OverviewActionsView;->c:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/zui/quickstep/views/OverviewActionsView;->c:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->c:I

    iget p1, p0, Lcom/zui/quickstep/views/OverviewActionsView;->c:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->b:Lcom/zui/launcher/util/MultiValueAlpha;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    return-void
.end method

.method public updateVerticalMargin(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDp:Lcom/zui/launcher/DeviceProfile;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDp:Lcom/zui/launcher/DeviceProfile;

    invoke-static {p1, v2}, Lcom/zui/quickstep/views/OverviewActionsView;->getOverviewActionsTopMarginPx(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/DeviceProfile;)I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/zui/quickstep/views/OverviewActionsView;->mDp:Lcom/zui/launcher/DeviceProfile;

    invoke-static {p1, p0}, Lcom/zui/quickstep/views/OverviewActionsView;->getOverviewActionsBottomMarginPx(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/DeviceProfile;)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method
