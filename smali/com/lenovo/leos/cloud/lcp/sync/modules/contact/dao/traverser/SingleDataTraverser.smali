.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    return-void
.end method


# virtual methods
.method public getVisitor()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    return-object p0
.end method

.method public setVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    return-void
.end method

.method public traverseData(IILandroid/database/Cursor;)I
    .locals 3

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, v0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z

    move-result p2

    if-nez p2, :cond_0

    move p2, v2

    goto :goto_1

    :cond_0
    move p2, v2

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method
