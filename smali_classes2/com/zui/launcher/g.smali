.class public final synthetic Lcom/zui/launcher/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Launcher$OnResumeCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/AppStoreReceiver;

.field public final synthetic b:Lcom/zui/launcher/Workspace;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/AppStoreReceiver;Lcom/zui/launcher/Workspace;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/g;->a:Lcom/zui/launcher/AppStoreReceiver;

    iput-object p2, p0, Lcom/zui/launcher/g;->b:Lcom/zui/launcher/Workspace;

    iput p3, p0, Lcom/zui/launcher/g;->c:I

    return-void
.end method


# virtual methods
.method public final onLauncherResume()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/g;->a:Lcom/zui/launcher/AppStoreReceiver;

    iget-object v1, p0, Lcom/zui/launcher/g;->b:Lcom/zui/launcher/Workspace;

    iget p0, p0, Lcom/zui/launcher/g;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/AppStoreReceiver;->u(Lcom/zui/launcher/Workspace;I)V

    return-void
.end method
