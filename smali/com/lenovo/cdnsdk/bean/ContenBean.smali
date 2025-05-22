.class public Lcom/lenovo/cdnsdk/bean/ContenBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;
    }
.end annotation


# instance fields
.field public cacheData:Z
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "cache_data"
    .end annotation
.end field

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "code"
    .end annotation
.end field

.field public data:Ljava/util/List;
    .annotation runtime Lcom/lenovo/cdnsdk/b/p;
        a = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/cdnsdk/bean/ContenBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
