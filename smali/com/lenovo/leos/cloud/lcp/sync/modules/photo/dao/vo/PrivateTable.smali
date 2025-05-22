.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6583bce3aefb267aL


# instance fields
.field public cKey2SKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public currentUser:Ljava/lang/String;

.field public sKey2CKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->sKey2CKey:Ljava/util/Map;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Photo PrivateTable"

    const-string v1, "UserName is empty, set to default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->currentUser:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->cKey2SKey:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateTable;->sKey2CKey:Ljava/util/Map;

    return-void
.end method
