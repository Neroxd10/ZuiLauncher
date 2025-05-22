.class Lcom/zui/launcher3/l;
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
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher3/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher3/l;->b:Landroid/content/pm/PackageManager;

    const-string v0, "pinned_apps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher3/a;

    invoke-direct {v0, p0}, Lcom/zui/launcher3/a;-><init>(Lcom/zui/launcher3/l;)V

    iput-object v0, p0, Lcom/zui/launcher3/l;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/zui/launcher3/l;->f()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher3/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher3/l;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher3/l;->b:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher3/l;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher3/l;->d:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher3/l;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher3/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher3/l;->d:I

    new-instance v1, Lcom/zui/launcher3/l$a;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher3/l$a;-><init>(Lcom/zui/launcher3/l;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public synthetic e(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher3/l;->f()V

    return-void
.end method
