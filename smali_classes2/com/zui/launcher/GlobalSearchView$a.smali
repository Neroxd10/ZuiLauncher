.class Lcom/zui/launcher/GlobalSearchView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/GlobalSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/launcher/GlobalSearchView;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Search"

    const-string v3, "GSInput"

    const-string v4, "\u641c\u7d22\u6846\u8f93\u5165\u6587\u5b57\u6b21\u6570"

    invoke-static {v2, v3, v4, v1}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/GlobalSearchView;->n(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->v(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/zui/launcher/globalsearch/GlobalSearchScrollView;->setUpState(Z)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1}, Lcom/zui/launcher/GlobalSearchView;->resetViewState()V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->w(Lcom/zui/launcher/GlobalSearchView;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object p1, p1, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object v0, v0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object p1, p1, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->a:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p2}, Lcom/zui/launcher/GlobalSearchView;->b(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->doSQLFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$a;->b:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView;->a(Lcom/zui/launcher/GlobalSearchView;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method
