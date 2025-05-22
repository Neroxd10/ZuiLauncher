.class public abstract Lcom/amap/api/col/l3s/ni;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    const/16 v0, 0x63

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->c:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ni;->e:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ni;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ni;->i:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ni;->h:Z

    iput-boolean p2, p0, Lcom/amap/api/col/l3s/ni;->i:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/ns;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract a()Lcom/amap/api/col/l3s/ni;
.end method

.method public final a(Lcom/amap/api/col/l3s/ni;)V
    .locals 2

    iget-object v0, p1, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    iget v0, p1, Lcom/amap/api/col/l3s/ni;->c:I

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->c:I

    iget v0, p1, Lcom/amap/api/col/l3s/ni;->d:I

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->d:I

    iget-wide v0, p1, Lcom/amap/api/col/l3s/ni;->e:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ni;->e:J

    iget-wide v0, p1, Lcom/amap/api/col/l3s/ni;->f:J

    iput-wide v0, p0, Lcom/amap/api/col/l3s/ni;->f:J

    iget v0, p1, Lcom/amap/api/col/l3s/ni;->g:I

    iput v0, p0, Lcom/amap/api/col/l3s/ni;->g:I

    iget-boolean v0, p1, Lcom/amap/api/col/l3s/ni;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/ni;->h:Z

    iget-boolean p1, p1, Lcom/amap/api/col/l3s/ni;->i:Z

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/ni;->i:Z

    return-void
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ni;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ni;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ni;->a()Lcom/amap/api/col/l3s/ni;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCell{mcc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/ni;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/ni;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/ni;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asulevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/ni;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateSystemMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/col/l3s/ni;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateUtcMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/col/l3s/ni;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/ni;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", main="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/ni;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newapi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/ni;->i:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
