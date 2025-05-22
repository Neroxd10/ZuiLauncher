.class public Lcom/lenovo/lsf/lenovoid/UkiInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/UkiInfo;->b:Ljava/lang/String;

    return-void
.end method
