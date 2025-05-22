.class public Lcom/zui/quickstep/views/FloatingWidgetView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/zui/launcher/views/FloatingView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1f
.end annotation


# static fields
.field private static final n:Landroid/graphics/Matrix;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/views/ListenerView;

.field private final c:Lcom/zui/quickstep/views/l2;

.field private final d:Landroid/graphics/RectF;

.field private e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

.field private f:Landroid/view/View;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/view/GhostView;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Z

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/views/FloatingWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->d:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->a:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/views/ListenerView;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/views/ListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->b:Lcom/zui/launcher/views/ListenerView;

    new-instance v0, Lcom/zui/quickstep/views/l2;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/quickstep/views/l2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->b:Lcom/zui/launcher/views/ListenerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/l2;->b()V

    iget-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->endDeferringUpdates()V

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->g()V

    iget-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object p1

    const v0, 0x7f0d00b9

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ViewCache;->recycleView(ILandroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v7, 0x0

    const/4 v1, 0x0

    aput v1, v0, v7

    const/4 v8, 0x1

    aput v1, v0, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v9, 0x2

    aput v1, v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v10, 0x3

    aput v1, v0, v10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ[F)F

    aget p0, v0, v7

    aget p1, v0, v9

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    aget p1, v0, v8

    aget v1, v0, v10

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aget v1, v0, v7

    aget v2, v0, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aget v2, v0, v8

    aget v0, v0, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private c(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V
    .locals 0

    iput-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->beginDeferringUpdates()V

    iput-object p3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    iput-boolean p6, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->l:Z

    new-instance p2, Lcom/zui/quickstep/views/f;

    invoke-direct {p2, p0, p1}, Lcom/zui/quickstep/views/f;-><init>(Lcom/zui/quickstep/views/FloatingWidgetView;Lcom/zui/launcher/dragndrop/DragLayer;)V

    iput-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-static {p2}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->findBackground(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iput-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    :cond_0
    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    iget-object p3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    invoke-static {p2, p1, p3}, Lcom/zui/quickstep/views/FloatingWidgetView;->b(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    iget-object p3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object p6, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->d:Landroid/graphics/RectF;

    invoke-static {p2, p3, p6}, Lcom/zui/quickstep/views/FloatingWidgetView;->b(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    iget-boolean p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->l:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    iget-object p3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object p6, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    invoke-virtual {p2, p3, p6, p5, p7}, Lcom/zui/quickstep/views/l2;->f(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/view/View;FI)V

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p4, p2, p3}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-static {p2, p0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->h:Landroid/view/GhostView;

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->f()V

    :cond_1
    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->b:Lcom/zui/launcher/views/ListenerView;

    new-instance p3, Lcom/zui/quickstep/views/i2;

    invoke-direct {p3, p0}, Lcom/zui/quickstep/views/i2;-><init>(Lcom/zui/quickstep/views/FloatingWidgetView;)V

    invoke-virtual {p2, p3}, Lcom/zui/launcher/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->b:Lcom/zui/launcher/views/ListenerView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->h:Landroid/view/GhostView;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    iget-object v2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    iget-object v2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->m:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->h:Landroid/view/GhostView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget-object v1, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget-object v3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sget-object v1, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object v0, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->m:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->h:Landroid/view/GhostView;

    sget-object v0, Lcom/zui/quickstep/views/FloatingWidgetView;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->m:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->j:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->k:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->b:Lcom/zui/launcher/views/ListenerView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/views/ListenerView;->setListener(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->h:Landroid/view/GhostView;

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/l2;->j()V

    return-void
.end method

.method public static getDefaultBackgroundColor(Landroid/content/Context;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/util/Themes;->getColorBackground(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFloatingWidgetView(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/zui/quickstep/views/FloatingWidgetView;
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getViewCache()Lcom/zui/launcher/util/ViewCache;

    move-result-object v0

    const v2, 0x7f0d00b9

    invoke-virtual {v0, v2, p0, v8}, Lcom/zui/launcher/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/FloatingWidgetView;

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->g()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/zui/quickstep/views/FloatingWidgetView;->c(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/graphics/RectF;Landroid/util/Size;FZI)V

    invoke-virtual {v8, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method


# virtual methods
.method public synthetic e(Lcom/zui/launcher/dragndrop/DragLayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/views/FloatingWidgetView;->a(Lcom/zui/launcher/dragndrop/DragLayer;)V

    return-void
.end method

.method public fastFinish()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public getInitialCornerRadius()F
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {p0}, Lcom/zui/quickstep/views/l2;->d()F

    move-result p0

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->i:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->f()V

    iget-object p0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->k:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public setFastFinishRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnTargetChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public setPositionOffsetY(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->m:F

    invoke-virtual {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->onGlobalLayout()V

    return-void
.end method

.method public update(Landroid/graphics/RectF;FFFF)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->c:Lcom/zui/quickstep/views/l2;

    invoke-virtual {p2, p5, p4}, Lcom/zui/quickstep/views/l2;->k(FF)V

    iget-object p2, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->e:Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAlpha(F)V

    iput-object p1, p0, Lcom/zui/quickstep/views/FloatingWidgetView;->g:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/zui/quickstep/views/FloatingWidgetView;->f()V

    :cond_1
    :goto_0
    return-void
.end method
