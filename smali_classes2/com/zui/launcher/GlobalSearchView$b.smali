.class Lcom/zui/launcher/GlobalSearchView$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/GlobalSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/GlobalSearchView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "History"

    const-string v1, "GSHistoryClick"

    const-string v2, "\u67e5\u770b\u641c\u7d22\u5386\u53f2"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/zui/launcher/GlobalSearchView;->i(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->h(Lcom/zui/launcher/GlobalSearchView;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->j(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->g(Lcom/zui/launcher/GlobalSearchView;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->f(Lcom/zui/launcher/GlobalSearchView;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->e(Lcom/zui/launcher/GlobalSearchView;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->c(Lcom/zui/launcher/GlobalSearchView;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->d(Lcom/zui/launcher/GlobalSearchView;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->B(Lcom/zui/launcher/GlobalSearchView;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView;->z(Lcom/zui/launcher/GlobalSearchView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView;->A(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/FlowLayout;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/z;

    invoke-direct {v1, p0}, Lcom/zui/launcher/z;-><init>(Lcom/zui/launcher/GlobalSearchView$b;)V

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/globalsearch/FlowLayout;->setViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->z(Lcom/zui/launcher/GlobalSearchView;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourc_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0, v1, v2, v3, v0}, Lcom/zui/launcher/GlobalSearchView;->y(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;ILjava/util/List;Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$b;->a:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->x(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
