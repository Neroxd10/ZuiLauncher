.class Lcom/zui/fss/file/FssPermission$3;
.super Lcom/android/volley/toolbox/StringRequest;
.source ""


# instance fields
.field final synthetic this$0:Lcom/zui/fss/file/FssPermission;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/FssPermission;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/FssPermission$3;->this$0:Lcom/zui/fss/file/FssPermission;

    iput-object p6, p0, Lcom/zui/fss/file/FssPermission$3;->val$params:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/fss/file/FssPermission$3;->this$0:Lcom/zui/fss/file/FssPermission;

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Lcom/zui/fss/file/FssPermission;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/fss/file/FssPermission$3;->val$params:Ljava/util/Map;

    iget-object p0, p0, Lcom/zui/fss/file/FssPermission$3;->this$0:Lcom/zui/fss/file/FssPermission;

    invoke-static {p0}, Lcom/zui/fss/file/FssPermission;->c(Lcom/zui/fss/file/FssPermission;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/zui/fss/b/c;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
