.class Lcom/zui/internal/app/MessageController$d;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/MessageController;


# direct methods
.method private constructor <init>(Lcom/zui/internal/app/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/internal/app/MessageController;Lcom/zui/internal/app/MessageController$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController$d;-><init>(Lcom/zui/internal/app/MessageController;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-static {v0}, Lcom/zui/internal/app/MessageController;->E(Lcom/zui/internal/app/MessageController;)Lzui/widget/PairedItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    iget-object v0, v0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_2

    sget v1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-static {v1}, Lcom/zui/internal/app/MessageController;->F(Lcom/zui/internal/app/MessageController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-static {p0, v0}, Lcom/zui/internal/app/MessageController;->G(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-static {v1}, Lcom/zui/internal/app/MessageController;->F(Lcom/zui/internal/app/MessageController;)I

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController$d;->a:Lcom/zui/internal/app/MessageController;

    invoke-static {p0, v0}, Lcom/zui/internal/app/MessageController;->H(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
