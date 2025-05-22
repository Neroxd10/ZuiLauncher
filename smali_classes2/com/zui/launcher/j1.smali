.class public final synthetic Lcom/zui/launcher/j1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Launcher$OnResumeCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Lcom/zui/launcher/ItemInfo;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/j1;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/j1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/j1;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/zui/launcher/j1;->d:Lcom/zui/launcher/ItemInfo;

    iput-object p5, p0, Lcom/zui/launcher/j1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLauncherResume()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/j1;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/j1;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/j1;->c:Landroid/content/Intent;

    iget-object v3, p0, Lcom/zui/launcher/j1;->d:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/j1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/launcher/Launcher;->E1(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method
