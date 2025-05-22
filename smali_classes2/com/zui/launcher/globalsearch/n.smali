.class public final synthetic Lcom/zui/launcher/globalsearch/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/n;->a:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    iput p2, p0, Lcom/zui/launcher/globalsearch/n;->b:I

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/n;->c:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/n;->a:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;

    iget v1, p0, Lcom/zui/launcher/globalsearch/n;->b:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/n;->c:Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;->a(ILcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
