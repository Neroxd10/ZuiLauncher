.class Lcom/zui/launcher/model/WidgetsModel$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Landroid/os/UserHandle;

.field private final d:I


# direct methods
.method constructor <init>(ILandroid/os/UserHandle;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method constructor <init>(Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 1

    iget-object v0, p1, Lcom/zui/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/WidgetsModel$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/zui/launcher/model/WidgetsModel$c;->b:I

    iput-object p3, p0, Lcom/zui/launcher/model/WidgetsModel$c;->c:Landroid/os/UserHandle;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    iget-object p1, p0, Lcom/zui/launcher/model/WidgetsModel$c;->c:Landroid/os/UserHandle;

    const/4 p2, 0x2

    aput-object p1, p3, p2

    invoke-static {p3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/model/WidgetsModel$c;->d:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/zui/launcher/model/WidgetsModel$c;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/WidgetsModel$c;->d:I

    return p0
.end method
