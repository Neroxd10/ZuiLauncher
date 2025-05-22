.class Lcom/zui/launcher/HotseatLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/HotseatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/HotseatLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/HotseatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayout$a;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayout$a;->a:Lcom/zui/launcher/HotseatLayout;

    invoke-static {v0}, Lcom/zui/launcher/HotseatLayout;->e0(Lcom/zui/launcher/HotseatLayout;)V

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayout$a;->a:Lcom/zui/launcher/HotseatLayout;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/HotseatLayout;->f0(Lcom/zui/launcher/HotseatLayout;Z)Z

    return-void
.end method
