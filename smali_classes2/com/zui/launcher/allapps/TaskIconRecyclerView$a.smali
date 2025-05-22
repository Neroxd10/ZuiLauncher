.class Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/TaskIconRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/TaskIconRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    const-string v0, "TaskIconRecyclerView"

    const-string v1, "onTaskStackChanged------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView$a;->a:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->reloadIfNeed()V

    :cond_0
    return-void
.end method
