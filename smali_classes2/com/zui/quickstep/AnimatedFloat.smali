.class public Lcom/zui/quickstep/AnimatedFloat;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat$a;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/zui/quickstep/AnimatedFloat$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v0, Lcom/zui/quickstep/g;->a:Lcom/zui/quickstep/g;

    sput-object v0, Lcom/zui/quickstep/AnimatedFloat;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/AnimatedFloat;->c:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/AnimatedFloat;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public animateToValue(FF)Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/quickstep/AnimatedFloat;->cancelAnimation()V

    sget-object v0, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/zui/quickstep/AnimatedFloat$b;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/AnimatedFloat$b;-><init>(Lcom/zui/quickstep/AnimatedFloat;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public finishAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getCurrentAnimation()Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->b:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public updateValue(F)V
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
