.class abstract Lcom/zui/launcher/model/ModelWriter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field private final a:[Ljava/lang/StackTraceElement;

.field private final b:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

.field final synthetic c:Lcom/zui/launcher/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/ModelWriter;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-direct {p1, v0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter$a;->b:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter$a;->a:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected a(Lcom/zui/launcher/ItemInfo;I)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v0}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter$a;->a:[Ljava/lang/StackTraceElement;

    invoke-static {v1, p2, p1, v2}, Lcom/zui/launcher/model/ModelWriter;->c(Lcom/zui/launcher/model/ModelWriter;ILcom/zui/launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    const/16 v3, -0x64

    if-eq v1, v3, :cond_0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v1}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->folders:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v1, v4}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " container being set to: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", not in the list of folders"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ModelWriter"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v1}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    if-eqz v1, :cond_4

    iget v4, v1, Lcom/zui/launcher/ItemInfo;->container:I

    if-eq v4, v3, :cond_1

    iget v4, v1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v4, v2, :cond_4

    :cond_1
    iget v2, v1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v2}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v2}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v2

    iget-object v2, v2, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v1}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/launcher/model/BgDataModel;->itemsIdMap:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/util/IntSparseArrayMap;->containsKey(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne p2, v3, :cond_5

    iget-object p2, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {p2}, Lcom/zui/launcher/model/ModelWriter;->d(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/LauncherModel;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static/range {v1 .. v6}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPosition(IIIIII)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/model/ModelWriter$a;->c:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {p1}, Lcom/zui/launcher/model/ModelWriter;->b(Lcom/zui/launcher/model/ModelWriter;)Lcom/zui/launcher/model/BgDataModel;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/model/ModelWriter$a;->b:Lcom/zui/launcher/model/ModelWriter$ModelVerifier;

    invoke-virtual {p0}, Lcom/zui/launcher/model/ModelWriter$ModelVerifier;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
