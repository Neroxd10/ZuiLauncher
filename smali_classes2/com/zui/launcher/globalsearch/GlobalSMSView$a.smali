.class Lcom/zui/launcher/globalsearch/GlobalSMSView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalSMSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSMSView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSMSView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->a(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->b(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Z

    move-result p1

    const-string v0, "GSSMSUnfold"

    const-string v1, "SMS"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->d(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->removeData()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->e(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f0804ef

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->c(Lcom/zui/launcher/globalsearch/GlobalSMSView;Z)Z

    const-string p0, "\u591a\u6761\u77ed\u4fe1\u6298\u53e0"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->d(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView$GlobalSmsAdapter;->addData()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->e(Lcom/zui/launcher/globalsearch/GlobalSMSView;)Landroid/widget/ImageView;

    move-result-object p1

    const v3, 0x7f0804ec

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSMSView$a;->a:Lcom/zui/launcher/globalsearch/GlobalSMSView;

    invoke-static {p0, v2}, Lcom/zui/launcher/globalsearch/GlobalSMSView;->c(Lcom/zui/launcher/globalsearch/GlobalSMSView;Z)Z

    const-string p0, "\u591a\u6761\u77ed\u4fe1\u5c55\u5f00"

    :goto_0
    invoke-static {v1, v0, p0, v2}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_2
    return-void
.end method
