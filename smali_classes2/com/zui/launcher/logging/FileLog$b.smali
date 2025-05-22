.class Lcom/zui/launcher/logging/FileLog$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/logging/FileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/logging/FileLog$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/logging/FileLog$b;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/zui/launcher/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    invoke-static {}, Lcom/zui/launcher/logging/FileLog;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/zui/launcher/logging/FileLog;->ENABLED:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/logging/FileLog$b;->a()V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/io/PrintWriter;

    const-string v0, "log-0"

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/FileLog;->c(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/io/PrintWriter;

    const-string v0, "log-1"

    invoke-static {p1, v0}, Lcom/zui/launcher/logging/FileLog;->c(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/zui/launcher/logging/FileLog$b;->a()V

    return v1

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "log-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/logging/FileLog$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/zui/launcher/logging/FileLog$b;->a()V

    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    if-nez v4, :cond_7

    iput-object v3, p0, Lcom/zui/launcher/logging/FileLog$b;->a:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/zui/launcher/logging/FileLog;->a()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xa

    const/16 v7, 0x24

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x400000

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    move v5, v1

    :cond_6
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/logging/FileLog$b;->b:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {}, Lcom/zui/launcher/logging/FileLog;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/zui/launcher/logging/FileLog;->b()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FileLog"

    const-string v2, "Error writing logs to file"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/zui/launcher/logging/FileLog$b;->a()V

    :cond_8
    :goto_0
    return v1
.end method
