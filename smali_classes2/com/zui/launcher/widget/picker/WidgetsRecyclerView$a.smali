.class Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;->a:Lcom/zui/launcher/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsRecyclerView$a;Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method
