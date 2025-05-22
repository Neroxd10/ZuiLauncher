.class Lcom/zui/launcher/HorizontalListView$b;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/HorizontalListView;->e(Lcom/zui/launcher/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/HorizontalListView;->f(Lcom/zui/launcher/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->g(Lcom/zui/launcher/HorizontalListView;)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/HorizontalListView;->f(Lcom/zui/launcher/HorizontalListView;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->g(Lcom/zui/launcher/HorizontalListView;)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-static {v0}, Lcom/zui/launcher/HorizontalListView;->h(Lcom/zui/launcher/HorizontalListView;)V

    iget-object v0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    iget-object p0, p0, Lcom/zui/launcher/HorizontalListView$b;->a:Lcom/zui/launcher/HorizontalListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return-void
.end method
