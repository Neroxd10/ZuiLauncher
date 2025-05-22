.class public final Lcom/amap/api/col/l3s/qm;
.super Lcom/amap/api/col/l3s/qk;
.source ""


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3s/qk;-><init>(ZZ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->j:I

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->k:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->l:I

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->m:I

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->n:I

    iput p1, p0, Lcom/amap/api/col/l3s/qm;->o:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/amap/api/col/l3s/qk;
    .locals 3

    new-instance v0, Lcom/amap/api/col/l3s/qm;

    iget-boolean v1, p0, Lcom/amap/api/col/l3s/qk;->h:Z

    iget-boolean v2, p0, Lcom/amap/api/col/l3s/qk;->i:Z

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/qm;-><init>(ZZ)V

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/qk;->a(Lcom/amap/api/col/l3s/qk;)V

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->j:I

    iput v1, v0, Lcom/amap/api/col/l3s/qm;->j:I

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->k:I

    iput v1, v0, Lcom/amap/api/col/l3s/qm;->k:I

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->l:I

    iput v1, v0, Lcom/amap/api/col/l3s/qm;->l:I

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->m:I

    iput v1, v0, Lcom/amap/api/col/l3s/qm;->m:I

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->n:I

    iput v1, v0, Lcom/amap/api/col/l3s/qm;->n:I

    iget p0, p0, Lcom/amap/api/col/l3s/qm;->o:I

    iput p0, v0, Lcom/amap/api/col/l3s/qm;->o:I

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/qm;->a()Lcom/amap/api/col/l3s/qk;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCellGsm{lac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", psc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bsic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timingAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/col/l3s/qm;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/amap/api/col/l3s/qk;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
