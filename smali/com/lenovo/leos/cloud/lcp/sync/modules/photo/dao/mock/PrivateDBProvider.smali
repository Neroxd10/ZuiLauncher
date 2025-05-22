.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->persist(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    :cond_1
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_0

    :catch_0
    move-object v4, v1

    :catch_1
    move-object v1, p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_0
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v5, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v5, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    invoke-direct {v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    :cond_3
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw v1

    :catch_2
    move-object v4, v1

    :goto_1
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    :cond_5
    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v4, p0, v2

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static containsImageSid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static delImageSid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    sget-object p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->sKey2CKey:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getImageCKey(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->sKey2CKey:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getImageSid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static declared-synchronized persist(Landroid/content/Context;)V
    .locals 7

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v4, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_0
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-array v1, v2, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v1, v2, [Ljava/io/Closeable;

    aput-object p0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    :goto_2
    :try_start_7
    new-array v5, v2, [Ljava/io/Closeable;

    aput-object v4, v5, v3

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setImageSid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->sKey2CKey:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized truncate(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-void

    :goto_2
    :try_start_6
    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
