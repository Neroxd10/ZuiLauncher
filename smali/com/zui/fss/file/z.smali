.class Lcom/zui/fss/file/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic a:Lcom/zui/fss/file/FssPermission$a;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/FssPermission;Lcom/zui/fss/file/FssPermission$a;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/fss/file/z;->a:Lcom/zui/fss/file/FssPermission$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/fss/file/z;->a:Lcom/zui/fss/file/FssPermission$a;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/zui/fss/file/FssPermission$a;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
