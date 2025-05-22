.class Lzui/widget/ListViewX$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/widget/ListViewX;->onEdgeReached(Landroid/widget/AbsListView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lzui/widget/ListViewX;


# direct methods
.method constructor <init>(Lzui/widget/ListViewX;I)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ListViewX$b;->b:Lzui/widget/ListViewX;

    iput p2, p0, Lzui/widget/ListViewX$b;->a:I

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

    iget-object v0, p0, Lzui/widget/ListViewX$b;->b:Lzui/widget/ListViewX;

    invoke-static {v0}, Lzui/widget/ListViewX;->l(Lzui/widget/ListViewX;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Lzui/widget/ListViewX;->b(Lzui/widget/ListViewX;I)I

    iget-object p1, p0, Lzui/widget/ListViewX$b;->b:Lzui/widget/ListViewX;

    iget p0, p0, Lzui/widget/ListViewX$b;->a:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lzui/widget/ListViewX;->w(Lzui/widget/ListViewX;IZ)V

    return-void
.end method
