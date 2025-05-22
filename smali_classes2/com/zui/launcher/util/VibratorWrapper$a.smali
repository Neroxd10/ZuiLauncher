.class Lcom/zui/launcher/util/VibratorWrapper$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/util/VibratorWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/zui/launcher/util/VibratorWrapper;


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/VibratorWrapper$a;->b:Lcom/zui/launcher/util/VibratorWrapper;

    iput-object p3, p0, Lcom/zui/launcher/util/VibratorWrapper$a;->a:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/util/VibratorWrapper$a;->b:Lcom/zui/launcher/util/VibratorWrapper;

    iget-object p0, p0, Lcom/zui/launcher/util/VibratorWrapper$a;->a:Landroid/content/ContentResolver;

    invoke-static {p1, p0}, Lcom/zui/launcher/util/VibratorWrapper;->b(Lcom/zui/launcher/util/VibratorWrapper;Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/util/VibratorWrapper;->a(Lcom/zui/launcher/util/VibratorWrapper;Z)Z

    return-void
.end method
