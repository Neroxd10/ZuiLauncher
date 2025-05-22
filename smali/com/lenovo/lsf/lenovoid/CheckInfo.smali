.class public Lcom/lenovo/lsf/lenovoid/CheckInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/CheckInfo;->b:Ljava/lang/String;

    return-void
.end method
