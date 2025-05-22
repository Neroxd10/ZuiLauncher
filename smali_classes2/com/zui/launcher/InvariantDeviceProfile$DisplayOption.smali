.class public final Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayOption"
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

.field private final b:F

.field private final c:F

.field private final d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:F

.field private q:F

.field private r:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a:Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->b:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a:Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    sget-object p1, Lcom/zui/launcher/R$styleable;->ProfileDisplayOption:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 p2, 0x10

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->b:F

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->c:F

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->d:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    const/16 v1, 0xe

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o:I

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$GridOption;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a:Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    return p0
.end method

.method static synthetic g(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    return p0
.end method

.method static synthetic h(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    return p0
.end method

.method static synthetic i(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o:I

    return p0
.end method

.method static synthetic j(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    return p0
.end method

.method static synthetic k(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    return p0
.end method

.method static synthetic l(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    return p0
.end method

.method static synthetic m(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->d:Z

    return p0
.end method

.method static synthetic n(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->b:F

    return p0
.end method

.method static synthetic o(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->c:F

    return p0
.end method

.method static synthetic p(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->u(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    return-object p0
.end method

.method static synthetic q(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;F)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->v(F)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    return-object p0
.end method

.method static synthetic r(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    return p0
.end method

.method static synthetic s(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    return p0
.end method

.method static synthetic t(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    return p0
.end method

.method private u(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    iget v1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    return-object p0
.end method

.method private v(F)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q:F

    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r:F

    return-object p0
.end method


# virtual methods
.method public getGrid()Lcom/zui/launcher/InvariantDeviceProfile$GridOption;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a:Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    return-object p0
.end method
