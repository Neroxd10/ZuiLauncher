.class public final Lcom/amap/api/col/l3s/nl;
.super Lcom/amap/api/col/l3s/ni;
.source ""


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/ni;-><init>(ZZ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/nl;->j:I

    iput p1, p0, Lcom/amap/api/col/l3s/nl;->k:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/amap/api/col/l3s/nl;->l:I

    iput p1, p0, Lcom/amap/api/col/l3s/nl;->m:I

    iput p1, p0, Lcom/amap/api/col/l3s/nl;->n:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3s/ni;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3s/nl;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/ni;->h:Z

    invoke-direct {v0, v1}, Lcom/amap/api/col/l3s/nl;-><init>(Z)V

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ni;->a(Lcom/amap/api/col/l3s/ni;)V

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->j:I

    iput v1, v0, Lcom/amap/api/col/l3s/nl;->j:I

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->k:I

    iput v1, v0, Lcom/amap/api/col/l3s/nl;->k:I

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->l:I

    iput v1, v0, Lcom/amap/api/col/l3s/nl;->l:I

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->m:I

    iput v1, v0, Lcom/amap/api/col/l3s/nl;->m:I

    iget p0, p0, Lcom/amap/api/col/l3s/nl;->n:I

    iput p0, v0, Lcom/amap/api/col/l3s/nl;->n:I

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/nl;->a()Lcom/amap/api/col/l3s/ni;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCellLte{lac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", earfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timingAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/nl;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/amap/api/col/l3s/ni;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
