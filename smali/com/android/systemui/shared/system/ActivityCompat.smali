.class public Lcom/android/systemui/shared/system/ActivityCompat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public encodeViewHierarchy(Ljava/io/ByteArrayOutputStream;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v1, Landroid/view/ViewHierarchyEncoder;

    invoke-direct {v1, p1}, Landroid/view/ViewHierarchyEncoder;-><init>(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p1

    aget v0, p1, v0

    const-string v2, "window:left"

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const/4 v0, 0x1

    aget p1, p1, v0

    const-string v2, "window:top"

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {v1}, Landroid/view/ViewHierarchyEncoder;->endStream()V

    return v0
.end method

.method public getDisplayId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public registerRemoteAnimations(Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationDefinitionCompat;->a()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    return-void
.end method

.method public unregisterRemoteAnimations()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/ActivityCompat;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->unregisterRemoteAnimations()V

    return-void
.end method
