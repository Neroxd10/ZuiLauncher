.class Lcom/android/systemui/shared/system/DockedStackListenerCompat$a;
.super Landroid/view/IDockedStackListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/DockedStackListenerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/systemui/shared/system/DockedStackListenerCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/DockedStackListenerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/DockedStackListenerCompat$a;->a:Lcom/android/systemui/shared/system/DockedStackListenerCompat;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0

    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/DockedStackListenerCompat$a;->a:Lcom/android/systemui/shared/system/DockedStackListenerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/DockedStackListenerCompat;->onDockSideChanged(I)V

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/DockedStackListenerCompat$a;->a:Lcom/android/systemui/shared/system/DockedStackListenerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/DockedStackListenerCompat;->onDockedStackExistsChanged(Z)V

    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/DockedStackListenerCompat$a;->a:Lcom/android/systemui/shared/system/DockedStackListenerCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/DockedStackListenerCompat;->onDockedStackMinimizedChanged(ZJZ)V

    return-void
.end method
