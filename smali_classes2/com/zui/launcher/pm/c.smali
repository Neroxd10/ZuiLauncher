.class public final synthetic Lcom/zui/launcher/pm/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/pm/UserCache;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/pm/c;->a:Lcom/zui/launcher/pm/UserCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pm/c;->a:Lcom/zui/launcher/pm/UserCache;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/zui/launcher/pm/UserCache;->b(Lcom/zui/launcher/pm/UserCache;Landroid/content/Intent;)V

    return-void
.end method
