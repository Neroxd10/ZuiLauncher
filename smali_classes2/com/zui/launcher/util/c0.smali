.class public final synthetic Lcom/zui/launcher/util/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/VibratorWrapper;

.field public final synthetic b:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/c0;->a:Lcom/zui/launcher/util/VibratorWrapper;

    iput-object p2, p0, Lcom/zui/launcher/util/c0;->b:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/c0;->a:Lcom/zui/launcher/util/VibratorWrapper;

    iget-object p0, p0, Lcom/zui/launcher/util/c0;->b:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/VibratorWrapper;->d(Landroid/os/VibrationEffect;)V

    return-void
.end method
