.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms$SmsComparator;
    }
.end annotation


# static fields
.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_INBOX:I = 0x1


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    iget-wide v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    if-eqz v2, :cond_b

    return v1

    :cond_a
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    if-eqz v2, :cond_e

    return v1

    :cond_d
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    if-eq p0, p1, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    return-wide v0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->a:I

    return p0
.end method

.method public getLocked()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    return p0
.end method

.method public getRead()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    return p0
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    return p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadId()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->b:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    return p0
.end method

.method public hashCode()I
    .locals 8

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->a:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->b:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->a:I

    return-void
.end method

.method public setLocked(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    return-void
.end method

.method public setRead(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    return-void
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->b:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "thread_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "address:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "date:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "read:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "subject:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "body:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "service_center:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "locked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
