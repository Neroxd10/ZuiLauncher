.class public final Lcom/amap/api/col/l3s/bg;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/bp;
.implements Lcom/amap/api/col/l3s/cg;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/col/l3s/bg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/amap/api/col/l3s/ck;

.field public final b:Lcom/amap/api/col/l3s/ck;

.field public final c:Lcom/amap/api/col/l3s/ck;

.field public final d:Lcom/amap/api/col/l3s/ck;

.field public final e:Lcom/amap/api/col/l3s/ck;

.field public final f:Lcom/amap/api/col/l3s/ck;

.field public final g:Lcom/amap/api/col/l3s/ck;

.field public final h:Lcom/amap/api/col/l3s/ck;

.field public final i:Lcom/amap/api/col/l3s/ck;

.field public final j:Lcom/amap/api/col/l3s/ck;

.field public final k:Lcom/amap/api/col/l3s/ck;

.field l:Lcom/amap/api/col/l3s/ck;

.field m:Landroid/content/Context;

.field n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3s/bg$2;

    invoke-direct {v0}, Lcom/amap/api/col/l3s/bg$2;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3s/bg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3s/cm;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cm;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/ct;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/ct;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cp;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cp;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cr;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cr;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->d:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cs;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cs;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cl;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cl;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cq;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cq;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->g:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bg;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3s/bg;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3s/bg;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->o()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lcom/amap/api/col/l3s/cm;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cm;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/ct;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/ct;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cp;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cp;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cr;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cr;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->d:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cs;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cs;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cl;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cl;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cq;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3s/cq;-><init>(Lcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->g:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    new-instance v0, Lcom/amap/api/col/l3s/cn;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3s/cn;-><init>(ILcom/amap/api/col/l3s/bg;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bg;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/bg;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    return-wide v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/bg;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3s/bg;->q:J

    return-wide p1
.end method

.method private v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/bg;->v()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    if-gez p1, :cond_8

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->g:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->a:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->d:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    :goto_1
    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    :cond_8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3s/bg;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    long-to-int p1, p1

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p2

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    :cond_0
    iput-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    :cond_1
    return-void
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr p3, v0

    div-long/2addr p3, p1

    long-to-int p1, p3

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/ch$a;)V
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3s/bg$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/ck;->a(I)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p1}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Lcom/amap/api/col/l3s/ck;
    .locals 0

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->k:Lcom/amap/api/col/l3s/ck;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->j:Lcom/amap/api/col/l3s/ck;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->i:Lcom/amap/api/col/l3s/ck;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bg;->v()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bg;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3s/ex;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcom/amap/api/col/l3s/by;

    invoke-direct {v2}, Lcom/amap/api/col/l3s/by;-><init>()V

    invoke-static {v3}, Lcom/amap/api/col/l3s/ce;->a(Ljava/io/File;)J

    move-result-wide v7

    const-wide/16 v5, -0x1

    new-instance v9, Lcom/amap/api/col/l3s/bg$1;

    invoke-direct {v9, p0, p1, v3}, Lcom/amap/api/col/l3s/bg$1;-><init>(Lcom/amap/api/col/l3s/bg;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual/range {v2 .. v9}, Lcom/amap/api/col/l3s/by;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/col/l3s/by$a;)J

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->m()V

    return-void
.end method

.method public final c()Lcom/amap/api/col/l3s/ck;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/amap/api/col/l3s/bh;->f:Lcom/amap/api/col/l3s/bl;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3s/bl;->a(Lcom/amap/api/col/l3s/bg;)V

    :cond_0
    iget-object v1, v0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, v0, Lcom/amap/api/col/l3s/bh;->e:Lcom/amap/api/col/l3s/bh$b;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/bh;->d(Lcom/amap/api/col/l3s/bg;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->d()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->f:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/bh;->b(Lcom/amap/api/col/l3s/bg;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/bh;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/bh;->c(Lcom/amap/api/col/l3s/bg;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->b:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->c()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->c:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->g()V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->e()V

    return-void
.end method

.method public final l()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3s/bg;->q:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->c()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->e:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->h:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3s/ck;->a(I)V

    return-void
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/bg;->e()V

    return-void
.end method

.method protected final o()V
    .locals 4

    sget-object v0, Lcom/amap/api/col/l3s/bh;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip.tmp"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/amap/api/col/l3s/bg;->o:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final p()Lcom/amap/api/col/l3s/br;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bg;->l:Lcom/amap/api/col/l3s/ck;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ck;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    new-instance v0, Lcom/amap/api/col/l3s/br;

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3s/br;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/br;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vMapFileNames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final q()Z
    .locals 0

    invoke-static {}, Lcom/amap/api/col/l3s/ce;->a()J

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    const/4 p0, 0x0

    return p0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/col/l3s/ce;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bg;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/bg;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bg;->p:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
