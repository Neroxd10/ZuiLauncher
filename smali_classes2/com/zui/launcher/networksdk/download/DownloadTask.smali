.class public Lcom/zui/launcher/networksdk/download/DownloadTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;
    }
.end annotation


# static fields
.field public static final PARENT_DIR:Ljava/lang/String; = "/.ZuiDesktop/dummyApks/"

.field private static v:Ljava/lang/String; = "rwd"


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

.field private c:Lcom/zui/launcher/networksdk/DownloadEntity;

.field private d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

.field private e:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

.field private f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:D

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

.field t:Landroid/os/Handler;

.field private u:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTask$a;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->t:Landroid/os/Handler;

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$b;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->u:Lretrofit2/Callback;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setClient(Lokhttp3/OkHttpClient;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadService()Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setDownloadService(Lcom/zui/launcher/networksdk/RetrofitDownloadService;)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->m()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;Lcom/zui/launcher/networksdk/download/DownloadTask$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;-><init>(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/download/DownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/networksdk/download/DownloadTask;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/networksdk/download/DownloadTask;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    return p1
.end method

.method static synthetic g(Lcom/zui/launcher/networksdk/download/DownloadTask;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTask;->n(Lretrofit2/Response;)V

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/networksdk/download/DownloadTask;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->e:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/launcher/networksdk/download/DownloadTask;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I

    return p0
.end method

.method static synthetic j(Lcom/zui/launcher/networksdk/download/DownloadTask;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I

    return p1
.end method

.method static synthetic k(Lcom/zui/launcher/networksdk/download/DownloadTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    return-wide v0
.end method

.method private l(Ljava/io/Closeable;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->a(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->b(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->c(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->d(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->e(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->f(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->e:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->g(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    return-void
.end method

.method private n(Lretrofit2/Response;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  download start, headers===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadTask"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  download start, response.code==="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->code()I

    move-result v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->v(I)V

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/ResponseBody;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  contentType======"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    const-string v5, "Content-MD5"

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->q:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  verify md5======"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x2

    iput v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    iget-wide v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  begin download, completedSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ,totalSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/16 v11, 0x64

    div-long/2addr v7, v11

    long-to-double v7, v7

    iput-wide v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->l:D

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    cmp-long v8, v11, v9

    if-lez v8, :cond_3

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v8, v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_1
    move-object v4, v8

    iget-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-nez v7, :cond_4

    new-instance v7, Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    iget v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    move-object v11, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/zui/launcher/networksdk/DownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v8, v7}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_4
    const/16 v7, 0x800

    new-array v7, v7, [B

    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-lez v8, :cond_6

    iget v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_6

    iget v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_6

    invoke-virtual {v4, v7, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    int-to-long v13, v8

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    add-int/2addr v10, v8

    int-to-double v13, v10

    move v8, v10

    iget-wide v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->l:D

    cmpl-double v9, v13, v9

    if-ltz v9, :cond_5

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  spent: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v5

    long-to-double v5, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v8

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_7
    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v0, :cond_8

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_8
    invoke-direct {v1, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    if-eqz v2, :cond_13

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v2, v4

    :goto_4
    :try_start_2
    invoke-direct {v1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->r(Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_9
    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v0, :cond_a

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-direct {v1, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_b
    if-eqz v2, :cond_13

    :goto_5
    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v4

    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x4

    iput v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v0, 0x7

    iput v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_c
    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v0, :cond_d

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v0, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_d
    if-eqz v4, :cond_e

    invoke-direct {v1, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_e
    if-eqz v2, :cond_13

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_f
    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v3, :cond_10

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-direct {v1, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_11
    if-eqz v2, :cond_12

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_12
    throw v0

    :cond_13
    :goto_8
    return-void
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.ZuiDesktop/dummyApks/"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private r(Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iget v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException------------message-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException------------cause-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException------------string- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException------------class- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/net/SocketException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unexpected end of stream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected end of stream, id : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->u()V

    return-void

    :cond_2
    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "SocketTimeoutException-------------"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    :goto_1
    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    return-void
.end method

.method private s()Z
    .locals 6

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->t:Landroid/os/Handler;

    iget v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->updateDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    return-void
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-wide v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->restart(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    return-void
.end method

.method private v(I)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    return-void
.end method

.method private w(Ljava/nio/channels/FileChannel;Ljava/nio/MappedByteBuffer;)V
    .locals 5

    const-string p0, "DownloadTask"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "unmap"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/nio/MappedByteBuffer;

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-class v2, Ljava/nio/channels/FileChannel;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "unmap first success!"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "unmap first fail!"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v2, "cleaner"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "clean"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "!!!!!!!!!! : unmap success"

    invoke-static {p0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "!!!!!!!!!! : unmap fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;)V
    .locals 1

    iput-object p2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object p2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->e:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/zui/launcher/networksdk/download/DownloadTaskListener;->onCancel(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadTask cancel dbEntity --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  packageName --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mDownloadDao -->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DownloadTask"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public delete()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public deleteFinishFile(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->s:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->s:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/networksdk/RetrofitDownloadService;->download(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDownLoadPercent()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    long-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide/16 v2, 0x0

    cmpl-double p0, v4, v2

    const-string v2, "0"

    if-lez p0, :cond_0

    div-double/2addr v0, v4

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v3

    new-instance p0, Ljava/text/DecimalFormat;

    invoke-direct {p0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getDownloadStatus()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    return-object p0
.end method

.method public isAppDownloadingOrInstalling()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

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

.method public run()V
    .locals 33

    move-object/from16 v1, p0

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1c

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread name ==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadTask"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->r:Z

    const/4 v5, 0x7

    const/4 v6, 0x4

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->q()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/networksdk/DownloadEntity;

    iput-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-string v10, " ,totalSize="

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v9}, Lcom/zui/launcher/networksdk/DownloadEntity;->getCompletedSize()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v9}, Lcom/zui/launcher/networksdk/DownloadEntity;->getTotalSize()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read data from base, completedSize="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v8}, Lcom/zui/launcher/networksdk/download/DownloadTask;->deleteFinishFile(Ljava/lang/String;)V

    :goto_0
    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  completedSize="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", fileLength=="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_5

    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    cmp-long v9, v13, v11

    if-gtz v9, :cond_5

    const/4 v3, 0x5

    iput v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    iput-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    iput-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    new-instance v3, Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v14, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    iget-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    iget v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    move-object v13, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Lcom/zui/launcher/networksdk/DownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v8, v3}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  =====totalSize===== "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_2
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_3

    iget-wide v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_3
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_4

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    iget v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_29

    iget v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v12, 0x6

    if-ne v9, v12, :cond_6

    goto/16 :goto_d

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  download start, completedSize="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  download start, url="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Lcom/zui/launcher/Utilities;->isMoba()Z

    move-result v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const-string v7, "-"

    const-string v15, "bytes="

    if-eqz v9, :cond_a

    :try_start_3
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->u:Lretrofit2/Callback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_7
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_8

    iget-wide v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_8
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_9

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_9
    return-void

    :cond_a
    :try_start_4
    new-instance v9, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownloadTask;->v:Ljava/lang/String;

    invoke-direct {v9, v8, v3}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v8, "RANGE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v13

    iget-wide v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    iget-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v7, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-nez v3, :cond_f

    :try_start_5
    iput v6, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    iput v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_b
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_c

    iget-wide v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_c
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_d

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_d
    if-eqz v3, :cond_e

    invoke-direct {v1, v3}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    :cond_f
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  download start, headers===\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  download start, response.code==="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->v(I)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_10
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_11

    iget-wide v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_11
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_12

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_12
    if-eqz v3, :cond_13

    invoke-direct {v1, v3}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_13
    return-void

    :cond_14
    :try_start_7
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_21

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  contentType======"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_19

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    if-eqz v9, :cond_19

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_19

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->v(I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_15
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_16

    iget-wide v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_16
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_17

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_17
    if-eqz v3, :cond_18

    invoke-direct {v1, v3}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_18
    return-void

    :cond_19
    :try_start_8
    invoke-virtual {v3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    const-string v9, "Verify"

    invoke-virtual {v8, v9}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->q:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  verify md5======"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->q:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    iput v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    iget-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-gtz v8, :cond_1a

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  begin download, completedSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/16 v12, 0x64

    div-long/2addr v8, v12

    long-to-double v8, v8

    iput-wide v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->l:D

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    iget-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-nez v10, :cond_1b

    new-instance v10, Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    iget-object v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iget-object v14, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    iget-object v15, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    iget v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move-object/from16 v32, v5

    invoke-direct/range {v24 .. v32}, Lcom/zui/launcher/networksdk/DownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v5, v10}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1b
    iget-wide v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    const-wide/32 v14, 0xc800000

    cmp-long v5, v12, v14

    if-ltz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1

    :cond_1c
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->r:Z

    if-eqz v5, :cond_1d

    const/16 v5, 0x1000

    new-array v5, v5, [B

    iget-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    iget-wide v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v7, v12, v13}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->seek(J)V

    const/4 v7, 0x0

    const/16 v17, 0x0

    goto :goto_2

    :cond_1d
    const/16 v5, 0x800

    new-array v5, v5, [B

    iget-object v10, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    sget-object v25, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v12, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v28

    move-object/from16 v24, v10

    move-wide/from16 v26, v12

    invoke-virtual/range {v24 .. v29}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v17, v10

    :goto_2
    :try_start_c
    invoke-virtual {v9, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v12, 0x0

    :goto_3
    if-lez v10, :cond_20

    iget v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    if-eq v13, v11, :cond_20

    iget v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_20

    iget-boolean v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->r:Z
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v13, :cond_1e

    :try_start_d
    iget-object v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    const/4 v15, 0x0

    invoke-virtual {v13, v5, v15, v10}, Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;->write([BII)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_1e
    const/4 v13, 0x0

    :try_start_e
    invoke-virtual {v7, v5, v13, v10}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_4
    iget-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v15, v7

    int-to-long v6, v10

    add-long/2addr v13, v6

    :try_start_f
    iput-wide v13, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    add-int/2addr v12, v10

    int-to-double v6, v12

    move v10, v12

    iget-wide v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->l:D

    cmpl-double v6, v6, v11

    if-ltz v6, :cond_1f

    iget-object v6, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v6, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    const/4 v12, 0x0

    goto :goto_5

    :cond_1f
    move v12, v10

    :goto_5
    invoke-virtual {v9, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    move-object v7, v15

    const/4 v6, 0x4

    const/4 v11, 0x3

    goto :goto_3

    :cond_20
    move-object v15, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  spent: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v22

    long-to-double v6, v6

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v7, v15

    move-object/from16 v2, v17

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v7, v15

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v7, v15

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v7, v15

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v15, v7

    :goto_6
    move-object v2, v0

    :goto_7
    move-object/from16 v10, v17

    goto/16 :goto_1b

    :catch_6
    move-exception v0

    move-object v15, v7

    :goto_8
    move-object v2, v0

    :goto_9
    move-object/from16 v10, v17

    goto/16 :goto_14

    :catch_7
    move-exception v0

    move-object v15, v7

    :goto_a
    move-object v2, v0

    :goto_b
    move-object/from16 v10, v17

    goto/16 :goto_19

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_14

    :catch_9
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_19

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_10

    :catch_a
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_18

    :catchall_6
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_f

    :catch_c
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_12

    :catch_d
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    goto/16 :goto_17

    :cond_21
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_22
    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v4, :cond_23

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_23
    if-eqz v7, :cond_24

    invoke-direct {v1, v2, v7}, Lcom/zui/launcher/networksdk/download/DownloadTask;->w(Ljava/nio/channels/FileChannel;Ljava/nio/MappedByteBuffer;)V

    :cond_24
    if-eqz v9, :cond_25

    invoke-direct {v1, v9}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_25
    if-eqz v8, :cond_26

    invoke-direct {v1, v8}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_26
    if-eqz v2, :cond_27

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_27
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_28

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_28
    if-eqz v3, :cond_3c

    goto/16 :goto_15

    :cond_29
    :goto_d
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  =====downloadStatus===== "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", so return~"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-nez v2, :cond_2a

    new-instance v2, Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->g:Ljava/lang/String;

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->j:Ljava/lang/String;

    iget-object v8, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->k:Ljava/lang/String;

    iget-object v9, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->m:Ljava/lang/String;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->n:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/zui/launcher/networksdk/DownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    invoke-virtual {v3, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_2b
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_2c

    iget-wide v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v3, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_2c
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_2d

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_2d
    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_e
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_f
    const/4 v9, 0x0

    :goto_10
    const/4 v10, 0x0

    goto/16 :goto_1b

    :catch_e
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_11
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    const/4 v9, 0x0

    :goto_13
    const/4 v10, 0x0

    :goto_14
    :try_start_11
    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->r(Ljava/io/IOException;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_2e
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_2f

    iget-wide v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_2f
    if-eqz v7, :cond_30

    invoke-direct {v1, v10, v7}, Lcom/zui/launcher/networksdk/download/DownloadTask;->w(Ljava/nio/channels/FileChannel;Ljava/nio/MappedByteBuffer;)V

    :cond_30
    if-eqz v9, :cond_31

    invoke-direct {v1, v9}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_31
    if-eqz v8, :cond_32

    invoke-direct {v1, v8}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_32
    if-eqz v10, :cond_33

    invoke-direct {v1, v10}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_33
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_34

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_34
    if-eqz v3, :cond_3c

    :goto_15
    invoke-direct {v1, v3}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    goto :goto_1a

    :catch_f
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_16
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_17
    const/4 v9, 0x0

    :goto_18
    const/4 v10, 0x0

    :goto_19
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x4

    iput v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    const/4 v2, 0x7

    iput v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->p:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_35
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v2, :cond_36

    iget-wide v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_36
    if-eqz v7, :cond_37

    invoke-direct {v1, v10, v7}, Lcom/zui/launcher/networksdk/download/DownloadTask;->w(Ljava/nio/channels/FileChannel;Ljava/nio/MappedByteBuffer;)V

    :cond_37
    if-eqz v9, :cond_38

    invoke-direct {v1, v9}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_38
    if-eqz v8, :cond_39

    invoke-direct {v1, v8}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_39
    if-eqz v10, :cond_3a

    invoke-direct {v1, v10}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_3a
    iget-object v2, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v2, :cond_3b

    invoke-direct {v1, v2}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_3b
    if-eqz v3, :cond_3c

    goto :goto_15

    :cond_3c
    :goto_1a
    return-void

    :catchall_8
    move-exception v0

    move-object v2, v0

    :goto_1b
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->s()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->t()V

    :cond_3d
    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    if-eqz v4, :cond_3e

    iget-wide v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setCompletedSize(Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    iget v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zui/launcher/networksdk/DownloadEntity;->setDownloadStatus(Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    iget-object v5, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->c:Lcom/zui/launcher/networksdk/DownloadEntity;

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_3e
    if-eqz v7, :cond_3f

    invoke-direct {v1, v10, v7}, Lcom/zui/launcher/networksdk/download/DownloadTask;->w(Ljava/nio/channels/FileChannel;Ljava/nio/MappedByteBuffer;)V

    :cond_3f
    if-eqz v9, :cond_40

    invoke-direct {v1, v9}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_40
    if-eqz v8, :cond_41

    invoke-direct {v1, v8}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_41
    if-eqz v10, :cond_42

    invoke-direct {v1, v10}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_42
    iget-object v4, v1, Lcom/zui/launcher/networksdk/download/DownloadTask;->b:Lcom/zui/launcher/networksdk/download/BufferedRandomAccessFile;

    if-eqz v4, :cond_43

    invoke-direct {v1, v4}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_43
    if-eqz v3, :cond_44

    invoke-direct {v1, v3}, Lcom/zui/launcher/networksdk/download/DownloadTask;->l(Ljava/io/Closeable;)V

    :cond_44
    throw v2

    :cond_45
    :goto_1c
    return-void
.end method

.method public setBuilder(Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->f:Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->m()V

    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public setCompletedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->i:J

    return-void
.end method

.method public setDownloadDao(Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->d:Lcom/zui/launcher/networksdk/greendao/DownloadEntityDao;

    return-void
.end method

.method public setDownloadService(Lcom/zui/launcher/networksdk/RetrofitDownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->s:Lcom/zui/launcher/networksdk/RetrofitDownloadService;

    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->o:I

    return-void
.end method

.method public setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->e:Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    :cond_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/networksdk/download/DownloadTask;->h:J

    return-void
.end method
