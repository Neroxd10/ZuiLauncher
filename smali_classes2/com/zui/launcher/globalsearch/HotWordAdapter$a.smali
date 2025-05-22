.class Lcom/zui/launcher/globalsearch/HotWordAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/HotWordAdapter$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/HotWordAdapter$b;

.field final synthetic b:Lcom/zui/launcher/globalsearch/HotWordAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordAdapter;Lcom/zui/launcher/globalsearch/HotWordAdapter$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->b:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter$b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object p1, p1, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    new-instance v0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v1, 0x1

    const-string v2, "GSHotwordsClickContentName"

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "Hotwords"

    const-string v1, "GSHotwordsClick"

    const-string v2, "\u70ed\u95e8\u641c\u7d22\u70b9\u51fb"

    invoke-static {p1, v1, v2, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->a:Lcom/zui/launcher/globalsearch/HotWordAdapter$b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->b:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->a(Lcom/zui/launcher/globalsearch/HotWordAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordAdapter$a;->b:Lcom/zui/launcher/globalsearch/HotWordAdapter;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordAdapter;->a(Lcom/zui/launcher/globalsearch/HotWordAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView;->hotWordjumpFromIntent(Lcom/zui/launcher/globalsearch/HotWordData;)V

    :cond_0
    return-void
.end method
