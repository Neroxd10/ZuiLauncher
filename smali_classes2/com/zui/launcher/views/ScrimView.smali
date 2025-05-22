.class public Lcom/zui/launcher/views/ScrimView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;
.implements Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;
    }
.end annotation


# static fields
.field public static final DRAG_HANDLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/views/ScrimView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:[I

.field private final c:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

.field private final d:Landroid/view/accessibility/AccessibilityManager;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private final g:Lcom/zui/launcher/util/MultiValueAlpha;

.field private final h:Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

.field private i:I

.field private j:Lcom/zui/launcher/util/SystemUiController;

.field private k:Z

.field private l:I

.field protected mCurrentFlatColor:I

.field protected mDragHandle:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final mDragHandleHeight:I

.field protected mDragHandleOffset:F

.field protected final mDragHandleSize:I

.field protected final mDragHandleWidth:I

.field protected mEndFlatColor:I

.field protected mEndFlatColorAlpha:I

.field protected final mEndScrim:I

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field protected mMaxScrimAlpha:F

.field protected mProgress:F

.field protected mScrimColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/views/ScrimView$a;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "dragHandleAlpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/views/ScrimView$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/ScrimView;->DRAG_HANDLE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/ScrimView;->a:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/zui/launcher/views/ScrimView;->b:[I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/views/ScrimView;->f:Landroid/graphics/RectF;

    const/16 p2, 0xff

    iput p2, p0, Lcom/zui/launcher/views/ScrimView;->i:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/launcher/views/ScrimView;->k:Z

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/ScrimView;->c:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    const v0, 0x7f04002e

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mMaxScrimAlpha:F

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->verticalDragHandleSizePx:I

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070848

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleHeight:I

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->createAccessibilityHelper()Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/ScrimView;->h:Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/zui/launcher/views/ScrimView;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    new-instance p1, Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/zui/launcher/views/ScrimView;->g:Lcom/zui/launcher/util/MultiValueAlpha;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/ScrimView;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->i:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ScrimView;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/views/ScrimView;)[I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->b:[I

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method private f(Lcom/zui/launcher/LauncherState;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private g()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrimView must have a ColorDrawable background, this one has: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDragHandleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->hasWhiteBg()Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    const v2, 0x7f0801de

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_0

    const v0, 0x7f06014f

    goto :goto_0

    :cond_0
    const v0, 0x7f060150

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v1
.end method

.method private getSystemUiController()Lcom/zui/launcher/util/SystemUiController;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->j:Lcom/zui/launcher/util/SystemUiController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/ScrimView;->j:Lcom/zui/launcher/util/SystemUiController;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->j:Lcom/zui/launcher/util/SystemUiController;

    return-object p0
.end method

.method private i(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->getDragHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleAlpha()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v3, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->g()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v0, v2, p0}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createAccessibilityHelper()Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;-><init>(Lcom/zui/launcher/views/ScrimView;)V

    return-object v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->h:Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->h:Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected drawDragHandle(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method public getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->g:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/MultiValueAlpha;->getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    return-object p0
.end method

.method public getDragHandleSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleSize:I

    return p0
.end method

.method public synthetic h(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullyOpaque()Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/views/ScrimView;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->l:I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ScrimView;->f(Lcom/zui/launcher/LauncherState;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ScrimView;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->c:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->addOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->c:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/ScrimView;->onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/ScrimView;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->c:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->removeOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mCurrentFlatColor:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/ScrimView;->drawDragHandle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getMainColor()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->mScrimColor:I

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndScrim:I

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mMaxScrimAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColorAlpha:I

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateColors()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->h:Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleBounds()V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ScrimView;->f(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleOffset:F

    float-to-int v2, v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    neg-int v4, v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v4, Landroid/graphics/Rect;->top:I

    const v6, 0x3f19999a    # 0.6f

    invoke-static {v6, v2}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    sget-object v6, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v1}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v6

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    invoke-static {v8, v1}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x1

    aput-object v2, v7, v1

    aput-object v6, v7, v5

    const-string v2, "bounds"

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-instance v5, Landroid/animation/RectEvaluator;

    invoke-direct {v5}, Landroid/animation/RectEvaluator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/views/ScrimView$b;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/views/ScrimView$b;-><init>(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/zui/launcher/views/p;

    invoke-direct {v2, p0, v4}, Lcom/zui/launcher/views/p;-><init>(Lcom/zui/launcher/views/ScrimView;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iput-boolean p1, p0, Lcom/zui/launcher/views/ScrimView;->k:Z

    return-void
.end method

.method public reInitUi()V
    .locals 0

    return-void
.end method

.method public resetDragHandleDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->getDragHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleAlpha()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->l:I

    invoke-direct {p0}, Lcom/zui/launcher/views/ScrimView;->j()V

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDragHandleAlpha(I)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->i:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->i:I

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleBounds()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/ScrimView;->i(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateColors()V

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->updateDragHandleAlpha()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected updateColors()V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColor:I

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mEndFlatColorAlpha:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/views/ScrimView;->mCurrentFlatColor:I

    return-void
.end method

.method protected updateDragHandleAlpha()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/views/ScrimView;->i:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected updateDragHandleBounds()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleSize:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->getInsetsWithMarginH()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v5

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v5, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    sub-int/2addr v1, v5

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    sub-int/2addr v1, v5

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-boolean v3, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_2

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    iget v3, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    :goto_0
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleSize:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandleWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zui/launcher/views/ScrimView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method
