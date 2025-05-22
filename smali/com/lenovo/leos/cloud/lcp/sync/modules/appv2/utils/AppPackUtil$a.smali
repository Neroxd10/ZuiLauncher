.class final Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppUtil$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .locals 13

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getExternalSDCard()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->d:Ljava/lang/String;

    move-object v2, p1

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil;->a(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/ExternalStorage;->getInnerSDCard()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->a:Ljava/util/List;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->c:Ljava/lang/String;

    iget-object v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil$a;->d:Ljava/lang/String;

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppPackUtil;->b(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
