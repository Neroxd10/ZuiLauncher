.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

.field final synthetic e:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 4

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown client field:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoClearup"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    const-string v0, "IMAGE"

    if-eqz p1, :cond_2

    iget v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    iget p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->a:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/clearup/ContactAutoClearupService$b;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    return p3
.end method
