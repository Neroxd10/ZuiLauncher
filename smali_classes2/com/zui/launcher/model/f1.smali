.class public final synthetic Lcom/zui/launcher/model/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/f1;->a:Lcom/zui/launcher/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/f1;->a:Lcom/zui/launcher/icons/IconCache;

    check-cast p1, Lcom/zui/launcher/util/PackageUserKey;

    check-cast p2, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/IconCache;->updateSessionCache(Lcom/zui/launcher/util/PackageUserKey;Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-void
.end method
