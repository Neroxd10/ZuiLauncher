.class public Lcom/lenovo/lsf/lenovoid/AccountInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->b:Z

    iput-boolean v1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->c:Z

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public isActivated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->c:Z

    return p0
.end method

.method public isBinded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->b:Z

    return p0
.end method

.method public isPassworSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->d:Z

    return p0
.end method

.method public setActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->c:Z

    return-void
.end method

.method public setBinded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->b:Z

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setPassworSet(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->d:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/AccountInfo;->f:Ljava/lang/String;

    return-void
.end method
