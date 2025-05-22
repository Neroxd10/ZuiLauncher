.class Lcom/zui/internal/app/MessageController$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/MessageController;->c0(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic c:Lcom/zui/internal/app/MessageController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    iput-object p2, p0, Lcom/zui/internal/app/MessageController$c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController$c;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    iget-object p2, p1, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->z(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_0

    :cond_0
    invoke-static {p1, p3}, Lcom/zui/internal/app/MessageController;->z(Lcom/zui/internal/app/MessageController;I)I

    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget-object p4, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p4}, Lcom/zui/internal/app/MessageController;->Q(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    add-int/2addr p1, p4

    invoke-static {p2, p1}, Lcom/zui/internal/app/MessageController;->J(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1, p3}, Lcom/zui/internal/app/MessageController;->J(Lcom/zui/internal/app/MessageController;I)I

    :goto_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->R(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->R(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->y(Lcom/zui/internal/app/MessageController;I)I

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->x(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->A(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->A(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->y(Lcom/zui/internal/app/MessageController;I)I

    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->R(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->x(Lcom/zui/internal/app/MessageController;)I

    move-result p4

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p1

    add-int/2addr p4, p5

    invoke-static {p2, p4}, Lcom/zui/internal/app/MessageController;->y(Lcom/zui/internal/app/MessageController;I)I

    :cond_3
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->b:Landroid/view/ViewGroup$LayoutParams;

    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p4, p2

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->K(Lcom/zui/internal/app/MessageController;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->L(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->M(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    :goto_2
    if-le p1, p2, :cond_5

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->x(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->w(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->I(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p2, p5

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/zui/internal/app/MessageController;->C(Lcom/zui/internal/app/MessageController;I)I

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->x(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->w(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    iget-object p5, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p5}, Lcom/zui/internal/app/MessageController;->I(Lcom/zui/internal/app/MessageController;)I

    move-result p5

    sub-int/2addr p1, p5

    sub-int/2addr p1, p4

    invoke-static {p2, p1}, Lcom/zui/internal/app/MessageController;->C(Lcom/zui/internal/app/MessageController;I)I

    :goto_3
    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->B(Lcom/zui/internal/app/MessageController;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->b:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->B(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->D(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->B(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    if-le p1, p2, :cond_6

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->b:Landroid/view/ViewGroup$LayoutParams;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p2}, Lcom/zui/internal/app/MessageController;->B(Lcom/zui/internal/app/MessageController;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/zui/internal/app/MessageController$c;->c:Lcom/zui/internal/app/MessageController;

    invoke-static {p1}, Lcom/zui/internal/app/MessageController;->D(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/internal/app/MessageController$c;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
