.class Lcom/zui/cloud/file/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/cloud/file/f$b;,
        Lcom/zui/cloud/file/f$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:J

.field public e:J

.field public f:Lcom/zui/cloud/file/f$a;

.field public g:Lcom/zui/cloud/file/f$b;

.field public h:[B

.field public i:J

.field public j:J


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/cloud/file/f$a;

    invoke-direct {v0, p0}, Lcom/zui/cloud/file/f$a;-><init>(Lcom/zui/cloud/file/f;)V

    iput-object v0, p0, Lcom/zui/cloud/file/f;->f:Lcom/zui/cloud/file/f$a;

    new-instance v0, Lcom/zui/cloud/file/f$b;

    invoke-direct {v0, p0}, Lcom/zui/cloud/file/f$b;-><init>(Lcom/zui/cloud/file/f;)V

    iput-object v0, p0, Lcom/zui/cloud/file/f;->g:Lcom/zui/cloud/file/f$b;

    return-void
.end method
