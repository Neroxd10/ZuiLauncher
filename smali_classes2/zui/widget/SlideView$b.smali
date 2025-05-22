.class final Lzui/widget/SlideView$b;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/widget/SlideView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lzui/widget/SlideView;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lzui/widget/SlideView;->b(Lzui/widget/SlideView;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lzui/widget/SlideView;I)V
    .locals 2

    invoke-static {p1, p2}, Lzui/widget/SlideView;->c(Lzui/widget/SlideView;I)I

    invoke-static {p1}, Lzui/widget/SlideView;->e(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    invoke-static {p1}, Lzui/widget/SlideView;->e(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1}, Lzui/widget/SlideView$b;->a(Lzui/widget/SlideView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lzui/widget/SlideView;

    invoke-virtual {p0, p1, p2}, Lzui/widget/SlideView$b;->b(Lzui/widget/SlideView;I)V

    return-void
.end method
