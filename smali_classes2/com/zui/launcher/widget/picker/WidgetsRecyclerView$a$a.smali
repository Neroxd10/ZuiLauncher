.class Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;
.super Landroid/widget/EdgeEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iput p3, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->a:I

    iput-object p4, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(F)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v2, v2, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    iget-object v2, v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mTranslationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onAbsorb(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget v0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, p1

    int-to-float p1, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v2, v2, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mTranslationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPull(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->a(F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->a(F)V

    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-super {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;

    iget-object v2, v2, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;

    iget-object v1, v1, Lcom/zui/launcher/widget/picker/WidgetsCommonViewHolder;->mTranslationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
