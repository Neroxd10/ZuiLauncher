.class public final synthetic Lcom/zui/launcher/z1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherStateManager;

.field public final synthetic b:I

.field public final synthetic c:Lcom/zui/launcher/LauncherState;

.field public final synthetic d:Lcom/zui/launcher/LauncherState;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherStateManager;ILcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/z1;->a:Lcom/zui/launcher/LauncherStateManager;

    iput p2, p0, Lcom/zui/launcher/z1;->b:I

    iput-object p3, p0, Lcom/zui/launcher/z1;->c:Lcom/zui/launcher/LauncherState;

    iput-object p4, p0, Lcom/zui/launcher/z1;->d:Lcom/zui/launcher/LauncherState;

    iput-object p5, p0, Lcom/zui/launcher/z1;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/z1;->a:Lcom/zui/launcher/LauncherStateManager;

    iget v1, p0, Lcom/zui/launcher/z1;->b:I

    iget-object v2, p0, Lcom/zui/launcher/z1;->c:Lcom/zui/launcher/LauncherState;

    iget-object v3, p0, Lcom/zui/launcher/z1;->d:Lcom/zui/launcher/LauncherState;

    iget-object p0, p0, Lcom/zui/launcher/z1;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/launcher/LauncherStateManager;->j(ILcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Ljava/lang/Runnable;)V

    return-void
.end method
