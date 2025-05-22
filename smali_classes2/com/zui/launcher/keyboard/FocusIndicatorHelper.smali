.class public abstract Lcom/zui/launcher/keyboard/FocusIndicatorHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;,
        Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;
    }
.end annotation


# static fields
.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/keyboard/FocusIndicatorHelper;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/keyboard/FocusIndicatorHelper;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Landroid/animation/RectEvaluator;

.field private static final m:Landroid/graphics/Rect;

.field private static final n:Landroid/graphics/Rect;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:F

.field private j:Landroid/animation/ObjectAnimator;

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$b;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "shift"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->SHIFT:Landroid/util/Property;

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->l:Landroid/animation/RectEvaluator;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->m:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->n:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->e:Z

    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->a:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060189

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->c:I

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->setAlpha(F)V

    iput p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->k:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    return p1
.end method

.method private d()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->g:Landroid/view/View;

    sget-object v1, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->l:Landroid/animation/RectEvaluator;

    iget p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    sget-object v1, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->m:Landroid/graphics/Rect;

    sget-object v2, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->m:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->k:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->e:Z

    :cond_0
    return-void
.end method

.method protected endCurrentAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method protected invalidateDirty()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->e:Z

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->invalidateDirty()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->endCurrentAnimation()V

    iget v3, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->k:F

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->h:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v1

    sget-object v5, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->SHIFT:Landroid/util/Property;

    new-array v6, v2, [F

    aput v4, v6, v1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;

    invoke-direct {v3, p0, p1, v2}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;-><init>(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->setCurrentView(Landroid/view/View;)V

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v4, v2, v1

    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->f:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->f:Landroid/view/View;

    if-ne v3, p1, :cond_2

    iput-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->endCurrentAnimation()V

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v5, v2, v1

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;

    invoke-direct {v3, p0, v0, v1}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper$c;-><init>(Lcom/zui/launcher/keyboard/FocusIndicatorHelper;Landroid/view/View;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->invalidateDirty()V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->f:Landroid/view/View;

    iget-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 p1, 0x96

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void
.end method

.method protected setAlpha(F)V
    .locals 1

    iput p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->k:F

    iget-object v0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->b:Landroid/graphics/Paint;

    iget p0, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->c:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected setCurrentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->g:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->i:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/keyboard/FocusIndicatorHelper;->h:Landroid/view/View;

    return-void
.end method

.method public abstract viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
.end method
