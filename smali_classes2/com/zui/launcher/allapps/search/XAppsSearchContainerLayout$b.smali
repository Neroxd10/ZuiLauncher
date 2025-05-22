.class Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iget-object p4, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p4}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;

    move-result-object p4

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p4, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p4}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object p2

    if-eqz p1, :cond_2

    move p4, v0

    goto :goto_2

    :cond_2
    move p4, p3

    :goto_2
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    goto :goto_3

    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/search/RecommendRowView;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/search/RecommendRowView;

    move-result-object p2

    if-eqz p1, :cond_5

    move p3, v0

    :cond_5
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p2}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/search/RecommendRowView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;->a:Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;

    invoke-static {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setupHeader()V

    :cond_8
    return-void
.end method
