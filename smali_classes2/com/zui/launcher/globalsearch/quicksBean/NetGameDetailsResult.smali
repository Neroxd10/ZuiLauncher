.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/globalsearch/BaseDataModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private code:Ljava/lang/Object;

.field private data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;

.field private msg:Ljava/lang/Object;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCode()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->code:Ljava/lang/Object;

    return-object p0
.end method

.method public getData()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;

    return-object p0
.end method

.method public getMsg()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->msg:Ljava/lang/Object;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->success:Z

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->code:Ljava/lang/Object;

    return-void
.end method

.method public setData(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->data:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->msg:Ljava/lang/Object;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult;->success:Z

    return-void
.end method
