.class Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    iget-object v1, v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    invoke-static {v1}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->a(Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/GlobalSearchView;->saveKeywordHistory(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "Contacts"

    const-string v2, "GSContactsSMS"

    const-string v3, "\u7ed9\u8054\u7cfb\u4eba\u53d1\u77ed\u4fe1"

    invoke-static {v1, v2, v3, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    iget-object v1, v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    iget-object v1, v1, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b$a;->a:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->b:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;

    iget-object v0, v0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter;->d:Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$b;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchContactAdapter$PhoneAdapter$ContactAppItemClickListener;->onSmsItemClick(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
