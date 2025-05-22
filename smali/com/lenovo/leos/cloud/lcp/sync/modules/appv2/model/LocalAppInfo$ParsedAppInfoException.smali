.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo$ParsedAppInfoException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedAppInfoException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x38511d7e644dec24L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo$ParsedAppInfoException;->a:I

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo$ParsedAppInfoException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo$ParsedAppInfoException;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo$ParsedAppInfoException;->a:I

    return p0
.end method
