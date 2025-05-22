.class public Lcom/zui/launcher3/AppListViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher3/i;

.field private final b:Lcom/zui/launcher3/k;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/zui/launcher3/i;

    invoke-direct {v0, p1}, Lcom/zui/launcher3/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher3/AppListViewModel;->a:Lcom/zui/launcher3/i;

    new-instance v1, Lcom/zui/launcher3/k;

    invoke-direct {v1, v0, p1}, Lcom/zui/launcher3/k;-><init>(Lcom/zui/launcher3/i;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher3/AppListViewModel;->b:Lcom/zui/launcher3/k;

    return-void
.end method


# virtual methods
.method public getAppList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/zui/launcher3/AppEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher3/AppListViewModel;->a:Lcom/zui/launcher3/i;

    return-object p0
.end method

.method protected onCleared()V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher3/AppListViewModel;->b:Lcom/zui/launcher3/k;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
