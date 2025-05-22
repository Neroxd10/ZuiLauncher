.class Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalShortCutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->a(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSearchNewAnimator;->getAnimatorState()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->b(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Z

    move-result p1

    const-string v0, "Contacts"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f0804ef

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->e(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->removeData()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c(Lcom/zui/launcher/globalsearch/GlobalShortCutView;Z)Z

    const-string p0, "GSContactsFold"

    const-string p1, "\u591a\u6761\u8054\u7cfb\u4eba\u6298\u53e0"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->d(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Landroid/widget/ImageView;

    move-result-object p1

    const v2, 0x7f0804ec

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->e(Lcom/zui/launcher/globalsearch/GlobalShortCutView;)Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView$AppInsideAdapter;->addData()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalShortCutView$a;->a:Lcom/zui/launcher/globalsearch/GlobalShortCutView;

    invoke-static {p0, v1}, Lcom/zui/launcher/globalsearch/GlobalShortCutView;->c(Lcom/zui/launcher/globalsearch/GlobalShortCutView;Z)Z

    const-string p0, "GSContactsUnfold"

    const-string p1, "\u591a\u6761\u8054\u7cfb\u4eba\u5c55\u5f00"

    :goto_0
    invoke-static {v0, p0, p1, v1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_2
    return-void
.end method
