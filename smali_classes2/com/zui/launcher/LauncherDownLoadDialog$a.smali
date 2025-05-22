.class Lcom/zui/launcher/LauncherDownLoadDialog$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherDownLoadDialog;->a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Lzui/app/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Lcom/zui/launcher/LauncherDownLoadDialog;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherDownLoadDialog$a;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iput-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$a;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/LauncherDownLoadDialog$a;->b:Lcom/zui/launcher/LauncherDownLoadDialog;

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->setCheckStatus(Lcom/zui/launcher/Launcher;Z)V

    return-void
.end method
