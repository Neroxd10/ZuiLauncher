.class public final synthetic Lcom/zui/launcher/n2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/animation/AnimatorSet;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/n2;->a:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/n2;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
