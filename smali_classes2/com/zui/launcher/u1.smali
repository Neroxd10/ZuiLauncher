.class public final synthetic Lcom/zui/launcher/u1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

.field public final synthetic b:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAppTransitionManagerImpl;Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/u1;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/zui/launcher/u1;->b:Lcom/zui/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/u1;->a:Lcom/zui/launcher/LauncherAppTransitionManagerImpl;

    iget-object p0, p0, Lcom/zui/launcher/u1;->b:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherAppTransitionManagerImpl;->A(Lcom/zui/quickstep/views/RecentsView;)V

    return-void
.end method
