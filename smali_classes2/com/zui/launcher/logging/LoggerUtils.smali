.class public Lcom/zui/launcher/logging/LoggerUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/logging/LoggerUtils;->a:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    const-class v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$ItemType;

    invoke-static {v0, v1}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", packageHash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", componentHash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", intentHash="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    const/16 v2, 0x9

    if-nez v1, :cond_3

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->componentHash:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->intentHash:I

    if-eqz v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", predictiveRank="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", grid("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), span("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), pageIdx="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", searchQueryLength="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->searchQueryLength:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    if-ne v1, v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pageIdx="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static extractObjectNameAndAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getActionStr(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Direction;

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    const/4 v2, 0x4

    const-string v3, " direction="

    const/4 v4, 0x3

    const-string v5, ""

    if-eqz v1, :cond_1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    const-class p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Type;

    invoke-static {v1, p0}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    const-class v6, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Command;

    invoke-static {v5, v6}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    const-class v6, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action$Touch;

    invoke-static {v5, v6}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eq v5, v4, :cond_2

    if-ne v5, v2, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    invoke-static {v1, v0}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    iget v5, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eq v5, v4, :cond_4

    if-eq v5, v2, :cond_4

    iget v2, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->dir:I

    invoke-static {p0, v0}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static getFieldName(ILjava/lang/Class;)Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/zui/launcher/logging/LoggerUtils;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/logging/LoggerUtils;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v2, Lcom/zui/launcher/logging/LoggerUtils;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "UNKNOWN"

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static getTargetStr(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    const-string v2, ")"

    const-string v3, ","

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UNKNOWN TARGET TYPE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    const-class v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$ContainerType;

    invoke-static {v0, v1}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    const/16 v5, 0xb

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v6, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " grid("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridX:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->gridY:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    const-class v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$ControlType;

    invoke-static {v0, v1}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcom/zui/launcher/logging/LoggerUtils;->a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    if-ne v1, v4, :cond_7

    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    if-eq v1, v4, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " span("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanX:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->spanY:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget v1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->tipType:I

    const-class v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$TipType;

    invoke-static {p0, v0}, Lcom/zui/launcher/logging/LoggerUtils;->getFieldName(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public static newAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;-><init>()V

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->type:I

    return-object v0
.end method

.method public static newCommandAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->command:I

    return-object v0
.end method

.method public static newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-object v0
.end method

.method public static newControlTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->controlType:I

    return-object v0
.end method

.method public static newDropTarget(Landroid/view/View;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    instance-of v0, p0, Lcom/zui/launcher/ButtonDropTarget;

    if-nez v0, :cond_0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    check-cast p0, Lcom/zui/launcher/ButtonDropTarget;

    invoke-virtual {p0}, Lcom/zui/launcher/ButtonDropTarget;->getDropTargetForLogging()Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    return-object p0
.end method

.method public static newItemTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    return-object v0
.end method

.method public static newItemTarget(Landroid/view/View;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    invoke-static {p0, p1}, Lcom/zui/launcher/logging/LoggerUtils;->newItemTarget(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static newItemTarget(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/util/InstantAppResolver;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v2, :cond_4

    const/4 p0, 0x2

    if-eq v2, v0, :cond_3

    const/4 p1, 0x4

    if-eq v2, p0, :cond_2

    if-eq v2, p1, :cond_1

    const/16 p0, 0x9

    if-eq v2, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    iput p1, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_1

    :cond_3
    :goto_0
    iput p0, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    instance-of v2, p0, Lcom/zui/launcher/AppInfo;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/zui/launcher/AppInfo;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/InstantAppResolver;->isInstantApp(Lcom/zui/launcher/AppInfo;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v0, 0xa

    :cond_5
    iput v0, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->itemType:I

    const/16 p0, -0x64

    iput p0, v1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    :goto_1
    return-object v1
.end method

.method public static varargs newLauncherEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;-><init>()V

    iput-object p1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iput-object p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    return-object v0
.end method

.method public static newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    return-object v0
.end method

.method public static newTarget(ILcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;
    .locals 1

    new-instance v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v0}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->type:I

    iput-object p1, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->extension:Lcom/zui/launcher/userevent/nano/LauncherLogExtensions$TargetExtension;

    return-object v0
.end method

.method public static newTouchAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zui/launcher/logging/LoggerUtils;->newAction(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    iput p0, v0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Action;->touch:I

    return-object v0
.end method
