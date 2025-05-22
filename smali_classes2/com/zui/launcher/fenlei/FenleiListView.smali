.class public Lcom/zui/launcher/fenlei/FenleiListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;,
        Lcom/zui/launcher/fenlei/FenleiListView$b;,
        Lcom/zui/launcher/fenlei/FenleiListView$c;,
        Lcom/zui/launcher/fenlei/FenleiListView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/fenlei/FenleiListView$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launcher/icons/IconCache;

.field private c:Lcom/zui/launcher/fenlei/FenleiListView$a;

.field private d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

.field private e:Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/fenlei/FenleiListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/fenlei/FenleiListView;)Lcom/zui/launcher/icons/IconCache;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->b:Lcom/zui/launcher/icons/IconCache;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/fenlei/FenleiListView;)Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->e:Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;

    return-object p0
.end method

.method private getSelectedCount()I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-boolean v3, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public synthetic d(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/fenlei/FenleiListView;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public getAllItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-object v3, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSelectedItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-boolean v4, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllUnselectedItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-boolean v4, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    if-nez v4, :cond_0

    iget-object v3, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->c:Lcom/zui/launcher/fenlei/FenleiListView$a;

    invoke-virtual {p0}, Lcom/zui/launcher/fenlei/FenleiListView$a;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getViewByInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-object v3, v3, Lcom/zui/launcher/fenlei/FenleiListView$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->id:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/fenlei/FenleiListView$b;

    iget-boolean v0, p2, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    instance-of p2, p1, Lcom/zui/launcher/fenlei/FenleiListItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/zui/launcher/fenlei/FenleiListItem;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/fenlei/FenleiListItem;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/fenlei/FenleiListView;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/fenlei/FenLeiPanelView;->setAddEnabled(Z)V

    return-void
.end method

.method public setAppInfos(Ljava/util/LinkedHashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infos size ===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v1, Lcom/zui/launcher/fenlei/FenleiListView$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/fenlei/FenleiListView$b;-><init>(Lcom/zui/launcher/fenlei/FenleiListView;)V

    iput-object v0, v1, Lcom/zui/launcher/fenlei/FenleiListView$b;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hashcode  ===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "infos  ===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/zui/launcher/fenlei/FenleiListView$b;->b:Z

    iget-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->c:Lcom/zui/launcher/fenlei/FenleiListView$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->e:Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;

    return-void
.end method

.method public setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/fenlei/FenLeiPanelView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->b:Lcom/zui/launcher/icons/IconCache;

    new-instance v0, Lcom/zui/launcher/fenlei/FenleiListView$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/fenlei/FenleiListView$a;-><init>(Lcom/zui/launcher/fenlei/FenleiListView;Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/fenlei/FenleiListView;->c:Lcom/zui/launcher/fenlei/FenleiListView$a;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenleiListView;->c:Lcom/zui/launcher/fenlei/FenleiListView$a;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/zui/launcher/fenlei/b;

    invoke-direct {p1, p0}, Lcom/zui/launcher/fenlei/b;-><init>(Lcom/zui/launcher/fenlei/FenleiListView;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/fenlei/FenleiListView;->setOnItemClickListener(Lcom/zui/launcher/fenlei/FenleiListView$OnItemClickListener;)V

    iput-object p2, p0, Lcom/zui/launcher/fenlei/FenleiListView;->d:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    return-void
.end method
