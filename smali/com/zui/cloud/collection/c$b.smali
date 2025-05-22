.class Lcom/zui/cloud/collection/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/cloud/network/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/cloud/collection/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zui/cloud/network/r$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/zui/cloud/collection/CollectionCloudListener;

.field private b:Z

.field final synthetic c:Lcom/zui/cloud/collection/c;


# direct methods
.method public constructor <init>(Lcom/zui/cloud/collection/c;Lcom/zui/cloud/collection/CollectionCloudListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/cloud/collection/c$b;->c:Lcom/zui/cloud/collection/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/cloud/collection/c$b;->a:Lcom/zui/cloud/collection/CollectionCloudListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/cloud/collection/c$b;->b:Z

    iput-object p2, p0, Lcom/zui/cloud/collection/c$b;->a:Lcom/zui/cloud/collection/CollectionCloudListener;

    iput-boolean p3, p0, Lcom/zui/cloud/collection/c$b;->b:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/cloud/collection/c$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/cloud/collection/c$b;->a:Lcom/zui/cloud/collection/CollectionCloudListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/zui/cloud/collection/c$b;->b:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/zui/cloud/collection/CollectionCloudListener;->onResponse(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/zui/cloud/collection/c$b;->c:Lcom/zui/cloud/collection/c;

    iget-boolean p0, p0, Lcom/zui/cloud/collection/c$b;->b:Z

    invoke-static {p1, p0}, Lcom/zui/cloud/collection/c;->m(Lcom/zui/cloud/collection/c;Z)V

    :cond_0
    return-void
.end method
