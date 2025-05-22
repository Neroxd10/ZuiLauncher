.class public final synthetic Lcom/zui/launcher/drawer/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/drawer/DrawerLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/drawer/DrawerLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/drawer/a;->a:Lcom/zui/launcher/drawer/DrawerLauncher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/drawer/a;->a:Lcom/zui/launcher/drawer/DrawerLauncher;

    invoke-virtual {p0}, Lcom/zui/launcher/drawer/DrawerLauncher;->S2()V

    return-void
.end method
