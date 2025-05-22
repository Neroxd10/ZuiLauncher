.class public Lcom/zui/launcher/folder/PreviewBackground;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final E:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/animation/ValueAnimator;

.field private B:Landroid/animation/ObjectAnimator;

.field private C:Landroid/animation/ObjectAnimator;

.field private D:Landroid/animation/ObjectAnimator;

.field private final a:Landroid/graphics/PorterDuffXfermode;

.field private b:Landroid/graphics/RadialGradient;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Path;

.field public delegateCellX:I

.field public delegateCellY:I

.field private final e:Landroid/graphics/Paint;

.field f:F

.field private g:F

.field private h:I

.field private i:I

.field public isClipping:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/view/View;

.field u:I

.field v:I

.field w:I

.field private x:Lcom/zui/launcher/CellLayout;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$a;

    const-string v2, "strokeAlpha"

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/PreviewBackground$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/folder/PreviewBackground;->E:Landroid/util/Property;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$b;

    const-string v2, "shadowAlpha"

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/PreviewBackground$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/folder/PreviewBackground;->F:Landroid/util/Property;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$c;

    const-string v2, "bgAlpha"

    invoke-direct {v1, v0, v2}, Lcom/zui/launcher/folder/PreviewBackground$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/zui/launcher/folder/PreviewBackground;->G:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->a:Landroid/graphics/PorterDuffXfermode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->b:Landroid/graphics/RadialGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->g:F

    const/16 v0, 0xe7

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->p:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->q:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->r:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->s:I

    iput-boolean v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->isClipping:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->y:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->z:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->p:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/PreviewBackground;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->p:I

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->s:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/folder/PreviewBackground;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->s:I

    return p1
.end method

