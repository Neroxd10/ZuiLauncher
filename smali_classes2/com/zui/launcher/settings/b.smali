.class public final synthetic Lcom/zui/launcher/settings/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/settings/DeveloperOptionsFragment$b;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/settings/DeveloperOptionsFragment$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/settings/b;->a:Lcom/zui/launcher/settings/DeveloperOptionsFragment$b;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/settings/b;->a:Lcom/zui/launcher/settings/DeveloperOptionsFragment$b;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/settings/DeveloperOptionsFragment$b;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
