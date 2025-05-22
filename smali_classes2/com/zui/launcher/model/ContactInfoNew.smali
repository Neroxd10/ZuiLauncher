.class public Lcom/zui/launcher/model/ContactInfoNew;
.super Lcom/zui/launcher/model/BaseInfo;
.source ""


# instance fields
.field public isEmpty:Z

.field public name:Ljava/lang/String;

.field public phoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/PhoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/model/ContactInfoNew;->phoneList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/model/ContactInfoNew;->isEmpty:Z

    return-void
.end method


# virtual methods
.method public final setActivity(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    const p0, 0x10008000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method
