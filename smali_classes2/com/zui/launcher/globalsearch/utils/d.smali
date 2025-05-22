.class public final synthetic Lcom/zui/launcher/globalsearch/utils/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

.field public final synthetic b:Lcom/zui/launcher/Launcher;

.field public final synthetic c:Lcom/zui/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/utils/d;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/utils/d;->b:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/utils/d;->c:Lcom/zui/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/utils/d;->a:Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/utils/d;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/utils/d;->c:Lcom/zui/launcher/AppInfo;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/AppInfo;)V

    return-void
.end method
