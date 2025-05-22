.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x64ff7ab07018f3c9L


# instance fields
.field public cid:I

.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field public groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation
.end field

.field public op:Ljava/lang/String;

.field public portrait:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

.field public sourceid:Ljava/lang/String;

.field public starred:I

.field public structName:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->groups:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->portrait:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->structName:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    return-void
.end method
