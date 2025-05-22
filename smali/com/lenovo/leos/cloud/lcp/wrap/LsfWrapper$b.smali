.class Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;
    }
.end annotation


# static fields
.field static e:J = 0x1499700L

.field static f:I = 0xa


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    const-string v0, "contact.cloud.lps.lenovo.com"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;-><init>(Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->f:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->b(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->c(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method c(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d()V

    :cond_2
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->a()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    sub-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    sget-wide v1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->e:J

    cmp-long p0, p0, v1

    if-lez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized d()V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->d:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
