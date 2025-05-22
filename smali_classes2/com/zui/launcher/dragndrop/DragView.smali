.class public Lcom/zui/launcher/dragndrop/DragView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/dragndrop/DragView$h;
    }
.end annotation


# static fields
.field public static final COLOR_CHANGE_DURATION:I = 0x78

.field private static final L:Landroid/graphics/ColorMatrix;

.field private static final M:Landroid/graphics/ColorMatrix;

.field private static N:F = 0.0f

.field public static final VIEW_ZOOM_DURATION:I = 0x96


# instance fields
.field private A:I

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Lcom/zui/launcher/dragndrop/DragView$h;

.field private E:Lcom/zui/launcher/dragndrop/DragView$h;

.field private F:Landroid/graphics/Path;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/ColorMatrixColorFilter;

.field private I:F

.field private J:F

.field private K:Landroid/view/View;

.field private a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Paint;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:F

.field private final i:F

.field private final j:[I

.field private k:Landroid/graphics/Point;

.field private l:Landroid/graphics/Rect;

.field private final m:Lcom/zui/launcher/Launcher;

.field private final n:Lcom/zui/launcher/dragndrop/DragLayer;

.field final o:Lcom/zui/launcher/dragndrop/DragController;

.field final p:Lcom/zui/launcher/FirstFrameAnimatorHelper;

.field private q:Z

.field r:F

.field private s:Z

.field t:Landroid/animation/ValueAnimator;

.field private u:F

.field v:[F

.field private w:Landroid/animation/ValueAnimator;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/zui/launcher/dragndrop/DragView;->L:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/zui/launcher/dragndrop/DragView;->M:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/zui/launcher/dragndrop/DragView;->N:F

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIFFF)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragView;->a:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->j:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->k:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragView;->q:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragView;->r:F

    iput-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragView;->s:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/zui/launcher/dragndrop/DragView;->u:F

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragView;->I:F

    iput v2, p0, Lcom/zui/launcher/dragndrop/DragView;->J:F

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->m:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->o:Lcom/zui/launcher/dragndrop/DragController;

    new-instance p1, Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-direct {p1, p0}, Lcom/zui/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->p:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    int-to-float p7, p7

    div-float/2addr p1, p7

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    new-array p7, v0, [F

    fill-array-data p7, :array_0

    invoke-static {p7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p7

    iput-object p7, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p7, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/zui/launcher/dragndrop/g;

    invoke-direct {v2, p0, p5, p1}, Lcom/zui/launcher/dragndrop/g;-><init>(Lcom/zui/launcher/dragndrop/DragView;FF)V

    invoke-virtual {p7, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance p7, Lcom/zui/launcher/dragndrop/DragView$a;

    invoke-direct {p7, p0}, Lcom/zui/launcher/dragndrop/DragView$a;-><init>(Lcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v1, v1, p7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    iput p3, p0, Lcom/zui/launcher/dragndrop/DragView;->f:I

    iput p4, p0, Lcom/zui/launcher/dragndrop/DragView;->g:I

    iput p5, p0, Lcom/zui/launcher/dragndrop/DragView;->h:F

    iput p6, p0, Lcom/zui/launcher/dragndrop/DragView;->i:F

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070146

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/graphics/Bitmap;IIIIIIFFF)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v4, p9

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/zui/launcher/dragndrop/DragView;->a:Z

    const/4 v9, 0x2

    new-array v0, v9, [I

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->j:[I

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->k:Landroid/graphics/Point;

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/zui/launcher/dragndrop/DragView;->q:Z

    const/4 v0, 0x0

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->r:F

    iput-boolean v10, v6, Lcom/zui/launcher/dragndrop/DragView;->s:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v6, Lcom/zui/launcher/dragndrop/DragView;->u:F

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->I:F

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->J:F

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    iput-object v1, v6, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v1

    iput-object v1, v6, Lcom/zui/launcher/dragndrop/DragView;->o:Lcom/zui/launcher/dragndrop/DragController;

    iput v4, v6, Lcom/zui/launcher/dragndrop/DragView;->h:F

    move/from16 v1, p10

    iput v1, v6, Lcom/zui/launcher/dragndrop/DragView;->i:F

    move-object v1, p1

    iput-object v1, v6, Lcom/zui/launcher/dragndrop/DragView;->m:Lcom/zui/launcher/Launcher;

    new-instance v2, Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-direct {v2, p0}, Lcom/zui/launcher/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v6, Lcom/zui/launcher/dragndrop/DragView;->p:Lcom/zui/launcher/FirstFrameAnimatorHelper;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x7f0702b9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    const v11, 0x7f0702ba

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    int-to-float v1, v7

    add-float/2addr v0, v1

    div-float v11, v0, v1

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    new-array v0, v9, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v12, v6, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/zui/launcher/dragndrop/DragView$f;

    move-object v0, v13

    move-object v1, p0

    move v2, v3

    move v3, v5

    move/from16 v4, p9

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/dragndrop/DragView$f;-><init>(Lcom/zui/launcher/dragndrop/DragView;FFFF)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    move/from16 v0, p3

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->f:I

    move/from16 v0, p4

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->g:I

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/zui/launcher/dragndrop/DragView;->e:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private C()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->B:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->H:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->C:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->H:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->G:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->H:Landroid/graphics/ColorMatrixColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->H:Landroid/graphics/ColorMatrixColorFilter;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/zui/launcher/dragndrop/DragView;->L:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->getColorMatrix(Landroid/graphics/ColorMatrix;)V

    sget-object v0, Lcom/zui/launcher/dragndrop/DragView;->M:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    sget-object v0, Lcom/zui/launcher/dragndrop/DragView;->L:Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/zui/launcher/dragndrop/DragView;->M:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v0, Lcom/zui/launcher/dragndrop/DragView;->L:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->G:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/dragndrop/DragView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragView;->s:Z

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/ColorMatrixColorFilter;)Landroid/graphics/ColorMatrixColorFilter;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->H:Landroid/graphics/ColorMatrixColorFilter;

    return-object p1
.end method

.method static synthetic d(Lcom/zui/launcher/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragView;->C()V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->z:I

    return p1
.end method

.method static synthetic f(Lcom/zui/launcher/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->A:I

    return p1
.end method

.method static synthetic g(Lcom/zui/launcher/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragView;->z()V

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/dragndrop/DragView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView;->I:F

    return p0
.end method

.method static synthetic i(Lcom/zui/launcher/dragndrop/DragView;F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->I:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragView;->I:F

    return v0
.end method

.method static synthetic j(Lcom/zui/launcher/dragndrop/DragView;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView;->J:F

    return p0
.end method

.method static synthetic k(Lcom/zui/launcher/dragndrop/DragView;F)F
    .locals 1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->J:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragView;->J:F

    return v0
.end method

.method static synthetic l()F
    .locals 1

    sget v0, Lcom/zui/launcher/dragndrop/DragView;->N:F

    return v0
.end method

.method static synthetic m(Lcom/zui/launcher/dragndrop/DragView;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->m:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic n(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->G:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic o(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->G:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic p(Lcom/zui/launcher/dragndrop/DragView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragView;->a:Z

    return p0
.end method

.method static synthetic q(Lcom/zui/launcher/dragndrop/DragView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/dragndrop/DragView;->a:Z

    return p1
.end method

.method static synthetic r(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragView$h;)Lcom/zui/launcher/dragndrop/DragView$h;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->D:Lcom/zui/launcher/dragndrop/DragView$h;

    return-object p1
.end method

.method static synthetic s(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragView$h;)Lcom/zui/launcher/dragndrop/DragView$h;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->E:Lcom/zui/launcher/dragndrop/DragView$h;

    return-object p1
.end method

.method static synthetic t(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->B:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic u(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->B:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic v(Lcom/zui/launcher/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->C:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic w(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->C:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic x(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    return-object p1
.end method

.method private y([F)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->w:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/zui/launcher/dragndrop/DragView$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/dragndrop/DragView$c;-><init>(Lcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private z()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->x:I

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->z:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->y:I

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->A:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->r:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public synthetic B(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p2, p1

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public animateShift(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->z:I

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragView;->A:I

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragView;->z()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zui/launcher/dragndrop/DragView$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragView$e;-><init>(Lcom/zui/launcher/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 9

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView;->j:[I

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->f:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, v2, v0

    iget p1, p0, Lcom/zui/launcher/dragndrop/DragView;->g:I

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, v2, p1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragView;->i:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v5

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragView;->s:Z

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->t:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public crossFade(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/zui/launcher/dragndrop/f;

    invoke-direct {p1, p0}, Lcom/zui/launcher/dragndrop/f;-><init>(Lcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBlurSizeOutline()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView;->e:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->K:Landroid/view/View;

    return-object p0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDragRegionHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDragRegionLeft()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getDragRegionTop()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getDragRegionWidth()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->k:Landroid/graphics/Point;

    return-object p0
.end method

.method public getInitialScale()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView;->h:F

    return p0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragView;->u:F

    return p0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public hasDrawn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/dragndrop/DragView;->q:Z

    return p0
.end method

.method public move(II)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->x:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->y:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->D:Lcom/zui/launcher/dragndrop/DragView$h;

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/zui/launcher/dragndrop/DragView$h;->d(F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->E:Lcom/zui/launcher/dragndrop/DragView$h;

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->y:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragView$h;->d(F)V

    :cond_0
    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->x:I

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragView;->y:I

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragView;->z()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->m:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->m:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragView;->q:Z

    iget-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragView;->a:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragView;->r:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragView;->r:F

    sub-float v4, v3, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xff

    :goto_1
    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragView;->r:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->F:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->D:Lcom/zui/launcher/dragndrop/DragView$h;

    invoke-static {v1}, Lcom/zui/launcher/dragndrop/DragView$h;->a(Lcom/zui/launcher/dragndrop/DragView$h;)F

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragView;->E:Lcom/zui/launcher/dragndrop/DragView$h;

    invoke-static {v2}, Lcom/zui/launcher/dragndrop/DragView$h;->a(Lcom/zui/launcher/dragndrop/DragView$h;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public remove()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragView;->z:I

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragView;->A:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->d:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {p1, v1}, Lcom/zui/launcher/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragView;->y([F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->v:[F

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragView;->C()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragView;->y([F)V

    :goto_0
    return-void
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->l:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragView;->k:Landroid/graphics/Point;

    return-void
.end method

.method public setIntrinsicIconScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragView;->u:F

    return-void
.end method

.method public setItemInfo(Lcom/zui/launcher/ItemInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/zui/launcher/util/Executors;->MODEL_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/dragndrop/DragView$b;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/dragndrop/DragView$b;-><init>(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public show(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragView;->move(II)V

    new-instance p1, Lcom/zui/launcher/dragndrop/DragView$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/dragndrop/DragView$d;-><init>(Lcom/zui/launcher/dragndrop/DragView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showWidthAnim(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragView;->n:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->f:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragView;->g:I

    sub-int/2addr p2, v0

    sub-int v3, p1, p3

    sub-int v5, p2, p4

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    const p2, 0x3f666666    # 0.9f

    sput p2, Lcom/zui/launcher/dragndrop/DragView;->N:F

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragView;->setAlpha(F)V

    new-instance p1, Lcom/zui/launcher/dragndrop/DragView$g;

    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/dragndrop/DragView$g;-><init>(Lcom/zui/launcher/dragndrop/DragView;IIII)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
