.class public interface abstract Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/popup/PopupDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopupDataChangeListener"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener$a;

    invoke-direct {v0}, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/zui/launcher/popup/PopupDataProvider$PopupDataChangeListener;

    return-void
.end method


# virtual methods
.method public onNotificationDotsUpdated(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 0

    return-void
.end method

.method public onWidgetsBound()V
    .locals 0

    return-void
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            "Lcom/zui/launcher/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
