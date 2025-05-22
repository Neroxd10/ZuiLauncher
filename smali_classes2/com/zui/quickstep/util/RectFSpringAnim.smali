.class public Lcom/zui/quickstep/util/RectFSpringAnim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;
    }
.end annotation


# static fields
.field private static final s:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/quickstep/util/RectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:Z

.field private i:F

.field private j:Lcom/zui/launcher/anim/FlingSpringAnim;

.field private k:Lcom/zui/launcher/anim/FlingSpringAnim;

.field private l:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/util/RectFSpringAnim$a;

    const-string v1, "rectCenterXSpring"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/util/RectFSpringAnim$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/util/RectFSpringAnim;->s:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/zui/quickstep/util/RectFSpringAnim$b;

    const-string v1, "rectYSpring"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/util/RectFSpringAnim$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/util/RectFSpringAnim;->t:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/zui/quickstep/util/RectFSpringAnim$c;

    const-string v1, "rectScaleProgress"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/util/RectFSpringAnim$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/util/RectFSpringAnim;->u:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->c:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    :goto_1
    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    const p1, 0x7f070794

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->q:F

    const p1, 0x7f070796

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->r:F

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    return p0
.end method

.method static synthetic b(Lcom/zui/quickstep/util/RectFSpringAnim;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    return p1
.end method

.method static synthetic c(Lcom/zui/quickstep/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/util/RectFSpringAnim;->l()V

    return-void
.end method

.method static synthetic d(Lcom/zui/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    return p0
.end method

.method static synthetic e(Lcom/zui/quickstep/util/RectFSpringAnim;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    return p1
.end method

.method static synthetic f(Lcom/zui/quickstep/util/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->i:F

    return p0
.end method

.method static synthetic g(Lcom/zui/quickstep/util/RectFSpringAnim;F)F
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->i:F

    return p1
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->m:Z

    iget-object p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->i:F

    iget-object v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v0

    iget v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->i:F

    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v1

    iget-boolean v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->h:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    div-float/2addr v0, v3

    sub-float v3, v4, v0

    iget v5, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    sub-float v1, v5, v1

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->c:Landroid/graphics/RectF;

    iget v4, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    div-float/2addr v0, v3

    sub-float v3, v4, v0

    iget v5, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    add-float/2addr v4, v0

    add-float/2addr v1, v5

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;

    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->i:F

    invoke-interface {v1, v2, v3}, Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;F)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnUpdateListener(Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;

    invoke-interface {v1}, Lcom/zui/quickstep/util/RectFSpringAnim$OnUpdateListener;->onCancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/util/RectFSpringAnim;->end()V

    return-void
.end method

.method public end()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->j:Lcom/zui/launcher/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->end()V

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->end()V

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->l:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->l:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public synthetic h(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->n:Z

    invoke-direct {p0}, Lcom/zui/quickstep/util/RectFSpringAnim;->k()V

    return-void
.end method

.method public synthetic i(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->o:Z

    invoke-direct {p0}, Lcom/zui/quickstep/util/RectFSpringAnim;->k()V

    return-void
.end method

.method public synthetic j(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->p:Z

    invoke-direct {p0}, Lcom/zui/quickstep/util/RectFSpringAnim;->k()V

    return-void
.end method

.method public onTargetPositionChanged()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->j:Lcom/zui/launcher/anim/FlingSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->j:Lcom/zui/launcher/anim/FlingSpringAnim;

    iget v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    iget-object v2, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/anim/FlingSpringAnim;->updatePosition(FF)V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    iget p0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/anim/FlingSpringAnim;->updatePosition(FF)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->getTargetPosition()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public start(Landroid/graphics/PointF;)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v10, Lcom/zui/quickstep/util/y;

    invoke-direct {v10, v11}, Lcom/zui/quickstep/util/y;-><init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    new-instance v13, Lcom/zui/quickstep/util/a0;

    invoke-direct {v13, v11}, Lcom/zui/quickstep/util/a0;-><init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    iget v3, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->f:F

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    new-instance v14, Lcom/zui/launcher/anim/FlingSpringAnim;

    sget-object v2, Lcom/zui/quickstep/util/RectFSpringAnim;->s:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v0, v12, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float v5, v0, v15

    iget v6, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->q:F

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/anim/FlingSpringAnim;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iput-object v14, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->j:Lcom/zui/launcher/anim/FlingSpringAnim;

    iget v0, v12, Landroid/graphics/PointF;->y:F

    mul-float v5, v0, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    const v1, 0x469c4000    # 20000.0f

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float v9, v0, v1

    iget v3, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->g:F

    iget-boolean v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    move v4, v0

    iget v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->r:F

    sub-float v0, v4, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    new-instance v14, Lcom/zui/launcher/anim/FlingSpringAnim;

    sget-object v2, Lcom/zui/quickstep/util/RectFSpringAnim;->t:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget v6, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->q:F

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/anim/FlingSpringAnim;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iput-object v14, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_1
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Lcom/zui/quickstep/util/RectFSpringAnim;->u:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, v11, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iget v3, v12, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/zui/quickstep/util/z;

    invoke-direct {v1, v11}, Lcom/zui/quickstep/util/z;-><init>(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->l:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->j:Lcom/zui/launcher/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->start()V

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->k:Lcom/zui/launcher/anim/FlingSpringAnim;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/FlingSpringAnim;->start()V

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->l:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->m:Z

    iget-object v0, v11, Lcom/zui/quickstep/util/RectFSpringAnim;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_2
    return-void
.end method
