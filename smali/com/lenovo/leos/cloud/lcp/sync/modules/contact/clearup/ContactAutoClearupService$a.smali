.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    const-string v0, ""

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    iget-object v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    iget-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez p0, :cond_6

    move-object p0, v0

    :cond_6
    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$a;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I

    move-result p0

    return p0
.end method
