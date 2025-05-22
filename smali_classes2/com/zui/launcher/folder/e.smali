.class Lcom/zui/launcher/folder/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/folder/e;",
            "[F>;"
        }
    .end annotation
.end field

.field private static f:Lcom/zui/launcher/folder/f;

.field private static final g:[F


# instance fields
.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Lcom/zui/launcher/folder/PreviewItemManager;

.field private final c:Lcom/zui/launcher/folder/f;

.field public final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/folder/e$a;

    const-class v1, [F

    const-string v2, "params"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/folder/e$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/folder/e;->e:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/folder/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    sput-object v0, Lcom/zui/launcher/folder/e;->f:Lcom/zui/launcher/folder/f;

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/zui/launcher/folder/e;->g:[F

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/folder/PreviewItemManager;Lcom/zui/launcher/folder/f;IIIIILjava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/folder/e;->b:Lcom/zui/launcher/folder/PreviewItemManager;

    iput-object p2, p0, Lcom/zui/launcher/folder/e;->c:Lcom/zui/launcher/folder/f;

    sget-object v0, Lcom/zui/launcher/folder/e;->f:Lcom/zui/launcher/folder/f;

    invoke-virtual {p1, p5, p6, v0}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    const/4 p1, 0x3

    new-array p5, p1, [F

    sget-object p6, Lcom/zui/launcher/folder/e;->f:Lcom/zui/launcher/folder/f;

    iget v0, p6, Lcom/zui/launcher/folder/f;->c:F

    const/4 v1, 0x0

    aput v0, p5, v1

    iget v0, p6, Lcom/zui/launcher/folder/f;->a:F

    const/4 v2, 0x1

    aput v0, p5, v2

    iget v0, p6, Lcom/zui/launcher/folder/f;->b:F

    const/4 v3, 0x2

    aput v0, p5, v3

    iput-object p5, p0, Lcom/zui/launcher/folder/e;->d:[F

    iget-object p5, p0, Lcom/zui/launcher/folder/e;->b:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p5, p3, p4, p6}, Lcom/zui/launcher/folder/PreviewItemManager;->f(IILcom/zui/launcher/folder/f;)Lcom/zui/launcher/folder/f;

    new-array p1, p1, [F

    sget-object p3, Lcom/zui/launcher/folder/e;->f:Lcom/zui/launcher/folder/f;

    iget p4, p3, Lcom/zui/launcher/folder/f;->c:F

    aput p4, p1, v1

    iget p4, p3, Lcom/zui/launcher/folder/f;->a:F

    aput p4, p1, v2

    iget p3, p3, Lcom/zui/launcher/folder/f;->b:F

    aput p3, p1, v3

    sget-object p3, Lcom/zui/launcher/folder/e;->e:Landroid/util/Property;

    new-instance p4, Landroid/animation/FloatArrayEvaluator;

    invoke-direct {p4}, Landroid/animation/FloatArrayEvaluator;-><init>()V

    new-array p5, v3, [[F

    aput-object p1, p5, v1

    iget-object p1, p0, Lcom/zui/launcher/folder/e;->d:[F

    aput-object p1, p5, v2

    invoke-static {p0, p3, p4, p5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/folder/e;->a:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/zui/launcher/folder/e$b;

    invoke-direct {p3, p0, p8, p2}, Lcom/zui/launcher/folder/e$b;-><init>(Lcom/zui/launcher/folder/e;Ljava/lang/Runnable;Lcom/zui/launcher/folder/f;)V

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->a:Landroid/animation/ObjectAnimator;

    int-to-long p1, p7

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic a()[F
    .locals 1

    sget-object v0, Lcom/zui/launcher/folder/e;->g:[F

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/folder/e;)Lcom/zui/launcher/folder/f;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->c:Lcom/zui/launcher/folder/f;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/folder/e;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/folder/e;->f([F)V

    return-void
.end method

.method private f([F)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/folder/e;->c:Lcom/zui/launcher/folder/f;

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, v0, Lcom/zui/launcher/folder/f;->c:F

    const/4 v1, 0x1

    aget v1, p1, v1

    iput v1, v0, Lcom/zui/launcher/folder/f;->a:F

    const/4 v1, 0x2

    aget p1, p1, v1

    iput p1, v0, Lcom/zui/launcher/folder/f;->b:F

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->b:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-virtual {p0}, Lcom/zui/launcher/folder/PreviewItemManager;->onParamsChanged()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public e(Lcom/zui/launcher/folder/e;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->d:[F

    iget-object p1, p1, Lcom/zui/launcher/folder/e;->d:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
