.class Lcom/zui/launcher/globalsearch/FlowLayout$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/FlowLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/FlowLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/FlowLayout$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->b:I

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->b:I

    return p0
.end method

.method public d(II)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c:Lcom/zui/launcher/globalsearch/FlowLayout;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/FlowLayout;->a(Lcom/zui/launcher/globalsearch/FlowLayout;)I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
