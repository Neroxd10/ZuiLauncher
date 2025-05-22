.class public Lcom/zui/launcher/views/FloatingIconView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/zui/launcher/views/ClipPathView;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/FloatingIconView$h;
    }
.end annotation


# static fields
.field private static final D:Ljava/lang/String;

.field private static E:Lcom/zui/launcher/views/FloatingIconView$h; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final F:Landroid/graphics/Rect;

.field private static final G:Landroid/graphics/RectF;

.field private static final H:[Ljava/lang/Object;

.field private static final I:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/launcher/views/FloatingIconView;",
            ">;"
        }
    .end annotation
.end field

.field private static final J:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/launcher/views/FloatingIconView;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHAPE_PROGRESS_DURATION:F = 0.1f


# instance fields
.field private final A:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private B:F

.field private C:Ljava/lang/Runnable;

.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/CancellationSignal;

.field private final c:I

.field private final d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/zui/launcher/views/FloatingIconView$h;

.field private i:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:F

.field private m:Landroid/animation/ValueAnimator;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private p:Landroid/graphics/Path;

.field private q:F

.field private r:Landroid/view/View;

.field private s:Landroid/graphics/RectF;

.field private t:Ljava/lang/Runnable;

.field private final u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/Rect;

.field private w:Landroid/animation/AnimatorSet;

.field private x:Lcom/zui/launcher/views/ListenerView;

