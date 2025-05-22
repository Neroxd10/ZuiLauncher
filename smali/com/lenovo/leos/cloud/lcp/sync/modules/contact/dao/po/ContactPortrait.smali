.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x78c8de76dbf1b284L


# instance fields
.field public clientAdler:Ljava/lang/String;

.field public rawContactId:Ljava/lang/Integer;

.field public serverAdler:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;-><init>()V

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->rawContactId:Ljava/lang/Integer;

    iput-object p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->serverAdler:Ljava/lang/String;

    iput-object p2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/ContactPortrait;->clientAdler:Ljava/lang/String;

    return-object v0
.end method
