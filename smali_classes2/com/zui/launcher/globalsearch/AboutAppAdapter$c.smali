.class Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic b:Lcom/zui/launcher/globalsearch/AboutAppAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AboutAppAdapter;Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;->b:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;->a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;->b:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a(Lcom/zui/launcher/globalsearch/AboutAppAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;->b:Lcom/zui/launcher/globalsearch/AboutAppAdapter;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AboutAppAdapter;->a(Lcom/zui/launcher/globalsearch/AboutAppAdapter;)Lcom/zui/launcher/GlobalSearchView;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AboutAppAdapter$c;->a:Lcom/zui/launcher/globalsearch/AboutAppAdapter$AboutViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/GlobalSearchView;->appLongClick(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
