.class public final synthetic Lcom/zui/launcher/allapps/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Launcher$OnResumeCallback;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/o;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    return-void
.end method


# virtual methods
.method public final onLauncherResume()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/o;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->i()V

    return-void
.end method
