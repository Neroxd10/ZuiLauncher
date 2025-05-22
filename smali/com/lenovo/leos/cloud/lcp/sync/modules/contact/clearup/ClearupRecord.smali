.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public from:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public to:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->from:Ljava/util/Map;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->to:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;
    .locals 3

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;-><init>()V

    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->cid:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    instance-of v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/FieldFormatUtil;->compositeName(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Phone;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/FieldFormatUtil;->formatPhone(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->phoneNumber:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->phoneNumber:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;->phoneNumber:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method


# virtual methods
.method public getSimpleFromData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->from:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->from:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimpleToData()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->to:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ClearupRecord;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/SimpleContactInfo;

    move-result-object p0

    return-object p0
.end method