.field private final y:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->G:Landroid/graphics/RectF;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->H:[Ljava/lang/Object;

    new-instance v0, Lcom/zui/launcher/views/FloatingIconView$a;

    const-string v1, "FloatingViewFgTransY"

    invoke-direct {v0, v1}, Lcom/zui/launcher/views/FloatingIconView$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->I:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/zui/launcher/views/FloatingIconView$b;

    const-string v1, "FloatingViewFgTransX"

    invoke-direct {v0, v1}, Lcom/zui/launcher/views/FloatingIconView$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/FloatingIconView;->J:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/FloatingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    iput-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->f:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->n:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->o:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070146

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/views/FloatingIconView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->d:Z

    new-instance p3, Lcom/zui/launcher/views/ListenerView;

    invoke-direct {p3, p1, p2}, Lcom/zui/launcher/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->x:Lcom/zui/launcher/views/ListenerView;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/zui/launcher/views/FloatingIconView;->J:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p1, p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p3, 0x3f400000    # 0.75f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->A:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lcom/zui/launcher/views/FloatingIconView;->I:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p1, p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static A(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    instance-of v1, p0, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p0, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setDrawableVisibility(I)V

    goto :goto_1

    :cond_1
    instance-of v1, p0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private B(FLandroid/graphics/RectF;Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;)V
    .locals 1

    iput p1, p0, Lcom/zui/launcher/views/FloatingIconView;->l:F

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->s:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    iput-boolean p1, p3, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iget p1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-boolean p1, p0, Lcom/zui/launcher/views/FloatingIconView;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-boolean p1, p0, Lcom/zui/launcher/views/FloatingIconView;->d:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_1
    iget p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget p2, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v0, p1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/FloatingIconView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/FloatingIconView;->z:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/views/FloatingIconView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/FloatingIconView;->z:F

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/views/FloatingIconView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/FloatingIconView;->B:F

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/views/FloatingIconView;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/views/FloatingIconView;->B:F

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/views/FloatingIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic f(Lcom/zui/launcher/views/FloatingIconView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static fetchIcon(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Lcom/zui/launcher/views/FloatingIconView$h;
    .locals 9
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v6, Lcom/zui/launcher/views/FloatingIconView$h;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/zui/launcher/views/FloatingIconView$h;-><init>(Lcom/zui/launcher/views/FloatingIconView$a;)V

    instance-of v0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v0}, Lcom/zui/launcher/ActiveIconView;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/zui/launcher/views/j;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/views/j;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLcom/zui/launcher/ItemInfo;Lcom/zui/launcher/views/FloatingIconView$h;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sput-object v6, Lcom/zui/launcher/views/FloatingIconView;->E:Lcom/zui/launcher/views/FloatingIconView$h;

    return-object v6
.end method

.method static synthetic g(Lcom/zui/launcher/views/FloatingIconView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/FloatingIconView;->q:F

    return p0
.end method

.method public static getFloatingIconView(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/zui/launcher/views/FloatingIconView;
    .locals 8

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object v1

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2, p0, v0}, Lcom/zui/launcher/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/zui/launcher/views/FloatingIconView;

    invoke-direct {v6}, Lcom/zui/launcher/views/FloatingIconView;->y()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/zui/launcher/views/FloatingIconView;->E:Lcom/zui/launcher/views/FloatingIconView$h;

    iput-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v6, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v7, v2, Lcom/zui/launcher/ItemInfo;

    if-eqz v7, :cond_1

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    iget v3, v3, Lcom/zui/launcher/views/FloatingIconView$h;->f:I

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->id:I

    if-eq v3, v2, :cond_1

    sget-object v2, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    const-string v3, "original view not match, retry fetch~"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, v6, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    invoke-static {p0, p1, v2, p4}, Lcom/zui/launcher/views/FloatingIconView;->fetchIcon(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Lcom/zui/launcher/views/FloatingIconView$h;

    move-result-object v2

    iput-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    :cond_2
    sput-object v4, Lcom/zui/launcher/views/FloatingIconView;->E:Lcom/zui/launcher/views/FloatingIconView$h;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, v6, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    iput-boolean p4, v6, Lcom/zui/launcher/views/FloatingIconView;->g:Z

    iput-object p1, v6, Lcom/zui/launcher/views/FloatingIconView;->r:Landroid/view/View;

    iput-object p3, v6, Lcom/zui/launcher/views/FloatingIconView;->s:Landroid/graphics/RectF;

    invoke-direct {v6, p0, p1, p4, p3}, Lcom/zui/launcher/views/FloatingIconView;->x(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V

    if-eqz v1, :cond_3

    invoke-direct {v6, p1, p4}, Lcom/zui/launcher/views/FloatingIconView;->j(Landroid/view/View;Z)V

    :cond_3
    const/4 p0, 0x4

    invoke-virtual {v6, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Lcom/zui/launcher/views/m;

    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/views/m;-><init>(Lcom/zui/launcher/views/FloatingIconView;ZZLandroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V

    iput-object p0, v6, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    return-object v6
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->l(Lcom/zui/launcher/dragndrop/DragLayer;)V

    return-void
.end method

.method private j(Landroid/view/View;Z)V
    .locals 6

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    const/4 v1, 0x0

    if-nez p2, :cond_1

    invoke-static {p1, v1}, Lcom/zui/launcher/views/FloatingIconView;->A(Landroid/view/View;Z)V

    instance-of v2, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    :cond_0
    sget-object v2, Lcom/zui/launcher/views/o;->a:Lcom/zui/launcher/views/o;

    invoke-virtual {v0, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    if-nez v2, :cond_2

    sget-object p0, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    const-string p1, "No icon load result found in checkIconResult"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iget-boolean v3, v3, Lcom/zui/launcher/views/FloatingIconView$h;->e:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iget-object v3, v3, Lcom/zui/launcher/views/FloatingIconView$h;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iget-object v4, v4, Lcom/zui/launcher/views/FloatingIconView$h;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iget v5, v5, Lcom/zui/launcher/views/FloatingIconView$h;->c:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/zui/launcher/views/FloatingIconView;->z(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    if-eqz p2, :cond_4

    invoke-static {p1, v1}, Lcom/zui/launcher/views/FloatingIconView;->A(Landroid/view/View;Z)V

    instance-of p2, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    new-instance v1, Lcom/zui/launcher/views/l;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/launcher/views/l;-><init>(Lcom/zui/launcher/views/FloatingIconView;Landroid/os/CancellationSignal;Landroid/view/View;)V

    iput-object v1, p2, Lcom/zui/launcher/views/FloatingIconView$h;->d:Ljava/lang/Runnable;

    :cond_4
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private k(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/zui/launcher/views/FloatingIconView$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/views/FloatingIconView$e;-><init>(Lcom/zui/launcher/views/FloatingIconView;Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/zui/launcher/views/FloatingIconView;->r:Landroid/view/View;

    instance-of v4, v4, Lcom/zui/launcher/folder/FolderIcon;

    if-nez v4, :cond_0

    sget-object v4, Lcom/zui/launcher/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v4, Lcom/zui/launcher/views/k;

    invoke-direct {v4, p0}, Lcom/zui/launcher/views/k;-><init>(Lcom/zui/launcher/views/FloatingIconView;)V

    invoke-virtual {p2, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    instance-of p2, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p2, v3}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    new-instance v4, Lcom/zui/launcher/views/FloatingIconView$f;

    invoke-direct {v4, p0, p2, p1}, Lcom/zui/launcher/views/FloatingIconView$f;-><init>(Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/WorkspaceIconCompat;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    instance-of p2, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, v3}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    invoke-virtual {p2, v3}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    sget-object v4, Lcom/zui/launcher/folder/FolderIcon;->DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-static {p2, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/views/h;

    invoke-direct {v2, p2}, Lcom/zui/launcher/views/h;-><init>(Lcom/zui/launcher/folder/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/zui/launcher/views/FloatingIconView$g;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/views/FloatingIconView$g;-><init>(Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/folder/FolderIcon;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-object v0
.end method

.method private l(Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->x:Lcom/zui/launcher/views/ListenerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/views/FloatingIconView;->y()V

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragLayer;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0d00b8

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ViewCache;->recycleView(ILandroid/view/View;)V

    return-void
.end method

.method private static m(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Landroid/graphics/RectF;Lcom/zui/launcher/views/FloatingIconView$h;)V
    .locals 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    instance-of v10, v7, Lcom/zui/launcher/folder/FolderIcon;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    move-object v1, v7

    check-cast v1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/zui/launcher/folder/FolderIcon;->getForceHideDotFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    move v13, v11

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    if-eqz v10, :cond_1

    sget-object v1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v2, Lcom/zui/launcher/views/i;

    invoke-direct {v2, v7}, Lcom/zui/launcher/views/i;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->ADAPTIVE_ICON_WINDOW_ANIM:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    instance-of v2, v7, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v14, 0x0

    if-eqz v2, :cond_3

    move-object v2, v7

    check-cast v2, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v2}, Lcom/zui/launcher/WorkspaceIconCompat;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v15, v2

    goto :goto_2

    :cond_3
    move-object v15, v14

    :goto_2
    instance-of v2, v8, Lcom/zui/launcher/popup/SystemShortcut;

    if-eqz v2, :cond_7

    instance-of v1, v7, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move-object v1, v7

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    :cond_4
    :goto_3
    move-object v2, v14

    goto :goto_6

    :cond_5
    instance-of v1, v7, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_6

    move-object v1, v7

    check-cast v1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_4

    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    :goto_4
    move v3, v2

    if-eqz v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_5

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    :goto_5
    move v4, v2

    if-eqz v1, :cond_a

    const/4 v5, 0x0

    sget-object v6, Lcom/zui/launcher/views/FloatingIconView;->H:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->getFullDrawable(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/zui/launcher/views/FloatingIconView;->H:[Ljava/lang/Object;

    aget-object v2, v2, v12

    invoke-static {v0, v8, v2}, Lcom/zui/launcher/Utilities;->getBadge(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v15, v1

    goto :goto_6

    :cond_a
    instance-of v1, v7, Lcom/zui/launcher/BubbleTextView;

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    sget-object v6, Lcom/zui/launcher/views/FloatingIconView;->H:[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->getFullDrawable(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;IIZ[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_3

    :goto_6
    if-nez v15, :cond_c

    move-object/from16 v3, p3

    move-object v1, v14

    goto :goto_7

    :cond_c
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v3, p3

    :goto_7
    invoke-static {v0, v1, v3}, Lcom/zui/launcher/views/FloatingIconView;->o(Lcom/zui/launcher/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I

    move-result v3

    monitor-enter p4

    :try_start_0
    iput-object v1, v9, Lcom/zui/launcher/views/FloatingIconView$h;->a:Landroid/graphics/drawable/Drawable;

    iput-object v2, v9, Lcom/zui/launcher/views/FloatingIconView$h;->b:Landroid/graphics/drawable/Drawable;

    iput v3, v9, Lcom/zui/launcher/views/FloatingIconView$h;->c:I

    iget-object v1, v9, Lcom/zui/launcher/views/FloatingIconView$h;->d:Ljava/lang/Runnable;

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, v9, Lcom/zui/launcher/views/FloatingIconView$h;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v14, v9, Lcom/zui/launcher/views/FloatingIconView$h;->d:Ljava/lang/Runnable;

    :cond_d
    iput-boolean v11, v9, Lcom/zui/launcher/views/FloatingIconView$h;->e:Z

    iget v0, v8, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, v9, Lcom/zui/launcher/views/FloatingIconView$h;->f:I

    if-eqz v10, :cond_e

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/views/n;

    invoke-direct {v1, v7, v13}, Lcom/zui/launcher/views/n;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    monitor-exit p4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static n(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)F
    .locals 11

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    instance-of v1, p1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getBubbleText()Lcom/zui/launcher/BubbleTextView;

    move-result-object p1

    :goto_0
    move-object v3, p1

    move v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v3, p1

    move v7, p2

    :goto_1
    const/4 p1, 0x0

    if-nez v3, :cond_2

    return p1

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    instance-of v1, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_3

    move-object v1, v3

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1, p2}, Lcom/zui/launcher/WorkspaceIconCompat;->getIconBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    instance-of v1, v3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v1, :cond_4

    move-object v1, v3

    check-cast v1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v2, v2, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    const/4 v1, 0x4

    new-array v1, v1, [F

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aput v4, v1, v2

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    aput v4, v1, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const/4 v9, 0x2

    aput v4, v1, v9

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    const/4 v10, 0x3

    aput p2, v1, v10

    new-array p2, v0, [F

    aput p1, p2, v2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v5, v1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/zui/launcher/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ[F)F

    aget p0, v1, v2

    aget p1, v1, v9

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget p1, v1, v0

    aget v3, v1, v10

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aget v3, v1, v2

    aget v4, v1, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aget v0, v1, v0

    aget v1, v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p3, p0, p1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    aget p0, p2, v2

    return p0
.end method

.method private static o(Lcom/zui/launcher/Launcher;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)I
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070146

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v1, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {p0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/icons/BaseIconFactory;->getNormalizer()Lcom/zui/launcher/icons/IconNormalizer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, v0}, Lcom/zui/launcher/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p0, v2, Landroid/graphics/Rect;->left:I

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic p()V
    .locals 0

    return-void
.end method

.method static synthetic s(Lcom/zui/launcher/folder/FolderIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setBackgroundDrawableBounds(F)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-boolean v0, p0, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->k:Landroid/graphics/drawable/Drawable;

    sget-object p1, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic t(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLcom/zui/launcher/ItemInfo;Lcom/zui/launcher/views/FloatingIconView$h;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/zui/launcher/views/FloatingIconView;->n(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)F

    invoke-static {p0, p1, p3, v0, p4}, Lcom/zui/launcher/views/FloatingIconView;->m(Lcom/zui/launcher/Launcher;Landroid/view/View;Lcom/zui/launcher/ItemInfo;Landroid/graphics/RectF;Lcom/zui/launcher/views/FloatingIconView$h;)V

    return-void
.end method

.method static synthetic u(Lcom/zui/launcher/views/FloatingIconView;ZZLandroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p3, p1}, Lcom/zui/launcher/views/FloatingIconView;->A(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/zui/launcher/views/FloatingIconView;->k(Landroid/view/View;Lcom/zui/launcher/dragndrop/DragLayer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p4}, Lcom/zui/launcher/views/FloatingIconView;->l(Lcom/zui/launcher/dragndrop/DragLayer;)V

    :goto_1
    return-void
.end method

.method static synthetic v(Landroid/view/View;)V
    .locals 1

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    return-void
.end method

.method static synthetic w(Landroid/view/View;Z)V
    .locals 0

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    return-void
.end method

.method private x(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/zui/launcher/views/FloatingIconView;->n(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)F

    move-result p1

    new-instance p2, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, p4, p2}, Lcom/zui/launcher/views/FloatingIconView;->B(FLandroid/graphics/RectF;Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private y()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/launcher/views/FloatingIconView;->f:Z

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->k:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->p:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->s:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->x:Lcom/zui/launcher/views/ListenerView;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->r:Landroid/view/View;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->t:Ljava/lang/Runnable;

    iput v0, p0, Lcom/zui/launcher/views/FloatingIconView;->q:F

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iput v0, p0, Lcom/zui/launcher/views/FloatingIconView;->z:F

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->A:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iput v0, p0, Lcom/zui/launcher/views/FloatingIconView;->B:F

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->H:[Ljava/lang/Object;

    aput-object v1, v0, v2

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->C:Ljava/lang/Runnable;

    return-void
.end method

.method private z(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->f:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    instance-of p3, p2, Lcom/zui/launcher/dragndrop/FolderAdaptiveIcon;

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_1
    iput-object p2, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/zui/launcher/views/FloatingIconView;->c:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p3, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    sub-int/2addr p4, v3

    invoke-virtual {v4, p4, p4}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->k:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->n:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->n:Landroid/graphics/Rect;

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean p4, p0, Lcom/zui/launcher/views/FloatingIconView;->g:Z

    if-nez p4, :cond_3

    if-nez p3, :cond_3

    sget-object p4, Lcom/zui/launcher/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz p3, :cond_5

    move-object p3, p1

    check-cast p3, Lcom/zui/launcher/folder/FolderIcon;

    sget-object p4, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    invoke-virtual {p3, p4}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getBackgroundStrokeWidth()F

    move-result p3

    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    instance-of v3, p4, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    if-eqz v3, :cond_4

    check-cast p4, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    invoke-virtual {p4}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->getShiftX()F

    move-result v3

    sget-object v4, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p4, v3}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->setShiftX(F)V

    invoke-virtual {p4}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->getShiftY()F

    move-result v3

    sget-object v4, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p4, v3}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->setShiftY(F)V

    :cond_4
    iget-object p4, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    instance-of v3, p4, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    if-eqz v3, :cond_6

    check-cast p4, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;

    invoke-virtual {p4}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->getShiftX()F

    move-result v3

    sget-object v4, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p4, v3}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->setShiftX(F)V

    invoke-virtual {p4}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->getShiftY()F

    move-result v3

    sget-object v4, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p4, v3}, Lcom/zui/launcher/graphics/ShiftedBitmapDrawable;->setShiftY(F)V

    goto :goto_0

    :cond_5
    iget-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->n:Landroid/graphics/Rect;

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getNormalizationScale()F

    move-result p4

    invoke-static {p3, p4}, Lcom/zui/launcher/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget p3, p3, Lcom/zui/launcher/DeviceProfile;->aspectRatio:F

    iget-boolean p4, p0, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    if-eqz p4, :cond_7

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p4, p4

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    invoke-static {p4, v3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_7
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p4, p4

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p3

    invoke-static {p4, v3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iget-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->d:Z

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p3

    sub-int/2addr p1, p3

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p3

    goto :goto_2

    :cond_8
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_2
    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr p4, p1

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p3, p4, v3}, Landroid/view/View;->layout(IIII)V

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p1, p1

    int-to-float p3, v1

    div-float/2addr p1, p3

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    int-to-float p4, v2

    div-float/2addr p3, p4

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-boolean p3, p0, Lcom/zui/launcher/views/FloatingIconView;->g:Z

    if-eqz p3, :cond_9

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual {p3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :cond_9
    iget-object p3, p0, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p3, v0, v0, p4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/zui/launcher/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->o:Landroid/graphics/Rect;

    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Lcom/zui/launcher/views/FloatingIconView$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/views/FloatingIconView$d;-><init>(Lcom/zui/launcher/views/FloatingIconView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/FloatingIconView;->l:F

    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->p:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/views/FloatingIconView;->B:F

    iget v3, p0, Lcom/zui/launcher/views/FloatingIconView;->z:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public fastFinish()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->C:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->C:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    :cond_3
    return-void
.end method

.method public isDifferentFromAppIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/zui/launcher/views/FloatingIconView$h;->g:Z

    :goto_0
    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->b:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/zui/launcher/views/FloatingIconView$h;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/zui/launcher/views/FloatingIconView;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->s:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->r:Landroid/view/View;

    iget-boolean v2, p0, Lcom/zui/launcher/views/FloatingIconView;->g:Z

    sget-object v3, Lcom/zui/launcher/views/FloatingIconView;->G:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/views/FloatingIconView;->n(Lcom/zui/launcher/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/views/FloatingIconView;->l:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/zui/launcher/views/FloatingIconView;->G:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/launcher/views/FloatingIconView;->s:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/zui/launcher/views/FloatingIconView;->G:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/launcher/views/FloatingIconView;->B(FLandroid/graphics/RectF;Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;)V

    iget-object p0, p0, Lcom/zui/launcher/views/FloatingIconView;->t:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onListenerViewClosed()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->a:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iput-object v1, p0, Lcom/zui/launcher/views/FloatingIconView;->w:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method public synthetic q(Landroid/os/CancellationSignal;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->h:Lcom/zui/launcher/views/FloatingIconView$h;

    iget-boolean v0, p1, Lcom/zui/launcher/views/FloatingIconView$h;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/views/FloatingIconView$h;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/zui/launcher/views/FloatingIconView$h;->b:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/zui/launcher/views/FloatingIconView$h;->c:I

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/zui/launcher/views/FloatingIconView;->z(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2, p1}, Lcom/zui/launcher/views/FloatingIconView;->A(Landroid/view/View;Z)V

    instance-of p0, p2, Lcom/zui/launcher/BubbleTextView;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    :cond_2
    return-void
.end method

.method public synthetic r(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->p:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->C:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/FloatingIconView;->t:Ljava/lang/Runnable;

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFFZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p2

    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/InsettableFrameLayout$LayoutParams;

    iget-boolean v4, v6, Lcom/zui/launcher/views/FloatingIconView;->d:Z

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v5

    :goto_0
    int-to-float v5, v5

    sub-float/2addr v4, v5

    move v13, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v5, v5

    sub-float v14, v4, v5

    invoke-virtual {v6, v13}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6, v14}, Landroid/view/View;->setTranslationY(F)V

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v15, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v15

    const v7, 0x4059999a    # 3.4f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const/4 v11, 0x0

    if-nez v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    cmpg-float v8, v15, v11

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    move v3, v7

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v8, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error case, lp :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error case, rect :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/zui/launcher/views/FloatingIconView;->D:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error case, scaleX :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", scaleY:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", scale:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v12

    :goto_2
    invoke-virtual {v6, v11}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz p6, :cond_3

    const/high16 v4, 0x41200000    # 10.0f

    goto :goto_3

    :cond_3
    move v4, v12

    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v8, p4

    move v11, v4

    move v4, v12

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/zui/launcher/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v4}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v7

    iget-boolean v4, v6, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    if-eqz v4, :cond_4

    iget-object v4, v6, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_4
    iget-object v4, v6, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :goto_4
    div-float v0, p5, v3

    iput v0, v6, Lcom/zui/launcher/views/FloatingIconView;->q:F

    iget-boolean v0, v6, Lcom/zui/launcher/views/FloatingIconView;->f:Z

    if-eqz v0, :cond_b

    if-nez p6, :cond_6

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_6

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v0

    iget-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->n:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    iget v4, v6, Lcom/zui/launcher/views/FloatingIconView;->q:F

    xor-int/lit8 v5, p6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/views/FloatingIconView$c;

    invoke-direct {v1, v6}, Lcom/zui/launcher/views/FloatingIconView$c;-><init>(Lcom/zui/launcher/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_5
    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    :cond_6
    iget-boolean v0, v6, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_5
    int-to-float v0, v0

    div-float/2addr v0, v15

    invoke-direct {v6, v0}, Lcom/zui/launcher/views/FloatingIconView;->setBackgroundDrawableBounds(F)V

    if-eqz p6, :cond_a

    iget-object v1, v6, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-boolean v3, v6, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_8

    move v1, v4

    goto :goto_6

    :cond_8
    int-to-float v1, v1

    mul-float v3, v1, v0

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    float-to-int v1, v3

    :goto_6
    iget-boolean v3, v6, Lcom/zui/launcher/views/FloatingIconView;->e:Z

    if-eqz v3, :cond_9

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    float-to-int v4, v0

    :cond_9
    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->v:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->j:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/zui/launcher/views/FloatingIconView;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    int-to-float v0, v0

    div-float/2addr v13, v0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v13, v0

    float-to-int v0, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    int-to-float v1, v1

    div-float/2addr v14, v1

    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v14, v1

    float-to-int v1, v14

    iget-object v2, v6, Lcom/zui/launcher/views/FloatingIconView;->A:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, v6, Lcom/zui/launcher/views/FloatingIconView;->y:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_b
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method
