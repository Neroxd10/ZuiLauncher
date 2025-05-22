.class public Lcom/zui/launcher/views/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/SpringRelativeLayout$OnOverScrollStateChangedListener;,
        Lcom/zui/launcher/views/SpringRelativeLayout$f;,
        Lcom/zui/launcher/views/SpringRelativeLayout$e;,
        Lcom/zui/launcher/views/SpringRelativeLayout$c;,
        Lcom/zui/launcher/views/SpringRelativeLayout$d;
    }
.end annotation


# static fields
.field private static final f:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/launcher/views/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/zui/launcher/views/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private b:F

.field private c:Lcom/zui/launcher/views/SpringRelativeLayout$c;

.field private final d:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private e:F

.field protected final mSpringViews:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/views/SpringRelativeLayout$a;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/zui/launcher/views/SpringRelativeLayout$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/SpringRelativeLayout;->f:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/zui/launcher/views/SpringRelativeLayout$b;

    invoke-direct {v0, v1}, Lcom/zui/launcher/views/SpringRelativeLayout$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/views/SpringRelativeLayout;->g:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    iput p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Lcom/zui/launcher/views/SpringRelativeLayout;->f:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p2, p0, p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p3, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x44548000    # 850.0f

    invoke-virtual {p3, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p3, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Lcom/zui/launcher/views/SpringRelativeLayout;->g:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p2, p0, p3, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p2, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/SpringRelativeLayout;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/views/SpringRelativeLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->f(F)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/views/SpringRelativeLayout;Lcom/zui/launcher/views/SpringRelativeLayout$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->setActiveEdge(Lcom/zui/launcher/views/SpringRelativeLayout$c;)V

    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/views/SpringRelativeLayout;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/views/SpringRelativeLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->g(F)V

    return-void
.end method

.method private f(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :goto_0
    return-void
.end method

.method private g(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private setActiveEdge(Lcom/zui/launcher/views/SpringRelativeLayout$c;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->c:Lcom/zui/launcher/views/SpringRelativeLayout$c;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/zui/launcher/views/SpringRelativeLayout$c;->b:F

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->c:Lcom/zui/launcher/views/SpringRelativeLayout$c;

    return-void
.end method


# virtual methods
.method public addSpringView(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2

    new-instance v0, Lcom/zui/launcher/views/SpringRelativeLayout$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/views/SpringRelativeLayout$d;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;Lcom/zui/launcher/views/SpringRelativeLayout$a;)V

    return-object v0
.end method

.method public createHorizontalEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2

    new-instance v0, Lcom/zui/launcher/views/SpringRelativeLayout$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/views/SpringRelativeLayout$f;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;Lcom/zui/launcher/views/SpringRelativeLayout$a;)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/views/SpringRelativeLayout;->getCanvasClipTopForOverscroll()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v2, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/zui/launcher/views/SpringRelativeLayout;->getCanvasClipLeftForOverscroll()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v2, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected finishWithShiftAndVelocity(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShift(F)V

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->a:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-direct {p0, p2}, Lcom/zui/launcher/views/SpringRelativeLayout;->f(F)V

    return-void
.end method

.method protected finishWithShiftAndVelocityH(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShiftH(F)V

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->d:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-direct {p0, p2}, Lcom/zui/launcher/views/SpringRelativeLayout;->g(F)V

    return-void
.end method

.method public getCanvasClipLeftForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public releaseOverScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public releaseOverScrollH()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShiftH(F)V

    return-void
.end method

.method public removeSpringView(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method protected saveMaxScrollX(Z)V
    .locals 0

    return-void
.end method

.method protected saveMaxScrollY(Z)V
    .locals 0

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->b:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setDampedScrollShiftH(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout;->e:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method
