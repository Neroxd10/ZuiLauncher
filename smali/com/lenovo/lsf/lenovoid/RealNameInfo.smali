.class public Lcom/lenovo/lsf/lenovoid/RealNameInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->b:Z

    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->c:Z

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public isOversea()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->b:Z

    return p0
.end method

.method public isRealName()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->c:Z

    return p0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setOversea(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->b:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/RealNameInfo;->c:Z

    return-void
.end method
