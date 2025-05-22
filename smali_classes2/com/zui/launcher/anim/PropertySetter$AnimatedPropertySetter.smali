.class public Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;
.super Lcom/zui/launcher/anim/PropertySetter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/anim/PropertySetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedPropertySetter"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/zui/launcher/anim/AnimatorSetBuilder;


# direct methods
.method public constructor <init>(JLcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/anim/PropertySetter;-><init>()V

    iput-wide p1, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->a:J

    iput-object p3, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->b:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    return-void
.end method


# virtual methods
.method public setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->a:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->b:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->a:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->b:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/anim/AlphaUpdateListener;

    invoke-direct {v0, p1}, Lcom/zui/launcher/anim/AlphaUpdateListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v0, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->a:J

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/anim/PropertySetter$AnimatedPropertySetter;->b:Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    :cond_1
    :goto_0
    return-void
.end method
