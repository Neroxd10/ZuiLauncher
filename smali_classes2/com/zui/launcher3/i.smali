.class Lcom/zui/launcher3/i;
.super Landroidx/lifecycle/LiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lcom/zui/launcher3/AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher3/i;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/zui/launcher3/i;->d()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher3/i;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/i;->a:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher3/i;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher3/i;->b:I

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher3/i;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher3/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher3/i;->b:I

    new-instance v1, Lcom/zui/launcher3/i$a;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher3/i$a;-><init>(Lcom/zui/launcher3/i;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
