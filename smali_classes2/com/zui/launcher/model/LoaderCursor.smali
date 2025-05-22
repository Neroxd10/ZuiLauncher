.class public Lcom/zui/launcher/model/LoaderCursor;
.super Landroid/database/CursorWrapper;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field public final allUsers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Lcom/zui/launcher/icons/IconCache;

.field public container:I

.field private final d:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final e:Lcom/zui/launcher/util/IntArray;

.field private final f:Lcom/zui/launcher/util/IntArray;

.field private final g:Lcom/zui/launcher/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "Lcom/zui/launcher/util/GridOccupancy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field public final hasActiveIconIndex:I

.field private final i:I

.field public id:I

.field public itemType:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field public final needConfigIndex:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field public restoreFlag:I

.field private final s:I

.field public serialNumber:J

.field private final t:I

.field public final titleIndex:I

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public user:Landroid/os/UserHandle;

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/zui/launcher/LauncherAppState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    new-instance p1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->e:Lcom/zui/launcher/util/IntArray;

    new-instance p1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->f:Lcom/zui/launcher/util/IntArray;

    new-instance p1, Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/zui/launcher/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->v:Ljava/util/ArrayList;

    new-instance p1, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-direct {p1}, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->d:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->b:Landroid/content/pm/PackageManager;

    const-string p1, "icon"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->j:I

    const-string p1, "iconPackage"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->h:I

    const-string p1, "iconResource"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->i:I

    const-string p1, "title"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->titleIndex:I

    const-string p1, "_id"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->k:I

    const-string p1, "container"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->l:I

    const-string p1, "itemType"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->m:I

    const-string p1, "screen"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->n:I

    const-string p1, "cellX"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->o:I

    const-string p1, "cellY"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->p:I

    const-string p1, "profileId"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->q:I

    const-string p1, "restored"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->r:I

    const-string p1, "intent"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->s:I

    const-string p1, "hasActiveIcon"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->hasActiveIconIndex:I

    const-string p1, "uri"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->t:I

    const-string p1, "needConfig"

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/LoaderCursor;->needConfigIndex:I

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderCursor;->d()V

    return-void
.end method

