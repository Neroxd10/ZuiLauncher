.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cid:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->phoneNumber:Ljava/util/List;

    return-void
.end method
