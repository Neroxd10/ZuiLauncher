.class public Lcom/zui/launcher/networksdk/download/Downloader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static y:Ljava/lang/String;

.field private static final z:Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Landroid/content/Context;

.field private n:Landroid/net/Uri;

.field private o:Ljava/io/File;

.field private p:J

.field private q:[Ljava/lang/String;

.field private r:J

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zui/launcher/networksdk/download/Downloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->d:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->e:Z

    const/4 v4, 0x2

    iput v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->j:Z

    const-wide/16 v4, 0x400

    iput-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->k:J

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->l:J

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    sget-object v4, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->s:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->t:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->w:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->x:Z

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iput-wide p3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    aput-object p2, v4, v3

    invoke-direct {p0, p5, p2}, Lcom/zui/launcher/networksdk/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "no c done="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ";fileLen="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ";savefilename="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->d:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->e:Z

    const/4 v4, 0x2

    iput v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->j:Z

    const-wide/16 v4, 0x400

    iput-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->k:J

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->l:J

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    sget-object v4, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->s:Z

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->t:Z

    const-string v5, ""

    iput-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->w:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->x:Z

    sget-object v5, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Downloader"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    iput-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    iget-object p4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    aput-object p4, p1, v3

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/Downloader;->j([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/Downloader;->k(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6587\u4ef6\u5b58\u50a8\u8def\u5f84\u4e0d\u4e00\u81f4!!!file path is not same!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "done"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const-string p3, "max"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iput-object p4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    cmp-long p3, v5, v2

    if-nez p3, :cond_2

    cmp-long p3, v2, v0

    if-eqz p3, :cond_2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result p3

    if-eqz p3, :cond_2

    iput-boolean v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->j:Z

    :cond_2
    move-object p3, p4

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/Downloader;->b(Landroid/database/Cursor;)V

    invoke-direct {p0, p3, p2}, Lcom/zui/launcher/networksdk/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object p2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    const-string p3, "savepath"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    sget-object p1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "done="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ";fileLen="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ";savefilename="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/SystemUtil;->readSDCard()J

    move-result-wide v0

    invoke-static {}, Lcom/zui/launcher/networksdk/SystemUtil;->readSecondSdCard()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/networksdk/SystemUtil;->sdcardpath:Ljava/lang/String;

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/launcher/networksdk/SystemUtil;->innerpath:Ljava/lang/String;

    iput-wide v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    :goto_1
    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deleteFileAndDB file!!! path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->e()V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->c()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    const-string v2, "path=?"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v9, p0

    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start2---fileLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    iget-object v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v1, v11

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    invoke-direct {v9, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->j([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "path"

    iget-object v6, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "max"

    iget-wide v6, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "done"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "status"

    sget v4, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->initStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "savepath"

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "done"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const-string v2, "max"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "done="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";maxfilelen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";fileLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    iput-wide v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    new-instance v2, Ljava/io/File;

    iget-object v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/Downloader;->c()V

    :cond_2
    :goto_1
    invoke-direct {v9, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->b(Landroid/database/Cursor;)V

    iget-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    iput-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->k:J

    new-instance v1, Ljava/io/File;

    iget-object v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_3
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    const-string v2, "rws"

    invoke-direct {v12, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v12, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    iget-wide v13, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    iget-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    const-wide/16 v3, 0x1

    sub-long v7, v1, v3

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start3---done:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v10, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object/from16 v1, p0

    move-wide/from16 v17, v7

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->w:Ljava/util/HashMap;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v17

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->w:Ljava/util/HashMap;

    :goto_2
    move-object/from16 v2, p1

    invoke-direct {v9, v2, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->g(Ljava/lang/String;Ljava/util/HashMap;)Ljava/net/URLConnection;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v10, :cond_6

    const/4 v2, 0x1

    :try_start_2
    iget-object v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "222 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void

    :cond_6
    :try_start_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v15, Ljava/io/RandomAccessFile;

    iget-object v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    const-string v2, "rws"

    invoke-direct {v15, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v15, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start4---getInputStream raflen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    sget v3, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->startStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v9, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    const/16 v1, 0x2800

    new-array v12, v1, [B

    :cond_7
    :goto_4
    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    iget-boolean v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->e:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_8

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "download start15---abortAll"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iput v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    goto/16 :goto_9

    :cond_8
    iget-boolean v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->x:Z

    if-eqz v2, :cond_9

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "download start12---cancelAll"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-boolean v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->s:Z

    const/4 v13, 0x1

    if-ne v2, v13, :cond_a

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start12---DeleteAll"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V

    goto/16 :goto_9

    :cond_a
    iget-boolean v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->d:Z

    if-ne v2, v13, :cond_b

    iput v13, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/Downloader;->e()V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start7---remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_b
    const/4 v14, 0x0

    invoke-virtual {v15, v12, v14, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v2, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    int-to-long v4, v1

    add-long v7, v2, v4

    iput-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    iget-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v1, v7, v1

    if-lez v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V

    const/4 v1, 0x3

    iput v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start6---error done > fileLen --- fileLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", done:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    iget-boolean v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    if-ne v1, v13, :cond_7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    sget v3, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->pauseStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v9, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    sget-object v16, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    monitor-enter v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x6

    :try_start_7
    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "download start10---isPause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v13, v9, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "download start9---isPause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v16

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v2, v0

    iput v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v6, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v12, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    :goto_7
    monitor-exit v16

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v2, v0

    iput v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v6, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v12, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_7

    :goto_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1

    :cond_d
    :goto_9
    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start11 end!!! flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x1

    const-string v3, "error!!!"

    goto :goto_b

    :pswitch_0
    const/4 v2, 0x1

    const-string v3, "file is error,delete file!!!"

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    :goto_a
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_c

    :pswitch_1
    const/4 v2, 0x1

    const-string v3, "file is remove!!!"

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    goto :goto_a

    :goto_b
    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_a

    :goto_c
    :pswitch_2
    if-eqz v11, :cond_e

    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "111Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_d
    :try_start_b
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "222 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v15, v12

    :goto_f
    move-object/from16 v19, v11

    move-object v11, v10

    move-object/from16 v10, v19

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v15, v12

    :goto_10
    move-object/from16 v19, v11

    move-object v11, v10

    move-object/from16 v10, v19

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v11, v10

    move-object v15, v12

    const/4 v10, 0x0

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v11, v10

    move-object v15, v12

    const/4 v10, 0x0

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v15, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_15

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v15, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    goto/16 :goto_15

    :catch_9
    move-exception v0

    move-object v1, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_11
    :try_start_c
    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v10, :cond_f

    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "111Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_12
    if-eqz v15, :cond_10

    :try_start_e
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "222 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_13
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    :goto_14
    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_15
    if-eqz v10, :cond_12

    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_16

    :catch_c
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "111Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_16
    if-eqz v15, :cond_13

    :try_start_10
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_17

    :catch_d
    move-exception v0

    move-object v2, v0

    sget-object v3, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "222 Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_17
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private g(Ljava/lang/String;Ljava/util/HashMap;)Ljava/net/URLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URLConnection;"
        }
    .end annotation

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getDownloadConnByUrl url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_1
    const-string p2, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v0, p2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0xea60

    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 p2, 0x7530

    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    sget-object p2, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    sget-object p0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getDownloadConnByUrl e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 13

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->j([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "path"

    iget-object v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "max"

    iget-wide v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "done"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "status"

    sget v6, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->initStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "savepath"

    iget-object v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->c()V

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->b(Landroid/database/Cursor;)V

    invoke-direct {p0, p1, v9}, Lcom/zui/launcher/networksdk/download/Downloader;->g(Ljava/lang/String;Ljava/util/HashMap;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v10, :cond_3

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    sget v5, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->startStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v12, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->o:Ljava/io/File;

    const-string v1, "rws"

    invoke-direct {v12, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v12, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x2800

    new-array v0, v0, [B

    :cond_5
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    iget-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->s:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download start12---DeleteAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    const-string v0, "\u4e3b\u52a8\u5220\u9664!!!"

    goto/16 :goto_4

    :cond_6
    iget-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->d:Z

    if-ne v3, v4, :cond_7

    iput v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    const-string v0, "\u79fb\u8d70!!!"

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start7---remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    iget-boolean v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    const/4 v3, 0x6

    if-ne v1, v4, :cond_8

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "status"

    sget v6, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->pauseStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v5, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "download start10---isPause"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    sget-object v4, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    sget-object v4, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "download start9---isPause"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    monitor-exit v1

    goto :goto_4

    :catch_1
    move-exception v0

    iput v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :cond_8
    :goto_3
    iget-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const-wide/32 v6, 0xc800000

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    iput v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    const-string v0, "\u6587\u4ef6\u592a\u5927\u8d85\u8fc7200M\u4e86"

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_9
    move-object v3, v9

    :goto_5
    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download start11 end!!! flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    if-eqz v11, :cond_b

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "111Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    :try_start_9
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "222 Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    if-eqz v10, :cond_e

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v12, v9

    :goto_9
    move-object v9, v11

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v12, v9

    :goto_a
    move-object v9, v11

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v9

    goto/16 :goto_f

    :catch_6
    move-exception v0

    move-object v12, v9

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v10, v9

    move-object v12, v10

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object v10, v9

    move-object v12, v10

    :goto_b
    :try_start_a
    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v9, :cond_c

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "111Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    if-eqz v12, :cond_d

    :try_start_c
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "222 Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_d
    if-eqz v10, :cond_e

    :goto_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_f
    if-eqz v9, :cond_f

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "111Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_10
    if-eqz v12, :cond_10

    :try_start_e
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "222 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_11
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v1
.end method

.method private i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->t:Z

    return p0
.end method

.method private j([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "path=?"

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private k(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "savepath"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private l(ZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 10

    move-object v9, p0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDwonLoadMessage \u4e0b\u8f7d\u51fa\u9519! path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    sget v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->pauseStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "status"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    iget-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    const/16 v7, -0x131a

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->p(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->q(Z)V

    return-void
.end method

.method private m(ZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lcom/zui/launcher/networksdk/download/Downloader;->l(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/zui/launcher/networksdk/download/Downloader;->n(ZLjava/lang/String;Ljava/lang/String;JJ)V

    :goto_0
    return-void
.end method

.method private n(ZLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12

    move-object v9, p0

    move-wide/from16 v5, p6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    iget-wide v1, v9, Lcom/zui/launcher/networksdk/download/Downloader;->l:J

    sub-long v3, v5, v1

    iget-wide v7, v9, Lcom/zui/launcher/networksdk/download/Downloader;->k:J

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    if-gtz v3, :cond_1

    cmp-long v1, v1, v7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v5, v9, Lcom/zui/launcher/networksdk/download/Downloader;->l:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_2

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "done"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    move v1, v10

    :goto_1
    cmp-long v2, p4, v5

    if-nez v2, :cond_3

    cmp-long v2, p4, v7

    if-eqz v2, :cond_3

    sget v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->finshStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v10

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v4

    :goto_2
    if-ne v1, v10, :cond_4

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->r(Landroid/content/ContentValues;)V

    const/16 v7, -0x1319

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->p(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    :cond_4
    if-ne v11, v10, :cond_5

    invoke-direct {p0, v10}, Lcom/zui/launcher/networksdk/download/Downloader;->q(Z)V

    :cond_5
    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p7

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PROGRESS_TOTALLEN:Ljava/lang/String;

    invoke-virtual {p7, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p3

    sget-object p4, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_DONE:Ljava/lang/String;

    invoke-virtual {p3, p4, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p3

    sget-object p4, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_PATH:Ljava/lang/String;

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    sget-object p3, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_SAVEPATH:Ljava/lang/String;

    iget-object p4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    sget-object p3, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_ERRORMSG:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_COMPLETEDONE:Ljava/lang/String;

    invoke-virtual {p1, p2, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->t:Z

    return-void
.end method

.method private r(Landroid/content/ContentValues;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->n:Landroid/net/Uri;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->q:[Ljava/lang/String;

    const-string v2, "path=?"

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public abortDownload()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "abortDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->e:Z

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    sget-object p0, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cancelAll()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cancelAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->x:Z

    return-void
.end method

.method public changeHandler(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public deleteAll()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deleteAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->s:Z

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->i()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->d()V

    :cond_0
    return-void
.end method

.method public deleteDB()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deleteDB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->d:Z

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->i()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->e()V

    :cond_0
    return-void
.end method

.method public getDone()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    return-wide v0
.end method

.method public getFlag()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->f:I

    return p0
.end method

.method public getMax()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getSavefilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->h:Ljava/lang/String;

    return-object p0
.end method

.method public isPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause isPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume isPause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/zui/launcher/networksdk/download/Downloader;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->i:Z

    sget-object p0, Lcom/zui/launcher/networksdk/download/Downloader;->z:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 15

    const-string v0, ";fileLen="

    iget-boolean v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->j:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isalreadyget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v8, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "download start1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zui/launcher/networksdk/download/Downloader;->g(Ljava/lang/String;Ljava/util/HashMap;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download conn==null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v8, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->v:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    int-to-long v4, v4

    iput-wide v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    goto :goto_0

    :goto_1
    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ResponseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ";msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 v1, 0xc8

    const-wide/16 v5, -0x1

    if-eq v3, v1, :cond_9

    const/16 v1, 0x133

    if-eq v3, v1, :cond_3

    packed-switch v3, :pswitch_data_0

    sget-object v0, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "download error code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v8, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v10, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_4

    :cond_3
    :pswitch_0
    if-eqz v4, :cond_8

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v4, v2}, Lcom/zui/launcher/networksdk/download/Downloader;->g(Ljava/lang/String;Ljava/util/HashMap;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_5

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/zui/launcher/networksdk/download/Downloader;->u:Ljava/lang/String;

    iget-object v10, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v11, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v13, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    sget-object v3, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Redirect path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";ResponseCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_6

    invoke-direct {p0, v4}, Lcom/zui/launcher/networksdk/download/Downloader;->h(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    const-string v7, "\u7a7a\u95f4\u4e0d\u591f!!!"

    iget-object v8, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v9, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v11, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_4

    :cond_7
    invoke-direct {p0, v4}, Lcom/zui/launcher/networksdk/download/Downloader;->f(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    :goto_2
    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :cond_9
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->h(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    iget-wide v2, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    iget-wide v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->r:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    const-string v3, "\u7a7a\u95f4\u4e0d\u591f!!!"

    iget-object v4, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v5, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zui/launcher/networksdk/download/Downloader;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v9, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UnknownHostException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    sget-object v1, Lcom/zui/launcher/networksdk/download/Downloader;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ConnectTimeoutException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v6, p0, Lcom/zui/launcher/networksdk/download/Downloader;->g:Ljava/lang/String;

    iget-wide v7, p0, Lcom/zui/launcher/networksdk/download/Downloader;->p:J

    iget-wide v9, p0, Lcom/zui/launcher/networksdk/download/Downloader;->a:J

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/zui/launcher/networksdk/download/Downloader;->m(ZLjava/lang/String;Ljava/lang/String;JJ)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setGetLenByHeadFiled(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->v:Ljava/lang/String;

    return-void
.end method

.method public setHeadFiled(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/networksdk/download/Downloader;->w:Ljava/util/HashMap;

    return-void
.end method
