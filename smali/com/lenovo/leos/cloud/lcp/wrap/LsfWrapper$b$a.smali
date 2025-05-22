.class Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$LsfPreference;->lastGetSTTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$LsfPreference;->lastUserName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->b:Ljava/lang/String;

    iget-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->a:J

    invoke-static {p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$LsfPreference;->setLastGetSTTime(Ljava/lang/String;J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b$a;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$b;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper$LsfPreference;->setLastUserName(Ljava/lang/String;)V

    return-void
.end method
