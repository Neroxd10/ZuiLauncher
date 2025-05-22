.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static e:I


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->a:[Ljava/lang/String;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->b:I

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    sget v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->e:I

    add-int/2addr v0, p2

    sput v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "-%08x"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->b:I

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->a:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->d:Ljava/lang/String;

    return-object p0
.end method
