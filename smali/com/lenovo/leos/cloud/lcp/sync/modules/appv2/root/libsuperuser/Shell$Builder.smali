.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

.field private h:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->b:Z

    const-string v1, "sh"

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->d:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->e:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->f:Ljava/util/Map;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->i:I

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->i:I

    return p0
.end method

.method static synthetic i(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->addCommand(Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addCommand(Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addCommand(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->addCommand(Ljava/util/List;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addCommand(Ljava/util/List;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addCommand([Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addCommand([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->e:Ljava/util/List;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;-><init>([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addEnvironment(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public open()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$a;)V

    return-object v0
.end method

.method public open(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$a;)V

    return-object v0
.end method

.method public setAutoHandler(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->b:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public setMinimalLogging(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Debug;->setLogTypeEnabled(IZ)V

    return-object p0
.end method

.method public setOnstDerrLineListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->h:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setOnstDoutLineListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    return-object p0
.end method

.method public setShell(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setWantstDerr(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->d:Z

    return-object p0
.end method

.method public setWatchdogTimeout(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->i:I

    return-object p0
.end method

.method public useSH()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1

    const-string v0, "sh"

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method

.method public useSU()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;
    .locals 1

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    move-result-object p0

    return-object p0
.end method
