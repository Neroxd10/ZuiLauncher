.class public final Lcom/amap/api/col/l3s/mj$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:Lcom/amap/api/col/l3s/ni;

.field public d:Lcom/amap/api/col/l3s/ni;

.field public e:Lcom/amap/api/col/l3s/ni;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ni;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/ni;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->g:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/amap/api/col/l3s/ni;Lcom/amap/api/col/l3s/ni;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v2, p0, Lcom/amap/api/col/l3s/nk;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/amap/api/col/l3s/nk;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/amap/api/col/l3s/nk;

    check-cast p1, Lcom/amap/api/col/l3s/nk;

    iget v2, p0, Lcom/amap/api/col/l3s/nk;->j:I

    iget v3, p1, Lcom/amap/api/col/l3s/nk;->j:I

    if-ne v2, v3, :cond_1

    iget p0, p0, Lcom/amap/api/col/l3s/nk;->k:I

    iget p1, p1, Lcom/amap/api/col/l3s/nk;->k:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    instance-of v2, p0, Lcom/amap/api/col/l3s/nj;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/amap/api/col/l3s/nj;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/amap/api/col/l3s/nj;

    check-cast p1, Lcom/amap/api/col/l3s/nj;

    iget v2, p0, Lcom/amap/api/col/l3s/nj;->l:I

    iget v3, p1, Lcom/amap/api/col/l3s/nj;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/col/l3s/nj;->k:I

    iget v3, p1, Lcom/amap/api/col/l3s/nj;->k:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/amap/api/col/l3s/nj;->j:I

    iget p1, p1, Lcom/amap/api/col/l3s/nj;->j:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    instance-of v2, p0, Lcom/amap/api/col/l3s/nl;

    if-eqz v2, :cond_6

    instance-of v2, p1, Lcom/amap/api/col/l3s/nl;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/amap/api/col/l3s/nl;

    check-cast p1, Lcom/amap/api/col/l3s/nl;

    iget v2, p0, Lcom/amap/api/col/l3s/nl;->j:I

    iget v3, p1, Lcom/amap/api/col/l3s/nl;->j:I

    if-ne v2, v3, :cond_5

    iget p0, p0, Lcom/amap/api/col/l3s/nl;->k:I

    iget p1, p1, Lcom/amap/api/col/l3s/nl;->k:I

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    instance-of v2, p0, Lcom/amap/api/col/l3s/nm;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lcom/amap/api/col/l3s/nm;

    if-eqz v2, :cond_7

    check-cast p0, Lcom/amap/api/col/l3s/nm;

    check-cast p1, Lcom/amap/api/col/l3s/nm;

    iget v2, p0, Lcom/amap/api/col/l3s/nm;->j:I

    iget v3, p1, Lcom/amap/api/col/l3s/nm;->j:I

    if-ne v2, v3, :cond_7

    iget p0, p0, Lcom/amap/api/col/l3s/nm;->k:I

    iget p1, p1, Lcom/amap/api/col/l3s/nm;->k:I

    if-ne p0, p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_0
    if-nez p0, :cond_9

    move p0, v0

    goto :goto_1

    :cond_9
    move p0, v1

    :goto_1
    if-nez p1, :cond_a

    move p1, v0

    goto :goto_2

    :cond_a
    move p1, v1

    :goto_2
    if-ne p0, p1, :cond_b

    return v0

    :cond_b
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/amap/api/col/l3s/mj$a;->a:B

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->c:Lcom/amap/api/col/l3s/ni;

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->d:Lcom/amap/api/col/l3s/ni;

    iput-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->e:Lcom/amap/api/col/l3s/ni;

    iget-object v0, p0, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/mj$a;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfo{radio="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/amap/api/col/l3s/mj$a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mj$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mainCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mj$a;->c:Lcom/amap/api/col/l3s/ni;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainOldInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mj$a;->d:Lcom/amap/api/col/l3s/ni;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainNewInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mj$a;->e:Lcom/amap/api/col/l3s/ni;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/col/l3s/mj$a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historyMainCellList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/amap/api/col/l3s/mj$a;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
