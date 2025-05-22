.class Lcom/zui/quickstep/OrientationTouchTransformer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;,
        Lcom/zui/quickstep/OrientationTouchTransformer$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private f:I

.field private g:Z

.field private h:Landroid/content/res/Resources;

.field private i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

.field private j:I

.field private k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private l:Lcom/zui/quickstep/OrientationTouchTransformer$a;

.field private m:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/quickstep/OrientationTouchTransformer$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->a:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->e:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->m:I

    iput-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->h:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iput-object p3, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->l:Lcom/zui/quickstep/OrientationTouchTransformer$a;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/OrientationTouchTransformer;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->a:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/OrientationTouchTransformer;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/OrientationTouchTransformer;)[F
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    return-object p0
.end method

.method private e(Lcom/zui/launcher/util/DefaultDisplay$Info;)Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;
    .locals 9

    iget-object v0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    iget p1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    new-instance v8, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;-><init>(Lcom/zui/quickstep/OrientationTouchTransformer;FFFFI)V

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const-string v2, "navigation_bar_gesture_height"

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/zui/quickstep/OrientationTouchTransformer;->j(Ljava/lang/String;)I

    move-result p1

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, v8, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v8}, Lcom/zui/quickstep/OrientationTouchTransformer;->t(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    const/4 v0, 0x1

    const-string v1, "navigation_bar_width"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget p1, v8, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v2}, Lcom/zui/quickstep/OrientationTouchTransformer;->j(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    iput p1, v8, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    iget p1, v8, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->j(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    iput p1, v8, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    iget p1, v8, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->j(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    iput p1, v8, Landroid/graphics/RectF;->left:F

    :goto_0
    return-object v8
.end method

.method private j(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->h:Landroid/content/res/Resources;

    const p1, 0x7f070846

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    iget v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->t(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)V

    :cond_0
    return-void
.end method

.method private n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iput v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->e(Lcom/zui/launcher/util/DefaultDisplay$Info;)Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->t(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)V

    return-void
.end method

.method private t(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)V
    .locals 4

    const-string v0, "navigation_bar_gesture_height"

    invoke-direct {p0, v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->j(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->h:Landroid/content/res/Resources;

    const v2, 0x7f0703b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->l:Lcom/zui/quickstep/OrientationTouchTransformer$a;

    invoke-interface {v2}, Lcom/zui/quickstep/OrientationTouchTransformer$a;->a()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->d:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->e:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iput v3, p0, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v0, 0x0

    iput v0, v2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method


# virtual methods
.method d(Lcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 3

    iget v0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iput v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->m:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->e(Lcom/zui/launcher/util/DefaultDisplay$Info;)Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    :goto_0
    return-void
.end method

.method public f(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "OrientationTouchTransformerState: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentActiveRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  lastTouchedRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  multipleRegionsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  currentTouchableRotations="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    invoke-static {v2}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method g(ZLcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->g:Z

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->j:I

    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->m:I

    invoke-direct {p0, p2}, Lcom/zui/quickstep/OrientationTouchTransformer;->n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    return-void
.end method

.method public h(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 9

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-boolean v1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v2, "b/158017601"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default display:id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rotation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " realSize("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-boolean v5, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v3}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I

    move-result v5

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v5, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget v5, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    invoke-static {v3}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result v5

    invoke-static {v3}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->b(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)F

    move-result v6

    invoke-static {v3}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->c(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)F

    move-result v7

    iget-object v8, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->a:Landroid/graphics/Matrix;

    invoke-static {v5, v6, v7, v8}, Lcom/zui/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    aput v6, v5, v0

    iget-object v5, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-boolean v5, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTmpPoint[0]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mTmpPoint[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->b:[F

    aget v5, v4, v0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_6

    aget v4, v4, v0

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_7

    const-string p0, "return false-----"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    move v0, v4

    :goto_3
    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "eventInDisplay, return:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v0
.end method

.method i()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->j:I

    return p0
.end method

.method k()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->m:I

    return p0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    return-void
.end method

.method o(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->k:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0, p2}, Lcom/zui/quickstep/OrientationTouchTransformer;->n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    return-void
.end method

.method p(Lcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 1

    iget v0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iput v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->j:I

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->n(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    return-void
.end method

.method q(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

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

.method r(FF)Z
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchInValidSwipeRegions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/158017601"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->contains(FF)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public s(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d(Landroid/view/MotionEvent;Z)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d(Landroid/view/MotionEvent;Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    sget-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v4, "b/158017601"

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transform:DOWN, rect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v2, p1, v0}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->d(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_8

    const-string p1, "setting mLastRectTouched"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-object v2, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    invoke-static {v2}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->j:I

    iget-boolean v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->g:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->f:I

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->i:Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;

    invoke-static {p1}, Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;->a(Lcom/zui/quickstep/OrientationTouchTransformer$OrientationRectF;)I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/OrientationTouchTransformer;->m:I

    invoke-direct {p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->m()V

    :cond_9
    return-void

    :cond_a
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    :goto_2
    return-void
.end method