.method static synthetic e(Lcom/zui/launcher/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->q:I

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/folder/PreviewBackground;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->q:I

    return p1
.end method

.method static synthetic g(Lcom/zui/launcher/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->C:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic h(Lcom/zui/launcher/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->D:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic i(Lcom/zui/launcher/folder/PreviewBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->B:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic j(Lcom/zui/launcher/folder/PreviewBackground;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->g:F

    return p1
.end method

.method static synthetic k(Lcom/zui/launcher/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private l(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8

    iget v3, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    iget v5, p0, Lcom/zui/launcher/folder/PreviewBackground;->g:F

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/zui/launcher/folder/PreviewBackground$g;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/folder/PreviewBackground$g;-><init>(Lcom/zui/launcher/folder/PreviewBackground;FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/launcher/folder/PreviewBackground$h;

    invoke-direct {p2, p0, p3, p4}, Lcom/zui/launcher/folder/PreviewBackground$h;-><init>(Lcom/zui/launcher/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->A:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/CellLayout;->removeFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->isClipping:Z

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method

.method private n(Lcom/zui/launcher/CellLayout;II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/CellLayout;->addFolderBackground(Lcom/zui/launcher/folder/PreviewBackground;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    iput p2, p0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iput p3, p0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method

.method public static synthetic w(Lcom/zui/launcher/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/folder/PreviewBackground;->m()V

    return-void
.end method


# virtual methods
.method public animateBackgroundAlpha()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->D:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/folder/PreviewBackground;->G:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/zui/launcher/folder/PreviewBackground;->r:I

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->D:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$e;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/PreviewBackground$e;-><init>(Lcom/zui/launcher/folder/PreviewBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->D:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateBackgroundStroke()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->B:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/folder/PreviewBackground;->E:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/zui/launcher/folder/PreviewBackground;->z:I

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->B:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$f;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/PreviewBackground$f;-><init>(Lcom/zui/launcher/folder/PreviewBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateToAccept(Lcom/zui/launcher/CellLayout;II)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/folder/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/folder/d;-><init>(Lcom/zui/launcher/folder/PreviewBackground;Lcom/zui/launcher/CellLayout;II)V

    const p1, 0x3f99999a    # 1.2f

    const/high16 p2, 0x3fc00000    # 1.5f

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/zui/launcher/folder/PreviewBackground;->l(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateToRest()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellX:I

    iget v2, p0, Lcom/zui/launcher/folder/PreviewBackground;->delegateCellY:I

    new-instance v3, Lcom/zui/launcher/folder/c;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/zui/launcher/folder/c;-><init>(Lcom/zui/launcher/folder/PreviewBackground;Lcom/zui/launcher/CellLayout;II)V

    new-instance v0, Lcom/zui/launcher/folder/b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/folder/b;-><init>(Lcom/zui/launcher/folder/PreviewBackground;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v3, v0}, Lcom/zui/launcher/folder/PreviewBackground;->l(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;I)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->getBgColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result p2

    int-to-float v4, p2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result p2

    int-to-float v5, p2

    iget-object v6, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->l:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->k:I

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->i:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->m:I

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->k:I

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->j:I

    :goto_0
    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->h:I

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->k:I

    iget v2, p0, Lcom/zui/launcher/folder/PreviewBackground;->p:I

    invoke-static {v1, v2}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v2, v0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result v2

    int-to-float v2, v2

    add-float v4, v2, v0

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v2, v0

    iget-object v6, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawLeaveBehind(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    const/16 v2, 0xa0

    const/16 v3, 0xf5

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/zui/launcher/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iput v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->b:Landroid/graphics/RadialGradient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    add-float/2addr v0, v5

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v3, v1

    iget v4, p0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    sub-float v7, v3, v4

    int-to-float v8, v2

    add-float/2addr v3, v5

    add-float v9, v3, v0

    add-float v3, v8, v0

    add-float v10, v3, v0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->getClipPath()Landroid/graphics/Path;

    move-result-object v4

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :goto_0
    move v7, v3

    iget-object v3, p0, Lcom/zui/launcher/folder/PreviewBackground;->c:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/zui/launcher/folder/PreviewBackground;->c:Landroid/graphics/Matrix;

    int-to-float v4, v1

    add-float v1, v5, v4

    int-to-float v6, v2

    add-float/2addr v0, v6

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->b:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->b:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v1

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v4, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public fadeInBackgroundShadow()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->C:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/zui/launcher/folder/PreviewBackground;->F:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->C:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/zui/launcher/folder/PreviewBackground$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/PreviewBackground$d;-><init>(Lcom/zui/launcher/folder/PreviewBackground;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->C:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public getBackgroundAlpha()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->q:I

    return p0
.end method

.method public getBgColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->getBackgroundAlpha()I

    move-result v0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->h:I

    invoke-static {p0, v0}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    return p0
.end method

.method public getClipPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Lcom/zui/launcher/graphics/IconShape;->getShape()Lcom/zui/launcher/graphics/IconShape;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->d:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->q()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->r()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zui/launcher/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->d:Landroid/graphics/Path;

    return-object p0
.end method

.method public getDotColor()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->n:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    return p0
.end method

.method o()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method p(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    iget v1, p0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    add-int v2, v1, p0

    add-int/2addr p0, v0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method q()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->s()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method r()I
    .locals 2

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->s()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public resetStokeAndBgColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->y:Z

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method

.method s()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public setup(Landroid/content/Context;Lcom/zui/launcher/views/ActivityContext;Landroid/view/View;IIIIZI)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    iput-object v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->t:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/R$styleable;->FolderIconPreview:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/folder/PreviewBackground;->n:I

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/folder/PreviewBackground;->l:I

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/zui/launcher/folder/PreviewBackground;->m:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->i:I

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->j:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWallpaperBlackOrWhite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->y:Z

    iget v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->m:I

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->k:I

    iget v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->j:I

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->h:I

    const/16 v4, 0x40

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->z:I

    if-nez v1, :cond_0

    const/16 v1, 0x19

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    :goto_0
    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->r:I

    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->z:I

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->p:I

    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->r:I

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->q:I

    invoke-interface {p2}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget v4, v1, Lcom/zui/launcher/DeviceProfile;->folderIconSizePx:I

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    const/4 v5, 0x2

    if-eqz p8, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int v4, p4, p9

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->folderIconOffsetYPx:I

    sub-int/2addr v4, v1

    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    sub-int/2addr v4, v1

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    goto :goto_1

    :cond_1
    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->folderIconOffsetYPx:I

    add-int v1, p7, v1

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    :goto_1
    iget v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->u:I

    sub-int v1, p6, v1

    div-int/2addr v1, v5

    goto :goto_2

    :cond_2
    sub-int v4, p4, v4

    div-int/2addr v4, v5

    iput v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->v:I

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->folderIconOffsetYPx:I

    add-int v1, p5, v1

    :goto_2
    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->w:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->u()I

    move-result v1

    int-to-float v1, v1

    iget v4, v0, Lcom/zui/launcher/folder/PreviewBackground;->o:F

    add-float/2addr v4, v1

    const/16 v6, 0x28

    invoke-static {v6, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    new-array v11, v5, [I

    aput v6, v11, v2

    aput v2, v11, v3

    new-array v5, v5, [F

    div-float/2addr v1, v4

    aput v1, v5, v2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, v3

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object p1, v7

    move p2, v8

    move p3, v9

    move/from16 p4, v10

    move-object/from16 p5, v11

    move-object/from16 p6, v5

    move-object/from16 p7, v1

    invoke-direct/range {p1 .. p7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, v0, Lcom/zui/launcher/folder/PreviewBackground;->b:Landroid/graphics/RadialGradient;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method

.method t()F
    .locals 1

    iget p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    const v0, 0x3e4cccd0    # 0.20000005f

    div-float/2addr p0, v0

    return p0
.end method

.method u()I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->f:F

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->s()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method v()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/folder/PreviewBackground;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewBackground;->x:Lcom/zui/launcher/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public synthetic x(Lcom/zui/launcher/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/folder/PreviewBackground;->n(Lcom/zui/launcher/CellLayout;II)V

    return-void
.end method

.method public synthetic y(Lcom/zui/launcher/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/folder/PreviewBackground;->n(Lcom/zui/launcher/CellLayout;II)V

    return-void
.end method

.method z(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewBackground;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewBackground;->v()V

    return-void
.end method
