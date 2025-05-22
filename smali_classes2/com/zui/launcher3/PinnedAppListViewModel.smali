.class public Lcom/zui/launcher3/PinnedAppListViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher3/l;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/zui/launcher3/l;

    invoke-direct {v0, p1}, Lcom/zui/launcher3/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher3/PinnedAppListViewModel;->a:Lcom/zui/launcher3/l;

    return-void
.end method


# virtual methods
.method public getPinnedAppList()Landroidx/lifecycle/LiveData;
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

    iget-object p0, p0, Lcom/zui/launcher3/PinnedAppListViewModel;->a:Lcom/zui/launcher3/l;

    return-object p0
.end method
