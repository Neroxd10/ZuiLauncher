.class public Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchViewHolder"
.end annotation


# instance fields
.field public downArrow:Landroid/widget/ImageView;

.field public suggestionImg:Landroid/widget/ImageView;

.field public suggestionText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0396

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionText:Landroid/widget/TextView;

    const v0, 0x7f0a0395

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->suggestionImg:Landroid/widget/ImageView;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/GlobalSearchViewNewAdapter$SearchViewHolder;->downArrow:Landroid/widget/ImageView;

    return-void
.end method
