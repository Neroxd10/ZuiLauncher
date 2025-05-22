.class public Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/cloud/CloudSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sortingrules"
.end annotation


# static fields
.field public static final DISTANCE:I = 0x1

.field public static final WEIGHT:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    iget-boolean v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    iget-boolean v3, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v1

    :cond_4
    iget-object v3, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget p0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    iget p1, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    if-nez p0, :cond_0

    const-string p0, "_weight:desc"

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "_distance:asc"

    goto :goto_1

    :cond_1
    const-string p0, ""

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":asc"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":desc"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
