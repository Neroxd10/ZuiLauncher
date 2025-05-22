.class Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/AboutAppAdapter;->onBindViewHolder(Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/globalsearch/AboutAppAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->c:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iput p3, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "GlobalSearch"

    const-string v1, "clickcontent"

    const-string v2, "content"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    instance-of v0, p1, Lcom/zui/launcher/AppInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/AppInfo;

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksData;->getAppname()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppname()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->c:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->aboutEventUp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->c:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a(Lcom/zui/launcher/globalsearch/AboutAppAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->c:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a(Lcom/zui/launcher/globalsearch/AboutAppAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$d;->b:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/GlobalSearchView;->itemClickMethod(Landroid/view/View;I)V

    :cond_3
    return-void
.end method
