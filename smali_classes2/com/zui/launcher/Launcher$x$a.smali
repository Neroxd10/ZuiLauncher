.class Lcom/zui/launcher/Launcher$x$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher$x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/Launcher$x;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher$x;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$x$a;->c:Lcom/zui/launcher/Launcher$x;

    iput p2, p0, Lcom/zui/launcher/Launcher$x$a;->a:I

    iput p3, p0, Lcom/zui/launcher/Launcher$x$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/Launcher$x$a;->c:Lcom/zui/launcher/Launcher$x;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$x;->e:Landroid/view/View;

    iget v1, p0, Lcom/zui/launcher/Launcher$x$a;->a:I

    int-to-float v1, v1

    iget p0, p0, Lcom/zui/launcher/Launcher$x$a;->b:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method
