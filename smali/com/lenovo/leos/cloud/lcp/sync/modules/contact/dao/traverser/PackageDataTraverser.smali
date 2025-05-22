.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    iget v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->stared:I

    iput p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    iget p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->currentUser:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public traverseData(IILandroid/database/Cursor;)I
    .locals 10

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v5

    iget v6, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    if-eq v4, v2, :cond_1

    if-eq v4, v6, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->a(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v7, v1, v9, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v3, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->a(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    invoke-interface {v6, v5, v1, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return p2
.end method