.method private a(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 5

    new-instance v0, Lcom/zui/launcher/LauncherModel$NewShortcutKey;

    invoke-direct {v0, p1}, Lcom/zui/launcher/LauncherModel$NewShortcutKey;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->add(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->getExistShortKey(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Lcom/zui/launcher/LauncherModel$NewShortcutKey;

    move-result-object v1

    iget-object v3, v1, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->info:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq v3, v2, :cond_0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    :cond_0
    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {p1}, Lcom/zui/launcher/LauncherModel;->isAppType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->remove(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Z

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->w:Lcom/zui/launcher/LauncherModel$ShortcutHashSet;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherModel$ShortcutHashSet;->add(Lcom/zui/launcher/LauncherModel$NewShortcutKey;)Z

    iget-object p1, v1, Lcom/zui/launcher/LauncherModel$NewShortcutKey;->info:Lcom/zui/launcher/WorkspaceItemInfo;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----->checkDuplicate shortcut----remove current id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private b(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    if-gt v0, p0, :cond_1

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x64

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "activeicon.weather.zui.com.weather"

    const-string v3, "activeicon.weather.zui.com.weather.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.zui.weather"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.dialer.app.DialtactsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.zui.contacts/com.android.newcontact.vl.activity.DialpadShutcut"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.example.homedemo"

    const-string v3, "com.example.homedemo.ResolveInfoDemo11"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.example.homedemo1/com.example.homedemo1.ResolveInfoDemo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.zui.safecenter"

    const-string v2, "com.lenovo.safecenter.MainTab.LeSafeMainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.zui.safecenters"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/model/LoaderCursor;->f(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/zui/launcher/Utilities;->resolveAppInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    const/16 p2, 0x40

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyCommonProperties(Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->container:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->n:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->o:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->p:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    return-void
.end method

.method public checkAndAddItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/model/BgDataModel;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->b(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "--------checkItemDimension failed-----"

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    instance-of p1, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->v:Ljava/util/ArrayList;

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/model/LoaderCursor;->a(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->checkItemPlacement(Lcom/zui/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lcom/zui/launcher/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    return-void

    :cond_3
    const-string p2, "Item position overlap"

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    instance-of p1, p1, Lcom/zui/launcher/FolderInfo;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->v:Ljava/util/ArrayList;

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected checkItemPlacement(Lcom/zui/launcher/ItemInfo;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->container:I

    const-string v4, ") already occupied"

    const-string v5, ")"

    const-string v6, ":"

    const-string v7, "Error loading shortcut "

    const/16 v8, -0x65

    const-string v9, "LoaderCursor"

    const-string v10, ","

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v3, v8, :cond_3

    iget-object v2, v0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/GridOccupancy;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v13, v0, Lcom/zui/launcher/model/LoaderCursor;->d:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v13, v13, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    if-lt v3, v13, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into hotseat position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position out of bounds: (0 to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/zui/launcher/model/LoaderCursor;->d:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr v0, v12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    aget-object v2, v0, v3

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading shortcut into hotseat "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into position ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v0, v0, v3

    aput-boolean v12, v0, v11

    return v12

    :cond_2
    new-instance v2, Lcom/zui/launcher/util/GridOccupancy;

    invoke-direct {v2, v13, v12}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iget-object v3, v2, Lcom/zui/launcher/util/GridOccupancy;->cells:[[Z

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget-object v1, v3, v1

    aput-boolean v12, v1, v11

    iget-object v0, v0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v12

    :cond_3
    const/16 v8, -0x64

    if-eq v3, v8, :cond_4

    return v12

    :cond_4
    iget-object v13, v0, Lcom/zui/launcher/model/LoaderCursor;->d:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v14, v13, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v13, v13, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    const-string v15, "-"

    const-string v11, " into cell ("

    if-ne v3, v8, :cond_5

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz v3, :cond_a

    :cond_5
    iget v3, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ltz v3, :cond_a

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v12, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v8, v12

    if-gt v8, v14, :cond_a

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v3, v8

    if-le v3, v13, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v21

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v5, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v3, v5}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lcom/zui/launcher/util/GridOccupancy;

    const/4 v5, 0x1

    add-int/lit8 v8, v14, 0x1

    add-int/2addr v13, v5

    invoke-direct {v3, v8, v13}, Lcom/zui/launcher/util/GridOccupancy;-><init>(II)V

    iget v5, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-nez v5, :cond_7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, v3

    move/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lcom/zui/launcher/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_7
    iget-object v5, v0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v5, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    iget-object v0, v0, Lcom/zui/launcher/model/LoaderCursor;->g:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/GridOccupancy;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v12, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v3, v5, v8, v12}, Lcom/zui/launcher/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/zui/launcher/util/GridOccupancy;->markCells(Lcom/zui/launcher/ItemInfo;Z)V

    return v3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") out of screen bounds ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public commitDeleted()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->e:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->e:Lcom/zui/launcher/util/IntArray;

    const-string v2, "_id"

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public commitRestoredItems()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->f:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {v0}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->f:Lcom/zui/launcher/util/IntArray;

    const-string v3, "_id"

    invoke-static {v3, p0}, Lcom/zui/launcher/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/zui/launcher/util/IntArray;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v3, "LoaderCursor"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v0, "Null user found in getShortcutInfo"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    const-string v2, "zui.launcher.key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const-string v7, " is download pause.."

    const-string v8, "ppp==="

    const/4 v9, -0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "Missing component found in getShortcutInfo"

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->useDummyIcon(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v4

    :cond_2
    new-instance v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v3}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iput v11, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v4, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v1, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iput v12, v3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iput v10, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v1, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/zui/launcher/DownloadSpan;->isDownloadNotStarted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v9}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zui/launcher/AppStoreUtil;->getProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    :goto_1
    iget-object v1, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zui/launcher/DownloadSpan;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v3, v12}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :cond_4
    iget-object v1, v3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    iget-object v1, v1, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v4}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    iget-object v2, v3, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v2, v2, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/icons/IconCache;->isDummyIcon(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {v0, v3}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    :cond_6
    iget-object v1, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------LoaderCursor--info.title is empty--readTitle from db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugIconTitle(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_8
    iget-object v0, v0, Lcom/zui/launcher/model/LoaderCursor;->b:Landroid/content/pm/PackageManager;

    iget-object v1, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v3, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    return-object v3

    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "com.android.dialer/.app.DialtactsActivity"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v5, "ZuiDialer"

    :goto_2
    move v3, v12

    goto :goto_3

    :cond_a
    const-string v3, "com.android.dialer/.app.PeopleActivity"

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v5, "ZuiContacts"

    goto :goto_2

    :cond_b
    move v3, v11

    :goto_3
    new-instance v13, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v13}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iput v11, v13, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v14, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v14, v13, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/zui/launcher/Utilities;->makeActiveIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    iget-object v15, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v15, v14, v9}, Lcom/zui/launcher/Utilities;->resolveInfos(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/zui/launcher/Utilities;->resolveAppInfo(Ljava/util/List;Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    const-string v10, "action.ACTION_PLAY_ANIM"

    if-nez v15, :cond_1f

    invoke-static {v6}, Lcom/zui/launcher/Utilities;->makeStaticIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    const-class v11, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v11, v12}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_d

    iget-object v11, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move/from16 v16, v3

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v4, v11, v12, v3}, Lcom/zui/launcher/Utilities;->trimLauncherActivityList(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v17, v3

    invoke-virtual {v12}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v11, v12

    :cond_c
    move-object/from16 v3, v17

    goto :goto_4

    :cond_d
    move/from16 v16, v3

    const/4 v11, 0x0

    :cond_e
    iput-object v14, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v11, :cond_1e

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/zui/launcher/model/LoaderCursor;->u:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    :cond_f
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zui/launcher/Utilities;->makeActiveIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    iget-object v14, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v12, v14, v3}, Lcom/zui/launcher/model/LoaderCursor;->e(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/ComponentName;)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    if-nez v15, :cond_11

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->makeStaticIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    iget-object v12, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    const-class v14, Landroid/content/pm/LauncherApps;

    invoke-virtual {v12, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherApps;

    iget-object v14, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v12, v11, v14}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v12

    if-eqz v12, :cond_10

    iput-object v11, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    :cond_10
    move-object v14, v11

    move-object v11, v12

    goto :goto_5

    :cond_11
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/zui/launcher/ItemInfoWithIcon;->setActiveIconApp(Z)V

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v12, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v14, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v14, :cond_12

    invoke-virtual {v14, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/zui/launcher/ItemInfoWithIcon;->setAnimReceiver(Z)V

    :cond_12
    move-object v14, v12

    :goto_5
    if-nez v15, :cond_13

    if-eqz v11, :cond_14

    :cond_13
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    :cond_14
    if-nez v15, :cond_1d

    if-nez v11, :cond_1d

    if-eqz v5, :cond_16

    sget-object v12, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v12, v12, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherApps:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/content/pm/ResolveInfo;

    if-eqz v15, :cond_16

    iget-object v3, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v1, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v12, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v12, :cond_15

    invoke-virtual {v12, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v13, v12}, Lcom/zui/launcher/ItemInfoWithIcon;->setAnimReceiver(Z)V

    :cond_15
    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Lcom/zui/launcher/ItemInfoWithIcon;->setActiveIconApp(Z)V

    :cond_16
    if-nez v15, :cond_1d

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zui/launcher/Utilities;->makeActiveIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-nez v9, :cond_17

    move-object/from16 v17, v3

    const/4 v3, 0x1

    const/4 v14, 0x0

    goto :goto_6

    :cond_17
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v17, v3

    const/4 v3, 0x1

    :goto_6
    if-eq v14, v3, :cond_1a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v3, :cond_19

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v4, :cond_18

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->makeStaticIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v3, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    move-object v14, v3

    move-object v11, v4

    move-object/from16 v17, v9

    const/4 v15, 0x0

    goto :goto_8

    :cond_18
    move-object v11, v4

    goto :goto_7

    :cond_19
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1c

    const/4 v3, 0x0

    return-object v3

    :cond_1a
    move v4, v3

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v13, v4}, Lcom/zui/launcher/ItemInfoWithIcon;->setActiveIconApp(Z)V

    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v12, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/zui/launcher/ItemInfoWithIcon;->setAnimReceiver(Z)V

    :cond_1b
    move-object v15, v9

    :cond_1c
    :goto_7
    move-object v14, v12

    goto :goto_8

    :cond_1d
    move-object/from16 v17, v3

    goto :goto_8

    :cond_1e
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v3, v17

    goto :goto_9

    :cond_1f
    move/from16 v16, v3

    move v3, v12

    invoke-virtual {v13, v3}, Lcom/zui/launcher/ItemInfoWithIcon;->setActiveIconApp(Z)V

    invoke-virtual {v14, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v14, v13, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iget-object v3, v15, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_20

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/zui/launcher/ItemInfoWithIcon;->setAnimReceiver(Z)V

    :cond_20
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_9
    iget-object v4, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_21

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    :cond_21
    if-eqz v15, :cond_22

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    const-class v9, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iget-object v9, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v14, v9}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v11

    if-nez v11, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------loadIcon activity  is null intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  resolve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  lai: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherLoad"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_22
    if-eqz v11, :cond_24

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    move/from16 v7, p3

    invoke-virtual {v4, v13, v11, v7}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    invoke-static {v13, v11}, Lcom/zui/launcher/AppInfo;->updateRuntimeFlagsForActivityTarget(Lcom/zui/launcher/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;)V

    :cond_23
    const/4 v4, 0x1

    goto/16 :goto_f

    :cond_24
    const/4 v4, 0x1

    iput v4, v13, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/16 v4, 0x8

    iput v4, v13, Lcom/zui/launcher/ItemInfo;->itemType:I

    :try_start_0
    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_25

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_25

    const/16 v4, 0x9

    iput v4, v13, Lcom/zui/launcher/ItemInfo;->subItemType:I

    goto :goto_a

    :cond_25
    if-eqz v4, :cond_26

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    return-object v4

    :catch_0
    :cond_26
    :goto_a
    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/zui/launcher/Utilities;->useDummyIcon(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x0

    return-object v4

    :cond_27
    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/zui/launcher/AppStoreHelperProvider;->loadData(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isInstalling()Z

    move-result v9

    goto :goto_b

    :cond_28
    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v13, v9}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isDownloading()Z

    move-result v9

    goto :goto_c

    :cond_29
    const/4 v9, 0x1

    :goto_c
    invoke-virtual {v13, v9}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->isPausing()Z

    move-result v4

    goto :goto_d

    :cond_2a
    const/4 v4, 0x1

    :goto_d
    invoke-virtual {v13, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/zui/launcher/AppStoreUtil;->getProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    goto :goto_e

    :cond_2b
    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/zui/launcher/DownloadSpan;->isDownloadNotStarted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, -0x1

    :goto_e
    invoke-virtual {v13, v4}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    :cond_2c
    iget-object v4, v0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    iget-object v9, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/zui/launcher/DownloadSpan;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v13, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :goto_f
    iget-object v7, v13, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    if-eqz v7, :cond_2d

    iget-object v8, v0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    iget-object v7, v7, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Lcom/zui/launcher/icons/cache/BaseIconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_2d

    iget-object v7, v13, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    invoke-virtual {v7}, Lcom/zui/launcher/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v7

    if-nez v7, :cond_2d

    iget-object v7, v0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    iget-object v8, v13, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v8, v8, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/zui/launcher/icons/IconCache;->isDummyIcon(Landroid/graphics/Bitmap;)Z

    move-result v7

    if-eqz v7, :cond_2e

    :cond_2d
    invoke-virtual {v0, v13}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    :cond_2e
    iget-object v7, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---LoaderCursor getAppShortcutInfo title empty fromdb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zui/launcher/util/Debug;->debugIconTitle(Ljava/lang/String;)V

    :cond_2f
    iget-object v7, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v7, :cond_30

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_30
    iget-object v7, v0, Lcom/zui/launcher/model/LoaderCursor;->b:Landroid/content/pm/PackageManager;

    iget-object v8, v13, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v9, v13, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v13, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/model/LoaderCursor;->updater()Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    if-nez v3, :cond_31

    move-object v7, v6

    goto :goto_10

    :cond_31
    move-object v7, v3

    :goto_10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "intent"

    if-eqz v8, :cond_32

    sget-object v8, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v8, v8, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    sget-object v8, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v8, v8, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget-object v8, v8, Lcom/zui/launcher/model/BgDataModel;->sBgZuiLauncherMaps:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move v8, v4

    goto :goto_11

    :cond_32
    const/4 v7, 0x0

    move v8, v7

    :goto_11
    if-eqz v16, :cond_33

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move v8, v4

    :cond_33
    if-eqz v3, :cond_35

    invoke-virtual {v3, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_34
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move v14, v4

    goto :goto_12

    :cond_35
    move v14, v8

    :goto_12
    invoke-virtual {v13}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v13}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hasActiveIcon"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move v12, v4

    goto :goto_13

    :cond_36
    move v12, v14

    :goto_13
    if-eqz v12, :cond_37

    invoke-virtual {v0}, Lcom/zui/launcher/util/ContentWriter;->commit()I

    :cond_37
    return-object v13
.end method

.method public getRestoredItemInfo(Landroid/content/Intent;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 3

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object p1, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/icons/IconCache;->getTitleAndIcon(Lcom/zui/launcher/ItemInfoWithIcon;Z)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    const-string v1, " intent: "

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---LoaderCursor getRestoredItemInfo fromdb: "

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugIconTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---LoaderCursor getRestoredItemInfo 222 fromdb: "

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/model/LoaderCursor;->b:Landroid/content/pm/PackageManager;

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iget p1, p0, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    iput p1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    iput p0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->status:I

    return-object v0

    :cond_4
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid restoreType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWidgetIconFromCursor()Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherModel.getWidgetIconFromCursor app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasRestoreFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnWorkspaceOrHotseat()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->container:I

    const/16 v0, -0x64

    if-eq p0, v0, :cond_1

    const/16 v0, -0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/LauncherIcons;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/zui/launcher/icons/LauncherIcons;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method protected loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/LauncherIcons;)Z
    .locals 4

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->h:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/zui/launcher/model/LoaderCursor;->i:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v3, p1, Lcom/zui/launcher/WorkspaceItemInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->applyOriginalFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    iget-object p0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    iget p2, v0, Lcom/zui/launcher/icons/BitmapInfo;->color:I

    invoke-static {p0, p2}, Lcom/zui/launcher/icons/BitmapInfo;->of(Landroid/graphics/Bitmap;I)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iput-object p0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    return v1

    :cond_1
    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    array-length v2, p0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/zui/launcher/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode byte array for info "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoaderCursor"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public loadLeosWidget()Lcom/zui/launcher/LenovoWidgetViewInfo;
    .locals 4

    new-instance v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-direct {v0}, Lcom/zui/launcher/LenovoWidgetViewInfo;-><init>()V

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->titleIndex:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->t:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/LoaderCursor;->applyCommonProperties(Lcom/zui/launcher/ItemInfo;)V

    return-object v0
.end method

.method public loadSimpleWorkspaceItem()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 3

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-direct {p0}, Lcom/zui/launcher/model/LoaderCursor;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---LoaderCursor loadSimpleWorkspaceItem fromdb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugIconTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/model/LoaderCursor;->loadIcon(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->c:Lcom/zui/launcher/icons/IconCache;

    iget-object v1, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/ItemInfoWithIcon;->applyFrom(Lcom/zui/launcher/icons/BitmapInfo;)V

    :cond_0
    return-object v0
.end method

.method public markDeleted(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/LoaderCursor;->e:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    return-void
.end method

.method public markDeleted(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LoaderCursor"

    invoke-static {v0, p1}, Lcom/zui/launcher/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->e:Lcom/zui/launcher/util/IntArray;

    iget v2, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markDeleted reason:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public markRestored()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/model/LoaderCursor;->f:Lcom/zui/launcher/util/IntArray;

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    :cond_0
    return-void
.end method

.method public moveToNext()Z
    .locals 4

    invoke-super {p0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->m:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/model/LoaderCursor;->itemType:I

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->l:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/model/LoaderCursor;->container:I

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->k:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->q:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/zui/launcher/model/LoaderCursor;->serialNumber:J

    iget-object v3, p0, Lcom/zui/launcher/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iget v1, p0, Lcom/zui/launcher/model/LoaderCursor;->r:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/model/LoaderCursor;->restoreFlag:I

    :cond_0
    return v0
.end method

.method public parseIntent()Landroid/content/Intent;
    .locals 2

    iget v0, p0, Lcom/zui/launcher/model/LoaderCursor;->s:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    const-string p0, "LoaderCursor"

    const-string v1, "Error parsing Intent"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public updater()Lcom/zui/launcher/util/ContentWriter;
    .locals 5

    new-instance v0, Lcom/zui/launcher/util/ContentWriter;

    iget-object v1, p0, Lcom/zui/launcher/model/LoaderCursor;->a:Landroid/content/Context;

    new-instance v2, Lcom/zui/launcher/util/ContentWriter$CommitParams;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget p0, p0, Lcom/zui/launcher/model/LoaderCursor;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string p0, "_id= ?"

    invoke-direct {v2, p0, v3}, Lcom/zui/launcher/util/ContentWriter$CommitParams;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/util/ContentWriter;-><init>(Landroid/content/Context;Lcom/zui/launcher/util/ContentWriter$CommitParams;)V

    return-object v0
.end method
