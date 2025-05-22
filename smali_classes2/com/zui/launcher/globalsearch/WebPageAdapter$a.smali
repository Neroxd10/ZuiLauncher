.class Lcom/zui/launcher/globalsearch/WebPageAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/WebPageAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/WebPageAdapter$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/WebPageAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/WebPageAdapter;Lcom/zui/launcher/globalsearch/WebPageAdapter$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->c:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    iput p3, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/model/BrowserSuggestion;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/model/BrowserSuggestion;->title:Ljava/lang/String;

    new-instance v0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    const/4 v1, 0x1

    const-string v2, "GSWebPageClickContentName"

    invoke-virtual {v0, v1, v2, p1}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    const-string p1, "Webpage"

    const-string v1, "GSWebPageClick"

    const-string v2, "\u7f51\u9875\u7ed3\u679c\u641c\u7d22\u7ed3\u679c"

    invoke-static {p1, v1, v2, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->c:Lcom/zui/launcher/globalsearch/WebPageAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/WebPageAdapter;->a(Lcom/zui/launcher/globalsearch/WebPageAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->a:Lcom/zui/launcher/globalsearch/WebPageAdapter$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/globalsearch/WebPageAdapter$a;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    return-void
.end method
