.class public Lcom/zui/launcher/model/SettingsInfo;
.super Lcom/zui/launcher/model/BaseInfo;
.source ""


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public packageName:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/model/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final setActivity(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/zui/launcher/model/BaseInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method
