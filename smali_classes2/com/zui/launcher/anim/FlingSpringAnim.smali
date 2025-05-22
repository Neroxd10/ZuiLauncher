.class public Lcom/zui/launcher/anim/FlingSpringAnim;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroidx/dynamicanimation/animation/FlingAnimation;

.field private b:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private c:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;FFFFFFF",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0, p5}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    iput p4, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->c:F

    new-instance v1, Lcom/zui/launcher/anim/f;

    move-object p3, v1

    move-object p4, p0

    move-object p5, p1

    move-object p6, p2

    move p7, p9

    move-object p8, p10

    invoke-direct/range {p3 .. p8}, Lcom/zui/launcher/anim/f;-><init>(Lcom/zui/launcher/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    new-instance p5, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p5, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p5, p7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    mul-float/2addr p8, p3

    invoke-virtual {p1, p8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    iget p3, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->c:F

    invoke-direct {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p3, 0x43480000    # 200.0f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const p3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->c:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public getTargetPosition()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->c:F

    return p0
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    return-void
.end method

.method public updatePosition(FF)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->a:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    iput p2, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->c:F

    iget-object p0, p0, Lcom/zui/launcher/anim/FlingSpringAnim;->b:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method
