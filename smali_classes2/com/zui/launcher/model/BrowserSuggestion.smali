.class public Lcom/zui/launcher/model/BrowserSuggestion;
.super Lcom/zui/launcher/model/BaseInfo;
.source ""


# instance fields
.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/model/BrowserSuggestion;->setActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method
