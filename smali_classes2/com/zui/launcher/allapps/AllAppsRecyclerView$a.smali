.class Lcom/zui/launcher/allapps/AllAppsRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView$a;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsRecyclerView$a;->a:Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllAppsRecyclerView;->a(Lcom/zui/launcher/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
