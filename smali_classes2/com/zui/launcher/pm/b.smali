.class public final synthetic Lcom/zui/launcher/pm/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/pm/InstallSessionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/pm/InstallSessionTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/pm/b;->a:Lcom/zui/launcher/pm/InstallSessionTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/pm/b;->a:Lcom/zui/launcher/pm/InstallSessionTracker;

    check-cast p1, Lcom/zui/launcher/util/PackageUserKey;

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/pm/InstallSessionTracker;->b(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method
