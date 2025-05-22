.class public Lcom/zui/launcher/widget/picker/common/ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# instance fields
.field public mCell:Lcom/zui/launcher/widget/WidgetCell;

.field public mLayout:Landroid/widget/LinearLayout;

.field public mPreview:Lcom/zui/launcher/widget/WidgetImageView;

.field public mWidgetName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/WidgetCell;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mCell:Lcom/zui/launcher/widget/WidgetCell;

    const v0, 0x7f0a01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a043e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mWidgetName:Landroid/widget/TextView;

    const v0, 0x7f0a043f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/WidgetImageView;

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/common/ViewHolder;->mPreview:Lcom/zui/launcher/widget/WidgetImageView;

    return-void
.end method
