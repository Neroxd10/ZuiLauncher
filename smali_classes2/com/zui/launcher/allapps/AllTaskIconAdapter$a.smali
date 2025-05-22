.class Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/AllTaskIconAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllTaskIconAdapter;-><init>(Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-static {v0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->a(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->a:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllTaskIconAdapter$a;->a:Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    invoke-static {p0}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;->b(Lcom/zui/launcher/allapps/AllTaskIconAdapter;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p2, p2, Lcom/zui/launcher/allapps/AllTaskIconAdapter$c;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
