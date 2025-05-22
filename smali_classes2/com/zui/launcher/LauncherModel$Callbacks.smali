.class public interface abstract Lcom/zui/launcher/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final FLAG_HAS_SHORTCUT_PERMISSION:I = 0x1

.field public static final FLAG_QUIET_MODE_CHANGE_PERMISSION:I = 0x4

.field public static final FLAG_QUIET_MODE_ENABLED:I = 0x2


# virtual methods
.method public abstract addAutoDownload(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract addPendingRemovedItems(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract autoDownloadAfterRestore()V
.end method

.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAllWidgets(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsAdded(Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/CachePair;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindDeepShortcutMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindIncrementalDownloadProgressUpdated(Lcom/zui/launcher/AppInfo;)V
.end method

.method public abstract bindItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract bindPromiseAppProgressUpdated(Lcom/zui/launcher/PromiseAppInfo;)V
.end method

.method public abstract bindRestoreItemsChange(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindScreens(Lcom/zui/launcher/util/IntArray;)V
.end method

.method public abstract bindSearchedApp(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/util/IntArray;[IZ)V
.end method

.method public abstract bindWidgetsRestored(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindWorkspaceComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V
.end method

.method public abstract bindWorkspaceItemsChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearPendingBinds()V
.end method

.method public abstract executeOnNextDraw(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
.end method

.method public abstract finishBindingAllApps()V
.end method

.method public abstract finishBindingItems(I)V
.end method

.method public abstract finishFirstPageBind(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract getDownloadStatus(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
.end method

.method public abstract getDownloadStatus(Lcom/zui/launcher/WorkspaceItemInfo;)V
.end method

.method public abstract getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract preAddApps()V
.end method

.method public abstract rebindModel()V
.end method

.method public abstract rebindOverlayService()V
.end method

.method public abstract rebindRecommendWidget([Ljava/lang/String;)V
.end method

.method public abstract removePendingBindItems(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removePendingRecommendItems()V
.end method

.method public abstract removeUnusedRecommendItems([Ljava/lang/String;)V
.end method

.method public abstract startBinding()V
.end method

.method public abstract updateAllAppsStore()V
.end method
