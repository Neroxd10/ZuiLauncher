.class public final synthetic Lcom/zui/launcher/p1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/p1;->a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/p1;->a:Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAnimationRunner$AnimationResult;->c()V

    return-void
.end method
