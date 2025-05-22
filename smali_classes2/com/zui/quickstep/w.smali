.class public final synthetic Lcom/zui/quickstep/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

.field public final synthetic c:Lcom/zui/launcher/LauncherState;

.field public final synthetic d:Lcom/zui/launcher/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/w;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/quickstep/w;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iput-object p3, p0, Lcom/zui/quickstep/w;->c:Lcom/zui/launcher/LauncherState;

    iput-object p4, p0, Lcom/zui/quickstep/w;->d:Lcom/zui/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/w;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/quickstep/w;->b:Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;

    iget-object v2, p0, Lcom/zui/quickstep/w;->c:Lcom/zui/launcher/LauncherState;

    iget-object p0, p0, Lcom/zui/quickstep/w;->d:Lcom/zui/launcher/LauncherState;

    invoke-static {v0, v1, v2, p0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;)V

    return-void
.end method
