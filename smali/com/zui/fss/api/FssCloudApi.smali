.class public Lcom/zui/fss/api/FssCloudApi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/api/IFssApi;


# static fields
.field public static final TAG:Ljava/lang/String; = "FssCloudApi"

.field private static volatile b:Lcom/zui/fss/api/FssCloudApi;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/fss/api/IFssApi;
    .locals 2

    sget-object v0, Lcom/zui/fss/api/FssCloudApi;->b:Lcom/zui/fss/api/FssCloudApi;

    if-nez v0, :cond_1

    const-class v0, Lcom/zui/fss/api/FssCloudApi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/fss/api/FssCloudApi;->b:Lcom/zui/fss/api/FssCloudApi;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/fss/api/FssCloudApi;

    invoke-direct {v1, p0}, Lcom/zui/fss/api/FssCloudApi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/zui/fss/api/FssCloudApi;->b:Lcom/zui/fss/api/FssCloudApi;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/fss/api/FssCloudApi;->b:Lcom/zui/fss/api/FssCloudApi;

    return-object p0
.end method


# virtual methods
.method public cancelTask(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$DeleteFileCallback;)V
    .locals 6

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$DeleteFileCallback;)V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V
    .locals 6

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;)V

    return-void
.end method

.method public listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/zui/fss/api/IFssApi$ListFilesCallback;)V
    .locals 7

    iget-object p0, p0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/zui/fss/api/IFssApi$ListFilesCallback;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/api/IFssApi$ProgressCallback;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/fss/api/IFssApi$ProgressCallback;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v0, p0

    iget-object v0, v0, Lcom/zui/fss/api/FssCloudApi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/fss/file/a;->a(Landroid/content/Context;)Lcom/zui/fss/file/a;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/zui/fss/file/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/zui/fss/api/IFssApi$ProgressCallback;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
