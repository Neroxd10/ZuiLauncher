.class public final Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# instance fields
.field public final mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRowViewHolder;->mTableContainer:Lcom/zui/launcher/widget/picker/WidgetsListTableView;

    return-void
.end method
