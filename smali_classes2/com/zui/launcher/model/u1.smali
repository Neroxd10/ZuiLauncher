.class public final synthetic Lcom/zui/launcher/model/u1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/u1;->a:Lcom/zui/launcher/LauncherModel;

    return-void
.end method


# virtual methods
.method public final onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/u1;->a:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherModel;->onPackageIconsUpdated(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-void
.end method
