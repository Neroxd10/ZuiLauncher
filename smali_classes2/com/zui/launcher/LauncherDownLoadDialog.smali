.class public Lcom/zui/launcher/LauncherDownLoadDialog;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lzui/app/MessageDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "isFirstShowDialog"

    iput-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->a:Ljava/lang/String;

    const-string v0, "not_prompt_again"

    iput-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    return-void
.end method

.method private a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Lzui/app/MessageDialog;
    .locals 2

    new-instance v0, Lzui/app/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setButtonsVerticalAligned(Z)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0, p2}, Lzui/app/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->getCheckStatus(Lcom/zui/launcher/Launcher;)Z

    move-result p2

    const v1, 0x7f120525

    invoke-virtual {v0, v1, p2}, Lzui/app/MessageDialog$Builder;->setCheckMessage(IZ)Lzui/app/MessageDialog$Builder;

    new-instance p2, Lcom/zui/launcher/LauncherDownLoadDialog$a;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog$a;-><init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, p2}, Lzui/app/MessageDialog$Builder;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lzui/app/MessageDialog$Builder;

    new-instance p2, Lcom/zui/launcher/LauncherDownLoadDialog$b;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog$b;-><init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V

    const v1, 0x7f12031b

    invoke-virtual {v0, v1, p2}, Lzui/app/MessageDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    new-instance p2, Lcom/zui/launcher/LauncherDownLoadDialog$c;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog$c;-><init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V

    const v1, 0x7f120317

    invoke-virtual {v0, v1, p2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    new-instance p2, Lcom/zui/launcher/LauncherDownLoadDialog$d;

    invoke-direct {p2, p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog$d;-><init>(Lcom/zui/launcher/LauncherDownLoadDialog;Lcom/zui/launcher/Launcher;)V

    const p0, 0x7f120348

    invoke-virtual {v0, p0, p2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public commitFirstShowDailog(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/LauncherDownLoadDialog;
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public dismissDownLoadDialog()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    invoke-virtual {v0}, Lzui/app/MessageDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getReturnDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public getCheckStatus(Lcom/zui/launcher/Launcher;)Z
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFirstShowDialog(Lcom/zui/launcher/Launcher;)Z
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->a:Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public handleThreeDialog(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/DownloadSpan;->addTask(Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/LauncherDownLoadDialog;->a(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Lzui/app/MessageDialog;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->getFirstShowDialog(Lcom/zui/launcher/Launcher;)Z

    move-result p3

    if-nez p3, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    invoke-virtual {p0}, Lzui/app/MessageDialog;->show()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherDownLoadDialog;->getCheckStatus(Lcom/zui/launcher/Launcher;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/zui/launcher/Launcher;->startDownLoadDummyApp(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_1
    return-void
.end method

.method public recyclerDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->c:Lzui/app/MessageDialog;

    return-void
.end method

.method public setCheckStatus(Lcom/zui/launcher/Launcher;Z)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/LauncherDownLoadDialog;->b:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public startDownLoadSingleApp(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DownloadSpan;->startTask()V

    :cond_0
    return-void
.end method
