.class public Lcom/zui/launcher/category/AllAppsCategory;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/zui/launcher/category/AllAppsCategory; = null

.field private static d:Z = false

.field private static final e:I

.field private static final f:I

.field private static g:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/category/AppsCategoryInfo;->DEFAULT_INDEX_OF_DB:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    sput v0, Lcom/zui/launcher/category/AllAppsCategory;->f:I

    const-string v0, "outbin"

    sput-object v0, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/category/AllAppsCategory$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/category/AllAppsCategory$a;-><init>(Lcom/zui/launcher/category/AllAppsCategory;)V

    iput-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->c:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/category/CategoryProvider;->loadData(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/category/AllAppsCategory;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget-object v2, v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/zui/launcher/category/CategoryProvider;->get(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/zui/launcher/category/AllAppsCategory;->f:I

    if-gt v2, v3, :cond_0

    if-ltz v2, :cond_0

    iput v2, v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget-object v3, v2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p0, v2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/AppInfo;

    iget-object v2, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget-object p1, p1, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v3, v2, p1, v4}, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->c:Ljava/util/Comparator;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    const-string p0, "app_category"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "filename_default"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string v0, "/sdcard/.ZuiDesktop/outbin/"

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    sput-object p0, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;
    .locals 1

    sget-object v0, Lcom/zui/launcher/category/AllAppsCategory;->INSTANCE:Lcom/zui/launcher/category/AllAppsCategory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/category/AllAppsCategory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zui/launcher/category/AllAppsCategory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/category/AllAppsCategory;->INSTANCE:Lcom/zui/launcher/category/AllAppsCategory;

    :cond_0
    sget-object p0, Lcom/zui/launcher/category/AllAppsCategory;->INSTANCE:Lcom/zui/launcher/category/AllAppsCategory;

    return-object p0
.end method


# virtual methods
.method public addItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    sget-object v2, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/zui/launcher/category/AllAppsCategory;->getApps(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSkipCase(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/category/AllAppsCategory;->isFolderWellregulated(Lcom/zui/launcher/FolderInfo;)I

    move-result v0

    if-ltz v0, :cond_0

    sget v1, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/category/CategorySettings;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/CategorySettings;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/category/CategorySettings;->addFolderIgnorePackages(JLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public native getAllAppsCategory(Landroid/content/res/AssetManager;Ljava/lang/String;[I)[I
.end method

.method public getApps(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/zui/launcher/category/AllAppsCategory;->d:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-direct {p0, p3}, Lcom/zui/launcher/category/AllAppsCategory;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/zui/launcher/category/AllAppsCategory;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget v5, v5, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "outbin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2}, Lcom/zui/launcher/category/AllAppsCategory;->getAllAppsCategory(Landroid/content/res/AssetManager;Ljava/lang/String;[I)[I

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "app_type_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/.ZuiDesktop/outbin/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/zui/launcher/category/AllAppsCategory;->updateAllAppsCategory(Ljava/lang/String;[I)[I

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR, INVALID PARAMS!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/category/CategoryLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pppp===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget-object v2, v2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    re[i]===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    aget v1, p1, v3

    sget v2, Lcom/zui/launcher/category/AllAppsCategory;->f:I

    if-ge v1, v2, :cond_6

    aget v1, p1, v3

    if-ltz v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    aget v2, p1, v3

    goto :goto_3

    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    sget v2, Lcom/zui/launcher/category/AllAppsCategory;->f:I

    :goto_3
    iput v2, v1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/zui/launcher/category/CategoryProvider;->addInfos(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->c:Ljava/util/Comparator;

    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public getCategoryApps(JI)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget v1, Lcom/zui/launcher/category/AllAppsCategory;->f:I

    if-ge p3, v1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/category/CategoryProvider;->getAll(Landroid/content/Context;JI)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public isFolderWellregulated(Lcom/zui/launcher/FolderInfo;)I
    .locals 9

    iget-object v0, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    sget v2, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v6, v5, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/zui/launcher/category/AllAppsCategory;->b(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  index : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    if-ltz v6, :cond_2

    sget v5, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    if-lt v6, v5, :cond_1

    goto :goto_1

    :cond_1
    aget v5, v2, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v6

    goto :goto_2

    :cond_2
    :goto_1
    sget v5, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    aget v6, v2, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const p0, 0x3f4ccccd    # 0.8f

    :goto_3
    sget p1, Lcom/zui/launcher/category/AllAppsCategory;->e:I

    if-ge v3, p1, :cond_6

    aget p1, v2, v3

    int-to-float p1, p1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr p1, v4

    int-to-float v4, v0

    div-float/2addr p1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  rate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/category/CategoryLog;->v(Ljava/lang/String;)V

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    cmpg-float v4, p1, p0

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    cmpl-float p1, p1, p0

    if-ltz p1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "categoryIndex : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    return v1
.end method

.method public isFolderWellregulated(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)I
    .locals 2

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v1, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/category/AllAppsCategory;->b(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/zui/launcher/category/AllAppsCategory;->b(Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public removeItems(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/AppInfo;

    iget-object v2, v2, Lcom/zui/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/category/AllAppsCategory;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    iget-object v5, v4, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/zui/launcher/category/CategoryProvider;->remove(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDefaultFileName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sput-object p2, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    const-string p0, "app_category"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "filename_default"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setup(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/launcher/category/AllAppsCategory;->getApps(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    return-void
.end method

.method public setup(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/category/AllAppsCategory;->b:Landroid/content/Context;

    sget-object v1, Lcom/zui/launcher/category/AllAppsCategory;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/zui/launcher/category/AllAppsCategory;->getApps(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/category/AllAppsCategory;->a:Ljava/util/List;

    return-void
.end method

.method public showToastThird(Landroid/content/Context;)V
    .locals 4

    const-string p0, "app_category"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "show_reorder_toast"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const p0, 0x7f1203b3

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public trackEventCreateFolder(I)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackEventCreateFolder----- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    const-string p0, "SmartFolder"

    const-string v0, "newfolder"

    if-ltz p1, :cond_0

    sget-object v1, Lcom/zui/launcher/category/AppsCategoryInfo;->REAPER_INDEX:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget p1, v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, v0, p1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public trackEventShowPanel(Lcom/zui/launcher/folder/Folder;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->isFirstOpen()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackEventShowPanel----- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/category/CategoryLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "SmartFolder"

    if-eqz p0, :cond_0

    const-string p0, "popofnew"

    const-string v1, "newfolder"

    goto :goto_0

    :cond_0
    const-string p0, "popoffolder"

    const-string v1, "openfolder"

    :goto_0
    invoke-static {v0, p0, v1, p1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public native updateAllAppsCategory(Ljava/lang/String;[I)[I
.end method
